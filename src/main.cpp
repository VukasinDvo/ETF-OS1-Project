//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"

#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"


extern void userMain();
struct TestObjekat {
    int id;
    uint64 vrednosti[3];
    //Konstruktor: Proveravamo da li 'new' ispravno alocira i inicijalizuje
    TestObjekat(int pokrenutId) : id(pokrenutId) {
        vrednosti[0] = 0xDEEB;
        vrednosti[1] = 0x2026; // Trenutna godina za test :)
        vrednosti[2] = 0xBEEF;
    }

    // Destruktor: Proveravamo da li 'delete' ispravno čisti objekat
    ~TestObjekat() {
        id = 0;
    }
};
void pokreni_testove_alokacije() {
    // =============================================================
    // TEST 1: Osnovni 'new' i 'delete' za primitivne tipove
    // =============================================================
    int* p1 = new int(123);

    if (p1 == nullptr) {
        printString("TEST 1 PAO: Alokator je vratio nullptr!\n");
        return;
    }

    if (*p1 != 123) {
        printString("TEST 1 PAO: Vrednost u memoriji nije ispravno upisana!\n");
        delete p1;
        return;
    }

    delete p1;  //Ovde proveravaš tvoj free/delete
    printString("TEST 1 PROŠAO: Osnovni new/delete radi.\n");


    // =============================================================
    // TEST 2: Alokacija objekta (Provera poziva konstruktora)
    // =============================================================
    TestObjekat* mojObj = new TestObjekat(777);

    if (mojObj == nullptr) {
        printString("TEST 2 PAO: Neuspešna alokacija strukture/objekta!\n");
        return;
    }

    // Provera da li su polja ispravno inicijalizovana kroz konstruktor
    if (mojObj->id != 777 || mojObj->vrednosti[2] != 0xBEEF) {
        printString("TEST 2 PAO: Konstruktor nije pozvan ili su podaci korumpirani!\n");
        delete mojObj;
        return;
    }

    delete mojObj;
    printString("TEST 2 PROŠAO: Konstruktor se uspešno izvršava preko 'new'.\n");


    // =============================================================
    // TEST 3: Alokacija niza objekata (new[] i delete[])
    // =============================================================
    const int velicina_niza = 10;
    int* niz = new int[velicina_niza];

    if (niz == nullptr) {
        printString("TEST 3 PAO: 'new[]' je vratio nullptr za niz!\n");
        return;
    }

    // Upisujemo podatke kroz ceo opseg niza (provera granica i alignment-a)
    for (int i = 0; i < velicina_niza; i++) {
        niz[i] = i * 10;
    }

    // Provera ispravnosti upisanog
    bool niz_validan = true;
    for (int i = 0; i < velicina_niza; i++) {
        if (niz[i] != i * 10) {
            niz_validan = false;
            break;
        }
    }

    delete[] niz; // Jako bitno da koristiš delete[] sa zagradama!

    if (!niz_validan) {
        printString("TEST 3 PAO: Podaci u nizu su pregaženi ili korumpirani!\n");
        return;
    }
    printString("TEST 3 PROŠAO: Alokacija i dealokacija nizova radi.\n");

    printString("--- SVI NEW/DELETE TESTOVI USPEŠNO ZAVRŠENI! ---\n");
}

// Globalne promenljive za sinhronizaciju/proveru napretka
volatile int brojac_nit_1 = 0;
volatile int brojac_nit_2 = 0;

// Kod koji će izvršavati prva nit
void kod_za_nit_jedan(void* arg) {
    printString(">>> Nit 1 je uspesno pokrenuta!\n");

    for (int i = 0; i < 5; i++) {
        brojac_nit_1++;
        printString("Nit 1 radi... iteracija: \n");
        // Ako imaš ispis brojeva, ispiši 'i', ako ne, samo tekst
        printInteger(i);

        thread_dispatch();
    }

    printString(">>> Nit 1 zavrsila rad i egzodira!\n");
    thread_exit();
}

// Kod koji će izvršavati druga nit
void kod_za_nit_dva(void* arg) {
    printString(">>> Nit 2 je uspesno pokrenuta!\n");

    for (int i = 0; i < 5; i++) {
        brojac_nit_2++;
        printString("Nit 2 radi... iteracija: \n");

        thread_dispatch();

    }

    printString(">>> Nit 2 zavrsila rad i egzodira!\n");
    thread_exit();
}

void pokreni_testove_niti() {
    printString("\n--- POCETAK TESTA NITI ---\n");

    thread_t nit1 = nullptr;
    thread_t nit2 = nullptr;

    // 1. Kreiranje prve niti
    int res1 = thread_create(&nit1, kod_za_nit_jedan, nullptr);

    if (res1 < 0 || nit1 == nullptr) {
        printString("ERROR: Kreiranje Nit 1 nije uspelo!\n");
        printInt(res1);
        return;
    }
    printString("Nit 1 kreirana uspesno.\n");

    // 2. Kreiranje druge niti
    int res2 = thread_create(&nit2, kod_za_nit_dva, nullptr);
    if (res2 < 0 || nit2 == nullptr) {
        printString("ERROR: Kreiranje Nit 2 nije uspelo!\n");
        return;
    }
    printString("Nit 2 kreirana uspesno.\n");

    // 3. Pokretanje raspoređivanja (da pustimo niti da rade)
    printString("Glavna nit predaje kontrolu radnicima...\n");

    // Ako ti thread_join radi, otkomentariši ove dve linije:
    // thread_join(nit1);
    // thread_join(nit2);

    // Ako join još uvek nije spojen u kernelu, koristi ovu petlju
    // koja simulira čekanje dok radnici ne završe svoje iteracije:
    while (brojac_nit_1 < 5 || brojac_nit_2 < 5) {
        thread_dispatch();
    }

    printString("--- TEST NITI USPESNO ZAVRSEN! Glavna nit ponovo ima kontrolu. ---\n");
}


void userMainWrapper(void*) {
    userMain();
}

int main() {
    MemoryAllocator::initMem();
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);

    create_main_thread();

    thread_t userMainThread;
    thread_create(&userMainThread, userMainWrapper, nullptr);

    while(true) {
        thread_dispatch();
    }
    return 0;
}
