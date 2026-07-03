
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	b7013103          	ld	sp,-1168(sp) # 8000bb70 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7d0060ef          	jal	ra,800067ec <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	72c010ef          	jal	ra,800027b0 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <consoleHandler>:
    consoleHandler:
        addi sp, sp, -256
    80001110:	f0010113          	addi	sp,sp,-256
        .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        sd x\index, \index * 8(sp)
        .endr
    80001114:	00013023          	sd	zero,0(sp)
    80001118:	00113423          	sd	ra,8(sp)
    8000111c:	00213823          	sd	sp,16(sp)
    80001120:	00313c23          	sd	gp,24(sp)
    80001124:	02413023          	sd	tp,32(sp)
    80001128:	02513423          	sd	t0,40(sp)
    8000112c:	02613823          	sd	t1,48(sp)
    80001130:	02713c23          	sd	t2,56(sp)
    80001134:	04813023          	sd	s0,64(sp)
    80001138:	04913423          	sd	s1,72(sp)
    8000113c:	04a13823          	sd	a0,80(sp)
    80001140:	04b13c23          	sd	a1,88(sp)
    80001144:	06c13023          	sd	a2,96(sp)
    80001148:	06d13423          	sd	a3,104(sp)
    8000114c:	06e13823          	sd	a4,112(sp)
    80001150:	06f13c23          	sd	a5,120(sp)
    80001154:	09013023          	sd	a6,128(sp)
    80001158:	09113423          	sd	a7,136(sp)
    8000115c:	09213823          	sd	s2,144(sp)
    80001160:	09313c23          	sd	s3,152(sp)
    80001164:	0b413023          	sd	s4,160(sp)
    80001168:	0b513423          	sd	s5,168(sp)
    8000116c:	0b613823          	sd	s6,176(sp)
    80001170:	0b713c23          	sd	s7,184(sp)
    80001174:	0d813023          	sd	s8,192(sp)
    80001178:	0d913423          	sd	s9,200(sp)
    8000117c:	0da13823          	sd	s10,208(sp)
    80001180:	0db13c23          	sd	s11,216(sp)
    80001184:	0fc13023          	sd	t3,224(sp)
    80001188:	0fd13423          	sd	t4,232(sp)
    8000118c:	0fe13823          	sd	t5,240(sp)
    80001190:	0ff13c23          	sd	t6,248(sp)

        call _ZN5Riscv22handleConsoleInterruptEv
    80001194:	115010ef          	jal	ra,80002aa8 <_ZN5Riscv22handleConsoleInterruptEv>

        # pop all registers from stack
        .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index * 8(sp)
        .endr
    80001198:	00013003          	ld	zero,0(sp)
    8000119c:	00813083          	ld	ra,8(sp)
    800011a0:	01013103          	ld	sp,16(sp)
    800011a4:	01813183          	ld	gp,24(sp)
    800011a8:	02013203          	ld	tp,32(sp)
    800011ac:	02813283          	ld	t0,40(sp)
    800011b0:	03013303          	ld	t1,48(sp)
    800011b4:	03813383          	ld	t2,56(sp)
    800011b8:	04013403          	ld	s0,64(sp)
    800011bc:	04813483          	ld	s1,72(sp)
    800011c0:	05013503          	ld	a0,80(sp)
    800011c4:	05813583          	ld	a1,88(sp)
    800011c8:	06013603          	ld	a2,96(sp)
    800011cc:	06813683          	ld	a3,104(sp)
    800011d0:	07013703          	ld	a4,112(sp)
    800011d4:	07813783          	ld	a5,120(sp)
    800011d8:	08013803          	ld	a6,128(sp)
    800011dc:	08813883          	ld	a7,136(sp)
    800011e0:	09013903          	ld	s2,144(sp)
    800011e4:	09813983          	ld	s3,152(sp)
    800011e8:	0a013a03          	ld	s4,160(sp)
    800011ec:	0a813a83          	ld	s5,168(sp)
    800011f0:	0b013b03          	ld	s6,176(sp)
    800011f4:	0b813b83          	ld	s7,184(sp)
    800011f8:	0c013c03          	ld	s8,192(sp)
    800011fc:	0c813c83          	ld	s9,200(sp)
    80001200:	0d013d03          	ld	s10,208(sp)
    80001204:	0d813d83          	ld	s11,216(sp)
    80001208:	0e013e03          	ld	t3,224(sp)
    8000120c:	0e813e83          	ld	t4,232(sp)
    80001210:	0f013f03          	ld	t5,240(sp)
    80001214:	0f813f83          	ld	t6,248(sp)
        addi sp, sp, 256
    80001218:	10010113          	addi	sp,sp,256

        sret
    8000121c:	10200073          	sret

0000000080001220 <timerInterruptHandler>:

        timerInterruptHandler:
            addi sp, sp, -256
    80001220:	f0010113          	addi	sp,sp,-256
            .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
            sd x\index, \index * 8(sp)
            .endr
    80001224:	00013023          	sd	zero,0(sp)
    80001228:	00113423          	sd	ra,8(sp)
    8000122c:	00213823          	sd	sp,16(sp)
    80001230:	00313c23          	sd	gp,24(sp)
    80001234:	02413023          	sd	tp,32(sp)
    80001238:	02513423          	sd	t0,40(sp)
    8000123c:	02613823          	sd	t1,48(sp)
    80001240:	02713c23          	sd	t2,56(sp)
    80001244:	04813023          	sd	s0,64(sp)
    80001248:	04913423          	sd	s1,72(sp)
    8000124c:	04a13823          	sd	a0,80(sp)
    80001250:	04b13c23          	sd	a1,88(sp)
    80001254:	06c13023          	sd	a2,96(sp)
    80001258:	06d13423          	sd	a3,104(sp)
    8000125c:	06e13823          	sd	a4,112(sp)
    80001260:	06f13c23          	sd	a5,120(sp)
    80001264:	09013023          	sd	a6,128(sp)
    80001268:	09113423          	sd	a7,136(sp)
    8000126c:	09213823          	sd	s2,144(sp)
    80001270:	09313c23          	sd	s3,152(sp)
    80001274:	0b413023          	sd	s4,160(sp)
    80001278:	0b513423          	sd	s5,168(sp)
    8000127c:	0b613823          	sd	s6,176(sp)
    80001280:	0b713c23          	sd	s7,184(sp)
    80001284:	0d813023          	sd	s8,192(sp)
    80001288:	0d913423          	sd	s9,200(sp)
    8000128c:	0da13823          	sd	s10,208(sp)
    80001290:	0db13c23          	sd	s11,216(sp)
    80001294:	0fc13023          	sd	t3,224(sp)
    80001298:	0fd13423          	sd	t4,232(sp)
    8000129c:	0fe13823          	sd	t5,240(sp)
    800012a0:	0ff13c23          	sd	t6,248(sp)

            call _ZN5Riscv20handleTimerInterruptEv
    800012a4:	059010ef          	jal	ra,80002afc <_ZN5Riscv20handleTimerInterruptEv>

            # pop all registers from stack
            .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
            ld x\index, \index * 8(sp)
            .endr
    800012a8:	00013003          	ld	zero,0(sp)
    800012ac:	00813083          	ld	ra,8(sp)
    800012b0:	01013103          	ld	sp,16(sp)
    800012b4:	01813183          	ld	gp,24(sp)
    800012b8:	02013203          	ld	tp,32(sp)
    800012bc:	02813283          	ld	t0,40(sp)
    800012c0:	03013303          	ld	t1,48(sp)
    800012c4:	03813383          	ld	t2,56(sp)
    800012c8:	04013403          	ld	s0,64(sp)
    800012cc:	04813483          	ld	s1,72(sp)
    800012d0:	05013503          	ld	a0,80(sp)
    800012d4:	05813583          	ld	a1,88(sp)
    800012d8:	06013603          	ld	a2,96(sp)
    800012dc:	06813683          	ld	a3,104(sp)
    800012e0:	07013703          	ld	a4,112(sp)
    800012e4:	07813783          	ld	a5,120(sp)
    800012e8:	08013803          	ld	a6,128(sp)
    800012ec:	08813883          	ld	a7,136(sp)
    800012f0:	09013903          	ld	s2,144(sp)
    800012f4:	09813983          	ld	s3,152(sp)
    800012f8:	0a013a03          	ld	s4,160(sp)
    800012fc:	0a813a83          	ld	s5,168(sp)
    80001300:	0b013b03          	ld	s6,176(sp)
    80001304:	0b813b83          	ld	s7,184(sp)
    80001308:	0c013c03          	ld	s8,192(sp)
    8000130c:	0c813c83          	ld	s9,200(sp)
    80001310:	0d013d03          	ld	s10,208(sp)
    80001314:	0d813d83          	ld	s11,216(sp)
    80001318:	0e013e03          	ld	t3,224(sp)
    8000131c:	0e813e83          	ld	t4,232(sp)
    80001320:	0f013f03          	ld	t5,240(sp)
    80001324:	0f813f83          	ld	t6,248(sp)
            addi sp, sp, 256
    80001328:	10010113          	addi	sp,sp,256

            sret
    8000132c:	10200073          	sret
	...

0000000080001338 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001338:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000133c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001340:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001344:	0085b103          	ld	sp,8(a1)

    ret
    80001348:	00008067          	ret

000000008000134c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000134c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001350:	00b29a63          	bne	t0,a1,80001364 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001354:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001358:	fe029ae3          	bnez	t0,8000134c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000135c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001360:	00008067          	ret

0000000080001364 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001364:	00100513          	li	a0,1
    80001368:	00008067          	ret

000000008000136c <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"

extern const size_t MEM_BLOCK_SIZE;

void* mem_alloc(size_t size) {
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    size_t new_size;
    if (size % MEM_BLOCK_SIZE != 0) {
    80001378:	03f57793          	andi	a5,a0,63
    8000137c:	00078663          	beqz	a5,80001388 <_Z9mem_allocm+0x1c>
        new_size = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    80001380:	03f50513          	addi	a0,a0,63
    80001384:	fc057513          	andi	a0,a0,-64
    } else {
        new_size = size;
    }
    void* return_val;
    __asm__ volatile ("mv a1, %0" : : "r"(new_size) : "a1");
    80001388:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x01" : : : "a0");
    8000138c:	00100513          	li	a0,1
    __asm__ volatile ("ecall");
    80001390:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(return_val));
    80001394:	00050513          	mv	a0,a0
    return return_val;
}
    80001398:	00813403          	ld	s0,8(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00813423          	sd	s0,8(sp)
    800013ac:	01010413          	addi	s0,sp,16
    uint64 return_val;
    __asm__ volatile ("mv a1, %0" : : "r"(ptr) : "a1");
    800013b0:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x02" : : : "a0");
    800013b4:	00200513          	li	a0,2
    __asm__ volatile ("ecall");
    800013b8:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(return_val));
    800013bc:	00050513          	mv	a0,a0
    return (int)return_val;
}
    800013c0:	0005051b          	sext.w	a0,a0
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret

00000000800013d0 <_Z18create_main_threadv>:

int create_main_thread() {
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00813423          	sd	s0,8(sp)
    800013d8:	01010413          	addi	s0,sp,16
    uint64 returnValue;
    __asm__ volatile ("li a0, 0x09" : : : "a0");
    800013dc:	00900513          	li	a0,9
    __asm__ volatile ("ecall");
    800013e0:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    800013e4:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800013e8:	0005051b          	sext.w	a0,a0
    800013ec:	00813403          	ld	s0,8(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret

00000000800013f8 <_Z22thread_create_wo_startPP3TCBPFvPvES2_>:

int thread_create_wo_start(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800013f8:	ff010113          	addi	sp,sp,-16
    800013fc:	00813423          	sd	s0,8(sp)
    80001400:	01010413          	addi	s0,sp,16
    80001404:	00058713          	mv	a4,a1
    80001408:	00060793          	mv	a5,a2
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(handle) : "a1");
    8000140c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a2, %0" : : "r"(start_routine) : "a2");
    80001410:	00070613          	mv	a2,a4
    __asm__ volatile ("mv a3, %0" : : "r"(arg) : "a3");
    80001414:	00078693          	mv	a3,a5
    __asm__ volatile ("li a0, 0x15" : : : "a0");
    80001418:	01500513          	li	a0,21
    __asm__ volatile ("ecall");
    8000141c:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    80001420:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001424:	0005051b          	sext.w	a0,a0
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z12thread_startP3TCB>:

void thread_start(thread_t tcb) {
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00813423          	sd	s0,8(sp)
    8000143c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r"(tcb) : "a1");
    80001440:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x10" : : : "a0");
    80001444:	01000513          	li	a0,16
    __asm__ volatile ("ecall");
    80001448:	00000073          	ecall
}
    8000144c:	00813403          	ld	s0,8(sp)
    80001450:	01010113          	addi	sp,sp,16
    80001454:	00008067          	ret

0000000080001458 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    80001458:	ff010113          	addi	sp,sp,-16
    8000145c:	00813423          	sd	s0,8(sp)
    80001460:	01010413          	addi	s0,sp,16
    80001464:	00058713          	mv	a4,a1
    80001468:	00060793          	mv	a5,a2
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(handle) : "a1");
    8000146c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a2, %0" : : "r"(start_routine) : "a2");
    80001470:	00070613          	mv	a2,a4
    __asm__ volatile ("mv a3, %0" : : "r"(arg) : "a3");
    80001474:	00078693          	mv	a3,a5
    __asm__ volatile ("li a0, 0x11" : : : "a0");
    80001478:	01100513          	li	a0,17
    __asm__ volatile ("ecall");
    8000147c:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    80001480:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001484:	0005051b          	sext.w	a0,a0
    80001488:	00813403          	ld	s0,8(sp)
    8000148c:	01010113          	addi	sp,sp,16
    80001490:	00008067          	ret

0000000080001494 <_Z11thread_exitv>:

int thread_exit() {
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00813423          	sd	s0,8(sp)
    8000149c:	01010413          	addi	s0,sp,16
    uint64 returnValue;
    __asm__ volatile ("li a0, 0x12" : : : "a0");
    800014a0:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    800014a4:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    800014a8:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800014ac:	0005051b          	sext.w	a0,a0
    800014b0:	00813403          	ld	s0,8(sp)
    800014b4:	01010113          	addi	sp,sp,16
    800014b8:	00008067          	ret

00000000800014bc <_Z15thread_dispatchv>:

void thread_dispatch() {
    800014bc:	ff010113          	addi	sp,sp,-16
    800014c0:	00813423          	sd	s0,8(sp)
    800014c4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("li a0, 0x13" : : : "a0");
    800014c8:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    800014cc:	00000073          	ecall
}
    800014d0:	00813403          	ld	s0,8(sp)
    800014d4:	01010113          	addi	sp,sp,16
    800014d8:	00008067          	ret

00000000800014dc <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00813423          	sd	s0,8(sp)
    800014e4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r"(handle) : "a1");
    800014e8:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x14" : : : "a0");
    800014ec:	01400513          	li	a0,20
    __asm__ volatile ("ecall");
    800014f0:	00000073          	ecall
}
    800014f4:	00813403          	ld	s0,8(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret

0000000080001500 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init) {
    80001500:	ff010113          	addi	sp,sp,-16
    80001504:	00813423          	sd	s0,8(sp)
    80001508:	01010413          	addi	s0,sp,16
    8000150c:	00058793          	mv	a5,a1
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(handle) : "a1");
    80001510:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a2, %0" : : "r"(init) : "a2");
    80001514:	00078613          	mv	a2,a5
    __asm__ volatile ("li a0, 0x21" : : : "a0");
    80001518:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    8000151c:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    80001520:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001524:	0005051b          	sext.w	a0,a0
    80001528:	00813403          	ld	s0,8(sp)
    8000152c:	01010113          	addi	sp,sp,16
    80001530:	00008067          	ret

0000000080001534 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001534:	ff010113          	addi	sp,sp,-16
    80001538:	00813423          	sd	s0,8(sp)
    8000153c:	01010413          	addi	s0,sp,16
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(handle) : "a1");
    80001540:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x22" : : : "a0");
    80001544:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    80001548:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    8000154c:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001550:	0005051b          	sext.w	a0,a0
    80001554:	00813403          	ld	s0,8(sp)
    80001558:	01010113          	addi	sp,sp,16
    8000155c:	00008067          	ret

0000000080001560 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00813423          	sd	s0,8(sp)
    80001568:	01010413          	addi	s0,sp,16
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(id) : "a1");
    8000156c:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x23" : : : "a0");
    80001570:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    80001574:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    80001578:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    8000157c:	0005051b          	sext.w	a0,a0
    80001580:	00813403          	ld	s0,8(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    8000158c:	ff010113          	addi	sp,sp,-16
    80001590:	00813423          	sd	s0,8(sp)
    80001594:	01010413          	addi	s0,sp,16
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(id) : "a1");
    80001598:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x24" : : : "a0");
    8000159c:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    800015a0:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    800015a4:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800015a8:	0005051b          	sext.w	a0,a0
    800015ac:	00813403          	ld	s0,8(sp)
    800015b0:	01010113          	addi	sp,sp,16
    800015b4:	00008067          	ret

00000000800015b8 <_Z4getcv>:

char getc() {
    800015b8:	ff010113          	addi	sp,sp,-16
    800015bc:	00813423          	sd	s0,8(sp)
    800015c0:	01010413          	addi	s0,sp,16
    char returnValue;
    __asm__ volatile ("li a0, 0x41" : : : "a0");
    800015c4:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    800015c8:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    800015cc:	00050513          	mv	a0,a0
    return returnValue;
}
    800015d0:	0ff57513          	andi	a0,a0,255
    800015d4:	00813403          	ld	s0,8(sp)
    800015d8:	01010113          	addi	sp,sp,16
    800015dc:	00008067          	ret

00000000800015e0 <_Z4putcc>:

void putc(char c) {
    800015e0:	ff010113          	addi	sp,sp,-16
    800015e4:	00813423          	sd	s0,8(sp)
    800015e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r"(c) : "a1");
    800015ec:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x42" : : : "a0");
    800015f0:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    800015f4:	00000073          	ecall
}
    800015f8:	00813403          	ld	s0,8(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret

0000000080001604 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00813423          	sd	s0,8(sp)
    8000160c:	01010413          	addi	s0,sp,16
    return 0;
    80001610:	00000513          	li	a0,0
    80001614:	00813403          	ld	s0,8(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001620:	fe010113          	addi	sp,sp,-32
    80001624:	00113c23          	sd	ra,24(sp)
    80001628:	00813823          	sd	s0,16(sp)
    8000162c:	00913423          	sd	s1,8(sp)
    80001630:	01213023          	sd	s2,0(sp)
    80001634:	02010413          	addi	s0,sp,32
    80001638:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000163c:	00100793          	li	a5,1
    80001640:	02a7f863          	bgeu	a5,a0,80001670 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001644:	00a00793          	li	a5,10
    80001648:	02f577b3          	remu	a5,a0,a5
    8000164c:	02078e63          	beqz	a5,80001688 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001650:	fff48513          	addi	a0,s1,-1
    80001654:	00000097          	auipc	ra,0x0
    80001658:	fcc080e7          	jalr	-52(ra) # 80001620 <_ZL9fibonaccim>
    8000165c:	00050913          	mv	s2,a0
    80001660:	ffe48513          	addi	a0,s1,-2
    80001664:	00000097          	auipc	ra,0x0
    80001668:	fbc080e7          	jalr	-68(ra) # 80001620 <_ZL9fibonaccim>
    8000166c:	00a90533          	add	a0,s2,a0
}
    80001670:	01813083          	ld	ra,24(sp)
    80001674:	01013403          	ld	s0,16(sp)
    80001678:	00813483          	ld	s1,8(sp)
    8000167c:	00013903          	ld	s2,0(sp)
    80001680:	02010113          	addi	sp,sp,32
    80001684:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	be0080e7          	jalr	-1056(ra) # 80002268 <_ZN3TCB5yieldEv>
    80001690:	fc1ff06f          	j	80001650 <_ZL9fibonaccim+0x30>

0000000080001694 <_Z11workerBodyAv>:
{
    80001694:	fe010113          	addi	sp,sp,-32
    80001698:	00113c23          	sd	ra,24(sp)
    8000169c:	00813823          	sd	s0,16(sp)
    800016a0:	00913423          	sd	s1,8(sp)
    800016a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800016a8:	00000493          	li	s1,0
    800016ac:	0300006f          	j	800016dc <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800016b0:	00168693          	addi	a3,a3,1
    800016b4:	000027b7          	lui	a5,0x2
    800016b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800016bc:	00d7ee63          	bltu	a5,a3,800016d8 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800016c0:	00000713          	li	a4,0
    800016c4:	000077b7          	lui	a5,0x7
    800016c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800016cc:	fee7e2e3          	bltu	a5,a4,800016b0 <_Z11workerBodyAv+0x1c>
    800016d0:	00170713          	addi	a4,a4,1
    800016d4:	ff1ff06f          	j	800016c4 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800016d8:	00148493          	addi	s1,s1,1
    800016dc:	00900793          	li	a5,9
    800016e0:	0297ec63          	bltu	a5,s1,80001718 <_Z11workerBodyAv+0x84>
        printStr("A: i=");
    800016e4:	00008517          	auipc	a0,0x8
    800016e8:	93c50513          	addi	a0,a0,-1732 # 80009020 <CONSOLE_STATUS+0x10>
    800016ec:	00002097          	auipc	ra,0x2
    800016f0:	8b8080e7          	jalr	-1864(ra) # 80002fa4 <_Z8printStrPKc>
        printInteger(i);
    800016f4:	00048513          	mv	a0,s1
    800016f8:	00002097          	auipc	ra,0x2
    800016fc:	91c080e7          	jalr	-1764(ra) # 80003014 <_Z12printIntegerm>
        printStr("\n");
    80001700:	00008517          	auipc	a0,0x8
    80001704:	ba850513          	addi	a0,a0,-1112 # 800092a8 <CONSOLE_STATUS+0x298>
    80001708:	00002097          	auipc	ra,0x2
    8000170c:	89c080e7          	jalr	-1892(ra) # 80002fa4 <_Z8printStrPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001710:	00000693          	li	a3,0
    80001714:	fa1ff06f          	j	800016b4 <_Z11workerBodyAv+0x20>
}
    80001718:	01813083          	ld	ra,24(sp)
    8000171c:	01013403          	ld	s0,16(sp)
    80001720:	00813483          	ld	s1,8(sp)
    80001724:	02010113          	addi	sp,sp,32
    80001728:	00008067          	ret

000000008000172c <_Z11workerBodyBv>:
{
    8000172c:	fe010113          	addi	sp,sp,-32
    80001730:	00113c23          	sd	ra,24(sp)
    80001734:	00813823          	sd	s0,16(sp)
    80001738:	00913423          	sd	s1,8(sp)
    8000173c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001740:	00000493          	li	s1,0
    80001744:	0300006f          	j	80001774 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001748:	00168693          	addi	a3,a3,1
    8000174c:	000027b7          	lui	a5,0x2
    80001750:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001754:	00d7ee63          	bltu	a5,a3,80001770 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001758:	00000713          	li	a4,0
    8000175c:	000077b7          	lui	a5,0x7
    80001760:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001764:	fee7e2e3          	bltu	a5,a4,80001748 <_Z11workerBodyBv+0x1c>
    80001768:	00170713          	addi	a4,a4,1
    8000176c:	ff1ff06f          	j	8000175c <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001770:	00148493          	addi	s1,s1,1
    80001774:	00f00793          	li	a5,15
    80001778:	0297ec63          	bltu	a5,s1,800017b0 <_Z11workerBodyBv+0x84>
        printStr("B: i=");
    8000177c:	00008517          	auipc	a0,0x8
    80001780:	8ac50513          	addi	a0,a0,-1876 # 80009028 <CONSOLE_STATUS+0x18>
    80001784:	00002097          	auipc	ra,0x2
    80001788:	820080e7          	jalr	-2016(ra) # 80002fa4 <_Z8printStrPKc>
        printInteger(i);
    8000178c:	00048513          	mv	a0,s1
    80001790:	00002097          	auipc	ra,0x2
    80001794:	884080e7          	jalr	-1916(ra) # 80003014 <_Z12printIntegerm>
        printStr("\n");
    80001798:	00008517          	auipc	a0,0x8
    8000179c:	b1050513          	addi	a0,a0,-1264 # 800092a8 <CONSOLE_STATUS+0x298>
    800017a0:	00002097          	auipc	ra,0x2
    800017a4:	804080e7          	jalr	-2044(ra) # 80002fa4 <_Z8printStrPKc>
        for (uint64 j = 0; j < 10000; j++)
    800017a8:	00000693          	li	a3,0
    800017ac:	fa1ff06f          	j	8000174c <_Z11workerBodyBv+0x20>
}
    800017b0:	01813083          	ld	ra,24(sp)
    800017b4:	01013403          	ld	s0,16(sp)
    800017b8:	00813483          	ld	s1,8(sp)
    800017bc:	02010113          	addi	sp,sp,32
    800017c0:	00008067          	ret

00000000800017c4 <_Z11workerBodyCv>:

void workerBodyC()
{
    800017c4:	fe010113          	addi	sp,sp,-32
    800017c8:	00113c23          	sd	ra,24(sp)
    800017cc:	00813823          	sd	s0,16(sp)
    800017d0:	00913423          	sd	s1,8(sp)
    800017d4:	01213023          	sd	s2,0(sp)
    800017d8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800017dc:	00000493          	li	s1,0
    800017e0:	0380006f          	j	80001818 <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printStr("C: i=");
    800017e4:	00008517          	auipc	a0,0x8
    800017e8:	84c50513          	addi	a0,a0,-1972 # 80009030 <CONSOLE_STATUS+0x20>
    800017ec:	00001097          	auipc	ra,0x1
    800017f0:	7b8080e7          	jalr	1976(ra) # 80002fa4 <_Z8printStrPKc>
        printInteger(i);
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	81c080e7          	jalr	-2020(ra) # 80003014 <_Z12printIntegerm>
        printStr("\n");
    80001800:	00008517          	auipc	a0,0x8
    80001804:	aa850513          	addi	a0,a0,-1368 # 800092a8 <CONSOLE_STATUS+0x298>
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	79c080e7          	jalr	1948(ra) # 80002fa4 <_Z8printStrPKc>
    for (; i < 3; i++)
    80001810:	0014849b          	addiw	s1,s1,1
    80001814:	0ff4f493          	andi	s1,s1,255
    80001818:	00200793          	li	a5,2
    8000181c:	fc97f4e3          	bgeu	a5,s1,800017e4 <_Z11workerBodyCv+0x20>
    }

    printStr("C: yield\n");
    80001820:	00008517          	auipc	a0,0x8
    80001824:	81850513          	addi	a0,a0,-2024 # 80009038 <CONSOLE_STATUS+0x28>
    80001828:	00001097          	auipc	ra,0x1
    8000182c:	77c080e7          	jalr	1916(ra) # 80002fa4 <_Z8printStrPKc>
    __asm__ ("li t1, 7");
    80001830:	00700313          	li	t1,7
    TCB::yield();
    80001834:	00001097          	auipc	ra,0x1
    80001838:	a34080e7          	jalr	-1484(ra) # 80002268 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000183c:	00030913          	mv	s2,t1

    printStr("C: t1=");
    80001840:	00008517          	auipc	a0,0x8
    80001844:	80850513          	addi	a0,a0,-2040 # 80009048 <CONSOLE_STATUS+0x38>
    80001848:	00001097          	auipc	ra,0x1
    8000184c:	75c080e7          	jalr	1884(ra) # 80002fa4 <_Z8printStrPKc>
    printInteger(t1);
    80001850:	00090513          	mv	a0,s2
    80001854:	00001097          	auipc	ra,0x1
    80001858:	7c0080e7          	jalr	1984(ra) # 80003014 <_Z12printIntegerm>
    printStr("\n");
    8000185c:	00008517          	auipc	a0,0x8
    80001860:	a4c50513          	addi	a0,a0,-1460 # 800092a8 <CONSOLE_STATUS+0x298>
    80001864:	00001097          	auipc	ra,0x1
    80001868:	740080e7          	jalr	1856(ra) # 80002fa4 <_Z8printStrPKc>

    uint64 result = fibonacci(12);
    8000186c:	00c00513          	li	a0,12
    80001870:	00000097          	auipc	ra,0x0
    80001874:	db0080e7          	jalr	-592(ra) # 80001620 <_ZL9fibonaccim>
    80001878:	00050913          	mv	s2,a0
    printStr("C: fibonaci=");
    8000187c:	00007517          	auipc	a0,0x7
    80001880:	7d450513          	addi	a0,a0,2004 # 80009050 <CONSOLE_STATUS+0x40>
    80001884:	00001097          	auipc	ra,0x1
    80001888:	720080e7          	jalr	1824(ra) # 80002fa4 <_Z8printStrPKc>
    printInteger(result);
    8000188c:	00090513          	mv	a0,s2
    80001890:	00001097          	auipc	ra,0x1
    80001894:	784080e7          	jalr	1924(ra) # 80003014 <_Z12printIntegerm>
    printStr("\n");
    80001898:	00008517          	auipc	a0,0x8
    8000189c:	a1050513          	addi	a0,a0,-1520 # 800092a8 <CONSOLE_STATUS+0x298>
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	704080e7          	jalr	1796(ra) # 80002fa4 <_Z8printStrPKc>
    800018a8:	0380006f          	j	800018e0 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printStr("C: i=");
    800018ac:	00007517          	auipc	a0,0x7
    800018b0:	78450513          	addi	a0,a0,1924 # 80009030 <CONSOLE_STATUS+0x20>
    800018b4:	00001097          	auipc	ra,0x1
    800018b8:	6f0080e7          	jalr	1776(ra) # 80002fa4 <_Z8printStrPKc>
        printInteger(i);
    800018bc:	00048513          	mv	a0,s1
    800018c0:	00001097          	auipc	ra,0x1
    800018c4:	754080e7          	jalr	1876(ra) # 80003014 <_Z12printIntegerm>
        printStr("\n");
    800018c8:	00008517          	auipc	a0,0x8
    800018cc:	9e050513          	addi	a0,a0,-1568 # 800092a8 <CONSOLE_STATUS+0x298>
    800018d0:	00001097          	auipc	ra,0x1
    800018d4:	6d4080e7          	jalr	1748(ra) # 80002fa4 <_Z8printStrPKc>
    for (; i < 6; i++)
    800018d8:	0014849b          	addiw	s1,s1,1
    800018dc:	0ff4f493          	andi	s1,s1,255
    800018e0:	00500793          	li	a5,5
    800018e4:	fc97f4e3          	bgeu	a5,s1,800018ac <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800018e8:	01813083          	ld	ra,24(sp)
    800018ec:	01013403          	ld	s0,16(sp)
    800018f0:	00813483          	ld	s1,8(sp)
    800018f4:	00013903          	ld	s2,0(sp)
    800018f8:	02010113          	addi	sp,sp,32
    800018fc:	00008067          	ret

0000000080001900 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001900:	fe010113          	addi	sp,sp,-32
    80001904:	00113c23          	sd	ra,24(sp)
    80001908:	00813823          	sd	s0,16(sp)
    8000190c:	00913423          	sd	s1,8(sp)
    80001910:	01213023          	sd	s2,0(sp)
    80001914:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001918:	00a00493          	li	s1,10
    8000191c:	0380006f          	j	80001954 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printStr("D: i=");
    80001920:	00007517          	auipc	a0,0x7
    80001924:	74050513          	addi	a0,a0,1856 # 80009060 <CONSOLE_STATUS+0x50>
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	67c080e7          	jalr	1660(ra) # 80002fa4 <_Z8printStrPKc>
        printInteger(i);
    80001930:	00048513          	mv	a0,s1
    80001934:	00001097          	auipc	ra,0x1
    80001938:	6e0080e7          	jalr	1760(ra) # 80003014 <_Z12printIntegerm>
        printStr("\n");
    8000193c:	00008517          	auipc	a0,0x8
    80001940:	96c50513          	addi	a0,a0,-1684 # 800092a8 <CONSOLE_STATUS+0x298>
    80001944:	00001097          	auipc	ra,0x1
    80001948:	660080e7          	jalr	1632(ra) # 80002fa4 <_Z8printStrPKc>
    for (; i < 13; i++)
    8000194c:	0014849b          	addiw	s1,s1,1
    80001950:	0ff4f493          	andi	s1,s1,255
    80001954:	00c00793          	li	a5,12
    80001958:	fc97f4e3          	bgeu	a5,s1,80001920 <_Z11workerBodyDv+0x20>
    }

    printStr("D: yield\n");
    8000195c:	00007517          	auipc	a0,0x7
    80001960:	70c50513          	addi	a0,a0,1804 # 80009068 <CONSOLE_STATUS+0x58>
    80001964:	00001097          	auipc	ra,0x1
    80001968:	640080e7          	jalr	1600(ra) # 80002fa4 <_Z8printStrPKc>
    __asm__ ("li t1, 5");
    8000196c:	00500313          	li	t1,5
    TCB::yield();
    80001970:	00001097          	auipc	ra,0x1
    80001974:	8f8080e7          	jalr	-1800(ra) # 80002268 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001978:	01000513          	li	a0,16
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	ca4080e7          	jalr	-860(ra) # 80001620 <_ZL9fibonaccim>
    80001984:	00050913          	mv	s2,a0
    printStr("D: fibonaci=");
    80001988:	00007517          	auipc	a0,0x7
    8000198c:	6f050513          	addi	a0,a0,1776 # 80009078 <CONSOLE_STATUS+0x68>
    80001990:	00001097          	auipc	ra,0x1
    80001994:	614080e7          	jalr	1556(ra) # 80002fa4 <_Z8printStrPKc>
    printInteger(result);
    80001998:	00090513          	mv	a0,s2
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	678080e7          	jalr	1656(ra) # 80003014 <_Z12printIntegerm>
    printStr("\n");
    800019a4:	00008517          	auipc	a0,0x8
    800019a8:	90450513          	addi	a0,a0,-1788 # 800092a8 <CONSOLE_STATUS+0x298>
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	5f8080e7          	jalr	1528(ra) # 80002fa4 <_Z8printStrPKc>
    800019b4:	0380006f          	j	800019ec <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printStr("D: i=");
    800019b8:	00007517          	auipc	a0,0x7
    800019bc:	6a850513          	addi	a0,a0,1704 # 80009060 <CONSOLE_STATUS+0x50>
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	5e4080e7          	jalr	1508(ra) # 80002fa4 <_Z8printStrPKc>
        printInteger(i);
    800019c8:	00048513          	mv	a0,s1
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	648080e7          	jalr	1608(ra) # 80003014 <_Z12printIntegerm>
        printStr("\n");
    800019d4:	00008517          	auipc	a0,0x8
    800019d8:	8d450513          	addi	a0,a0,-1836 # 800092a8 <CONSOLE_STATUS+0x298>
    800019dc:	00001097          	auipc	ra,0x1
    800019e0:	5c8080e7          	jalr	1480(ra) # 80002fa4 <_Z8printStrPKc>
    for (; i < 16; i++)
    800019e4:	0014849b          	addiw	s1,s1,1
    800019e8:	0ff4f493          	andi	s1,s1,255
    800019ec:	00f00793          	li	a5,15
    800019f0:	fc97f4e3          	bgeu	a5,s1,800019b8 <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800019f4:	01813083          	ld	ra,24(sp)
    800019f8:	01013403          	ld	s0,16(sp)
    800019fc:	00813483          	ld	s1,8(sp)
    80001a00:	00013903          	ld	s2,0(sp)
    80001a04:	02010113          	addi	sp,sp,32
    80001a08:	00008067          	ret

0000000080001a0c <_ZN11MySemaphore4waitEv>:
#include "../h/scheduler.hpp"
#include "syscall.h"
class TCB;

int MySemaphore::wait() {
    if(closed) return -1;
    80001a0c:	00454783          	lbu	a5,4(a0)
    80001a10:	0a079263          	bnez	a5,80001ab4 <_ZN11MySemaphore4waitEv+0xa8>
int MySemaphore::wait() {
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	01213023          	sd	s2,0(sp)
    80001a28:	02010413          	addi	s0,sp,32
    80001a2c:	00050493          	mv	s1,a0
    this->value--;
    80001a30:	00052783          	lw	a5,0(a0)
    80001a34:	fff7879b          	addiw	a5,a5,-1
    80001a38:	00f52023          	sw	a5,0(a0)
    if (this->value < 0) {
    80001a3c:	02079713          	slli	a4,a5,0x20
    80001a40:	02074063          	bltz	a4,80001a60 <_ZN11MySemaphore4waitEv+0x54>
        TCB::running->setBlocked(true);
        blocked.addLast(TCB::running);
        thread_dispatch();
    }
    return 0;
    80001a44:	00000513          	li	a0,0
}
    80001a48:	01813083          	ld	ra,24(sp)
    80001a4c:	01013403          	ld	s0,16(sp)
    80001a50:	00813483          	ld	s1,8(sp)
    80001a54:	00013903          	ld	s2,0(sp)
    80001a58:	02010113          	addi	sp,sp,32
    80001a5c:	00008067          	ret
        TCB::running->setBlocked(true);
    80001a60:	0000a797          	auipc	a5,0xa
    80001a64:	1187b783          	ld	a5,280(a5) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a68:	0007b903          	ld	s2,0(a5)
    void setFinished(bool value) { finished = value; }

    bool isMain(){return main;}
    bool isBlocked(){return blocked;}

    void setBlocked(bool val){blocked=val;}
    80001a6c:	00100793          	li	a5,1
    80001a70:	02f90123          	sb	a5,34(s2)
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}

        void* operator new(size_t size) {
            return MemoryAllocator::mem_alloc(size);
    80001a74:	01000513          	li	a0,16
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	140080e7          	jalr	320(ra) # 80002bb8 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001a80:	01253023          	sd	s2,0(a0)
    80001a84:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    80001a88:	0104b783          	ld	a5,16(s1)
    80001a8c:	00078e63          	beqz	a5,80001aa8 <_ZN11MySemaphore4waitEv+0x9c>
        {
            tail->next = elem;
    80001a90:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001a94:	00a4b823          	sd	a0,16(s1)
        thread_dispatch();
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	a24080e7          	jalr	-1500(ra) # 800014bc <_Z15thread_dispatchv>
    return 0;
    80001aa0:	00000513          	li	a0,0
    80001aa4:	fa5ff06f          	j	80001a48 <_ZN11MySemaphore4waitEv+0x3c>
        } else
        {
            head = tail = elem;
    80001aa8:	00a4b823          	sd	a0,16(s1)
    80001aac:	00a4b423          	sd	a0,8(s1)
    80001ab0:	fe9ff06f          	j	80001a98 <_ZN11MySemaphore4waitEv+0x8c>
    if(closed) return -1;
    80001ab4:	fff00513          	li	a0,-1
}
    80001ab8:	00008067          	ret

0000000080001abc <_ZN11MySemaphore6signalEv>:

int MySemaphore::signal() {
    this->value++;
    80001abc:	00052703          	lw	a4,0(a0)
    80001ac0:	0017071b          	addiw	a4,a4,1
    80001ac4:	0007069b          	sext.w	a3,a4
    80001ac8:	00e52023          	sw	a4,0(a0)
    if (value <= 0) {
    80001acc:	00d05663          	blez	a3,80001ad8 <_ZN11MySemaphore6signalEv+0x1c>
            t->setBlocked(false);
            Scheduler::put(t);
        }
    }
    return 0;
}
    80001ad0:	00000513          	li	a0,0
    80001ad4:	00008067          	ret
    80001ad8:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001adc:	00853503          	ld	a0,8(a0)
    80001ae0:	fe0508e3          	beqz	a0,80001ad0 <_ZN11MySemaphore6signalEv+0x14>
int MySemaphore::signal() {
    80001ae4:	fe010113          	addi	sp,sp,-32
    80001ae8:	00113c23          	sd	ra,24(sp)
    80001aec:	00813823          	sd	s0,16(sp)
    80001af0:	00913423          	sd	s1,8(sp)
    80001af4:	02010413          	addi	s0,sp,32

        Elem *elem = head;
        head = head->next;
    80001af8:	00853703          	ld	a4,8(a0)
    80001afc:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80001b00:	02070e63          	beqz	a4,80001b3c <_ZN11MySemaphore6signalEv+0x80>

        T *ret = elem->data;
    80001b04:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	21c080e7          	jalr	540(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
        if (t != nullptr) {
    80001b10:	00048a63          	beqz	s1,80001b24 <_ZN11MySemaphore6signalEv+0x68>
    80001b14:	02048123          	sb	zero,34(s1)
            Scheduler::put(t);
    80001b18:	00048513          	mv	a0,s1
    80001b1c:	00001097          	auipc	ra,0x1
    80001b20:	384080e7          	jalr	900(ra) # 80002ea0 <_ZN9Scheduler3putEP3TCB>
}
    80001b24:	00000513          	li	a0,0
    80001b28:	01813083          	ld	ra,24(sp)
    80001b2c:	01013403          	ld	s0,16(sp)
    80001b30:	00813483          	ld	s1,8(sp)
    80001b34:	02010113          	addi	sp,sp,32
    80001b38:	00008067          	ret
        if (!head) { tail = 0; }
    80001b3c:	0007b823          	sd	zero,16(a5)
    80001b40:	fc5ff06f          	j	80001b04 <_ZN11MySemaphore6signalEv+0x48>

0000000080001b44 <_ZN11MySemaphore5closeEv>:

int MySemaphore::close() {
    80001b44:	fe010113          	addi	sp,sp,-32
    80001b48:	00113c23          	sd	ra,24(sp)
    80001b4c:	00813823          	sd	s0,16(sp)
    80001b50:	00913423          	sd	s1,8(sp)
    80001b54:	01213023          	sd	s2,0(sp)
    80001b58:	02010413          	addi	s0,sp,32
    80001b5c:	00050913          	mv	s2,a0
    closed=true;
    80001b60:	00100793          	li	a5,1
    80001b64:	00f50223          	sb	a5,4(a0)
        if (!head) { return 0; }
    80001b68:	00853503          	ld	a0,8(a0)
    80001b6c:	02050463          	beqz	a0,80001b94 <_ZN11MySemaphore5closeEv+0x50>
        head = head->next;
    80001b70:	00853783          	ld	a5,8(a0)
    80001b74:	00f93423          	sd	a5,8(s2)
        if (!head) { tail = 0; }
    80001b78:	00078a63          	beqz	a5,80001b8c <_ZN11MySemaphore5closeEv+0x48>
        T *ret = elem->data;
    80001b7c:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80001b80:	00001097          	auipc	ra,0x1
    80001b84:	1a4080e7          	jalr	420(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
        delete elem;
        return ret;
    80001b88:	0240006f          	j	80001bac <_ZN11MySemaphore5closeEv+0x68>
        if (!head) { tail = 0; }
    80001b8c:	00093823          	sd	zero,16(s2)
    80001b90:	fedff06f          	j	80001b7c <_ZN11MySemaphore5closeEv+0x38>
        if (!head) { return 0; }
    80001b94:	00050493          	mv	s1,a0
    80001b98:	0140006f          	j	80001bac <_ZN11MySemaphore5closeEv+0x68>
        if (!head) { tail = 0; }
    80001b9c:	00093823          	sd	zero,16(s2)
        T *ret = elem->data;
    80001ba0:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80001ba4:	00001097          	auipc	ra,0x1
    80001ba8:	180080e7          	jalr	384(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
    TCB* t = blocked.removeFirst();
    while (t != nullptr) {
    80001bac:	02048663          	beqz	s1,80001bd8 <_ZN11MySemaphore5closeEv+0x94>
    80001bb0:	02048123          	sb	zero,34(s1)
        t->setBlocked(false);
        Scheduler::put(t);
    80001bb4:	00048513          	mv	a0,s1
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	2e8080e7          	jalr	744(ra) # 80002ea0 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80001bc0:	00893503          	ld	a0,8(s2)
    80001bc4:	00050a63          	beqz	a0,80001bd8 <_ZN11MySemaphore5closeEv+0x94>
        head = head->next;
    80001bc8:	00853783          	ld	a5,8(a0)
    80001bcc:	00f93423          	sd	a5,8(s2)
        if (!head) { tail = 0; }
    80001bd0:	fc0798e3          	bnez	a5,80001ba0 <_ZN11MySemaphore5closeEv+0x5c>
    80001bd4:	fc9ff06f          	j	80001b9c <_ZN11MySemaphore5closeEv+0x58>
        t = blocked.removeFirst();
    }
    return 0;
}
    80001bd8:	00000513          	li	a0,0
    80001bdc:	01813083          	ld	ra,24(sp)
    80001be0:	01013403          	ld	s0,16(sp)
    80001be4:	00813483          	ld	s1,8(sp)
    80001be8:	00013903          	ld	s2,0(sp)
    80001bec:	02010113          	addi	sp,sp,32
    80001bf0:	00008067          	ret

0000000080001bf4 <_Z16kod_za_nit_jedanPv>:
// Globalne promenljive za sinhronizaciju/proveru napretka
volatile int brojac_nit_1 = 0;
volatile int brojac_nit_2 = 0;

// Kod koji će izvršavati prva nit
void kod_za_nit_jedan(void* arg) {
    80001bf4:	fe010113          	addi	sp,sp,-32
    80001bf8:	00113c23          	sd	ra,24(sp)
    80001bfc:	00813823          	sd	s0,16(sp)
    80001c00:	00913423          	sd	s1,8(sp)
    80001c04:	02010413          	addi	s0,sp,32
    printString(">>> Nit 1 je uspesno pokrenuta!\n");
    80001c08:	00007517          	auipc	a0,0x7
    80001c0c:	48050513          	addi	a0,a0,1152 # 80009088 <CONSOLE_STATUS+0x78>
    80001c10:	00004097          	auipc	ra,0x4
    80001c14:	998080e7          	jalr	-1640(ra) # 800055a8 <_Z11printStringPKc>

    for (int i = 0; i < 5; i++) {
    80001c18:	00000493          	li	s1,0
    80001c1c:	00400793          	li	a5,4
    80001c20:	0497c263          	blt	a5,s1,80001c64 <_Z16kod_za_nit_jedanPv+0x70>
        brojac_nit_1++;
    80001c24:	0000a717          	auipc	a4,0xa
    80001c28:	fac70713          	addi	a4,a4,-84 # 8000bbd0 <brojac_nit_1>
    80001c2c:	00072783          	lw	a5,0(a4)
    80001c30:	0017879b          	addiw	a5,a5,1
    80001c34:	00f72023          	sw	a5,0(a4)
        printString("Nit 1 radi... iteracija: \n");
    80001c38:	00007517          	auipc	a0,0x7
    80001c3c:	47850513          	addi	a0,a0,1144 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001c40:	00004097          	auipc	ra,0x4
    80001c44:	968080e7          	jalr	-1688(ra) # 800055a8 <_Z11printStringPKc>
        // Ako imaš ispis brojeva, ispiši 'i', ako ne, samo tekst
        printInteger(i);
    80001c48:	00048513          	mv	a0,s1
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	3c8080e7          	jalr	968(ra) # 80003014 <_Z12printIntegerm>

        thread_dispatch();
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	868080e7          	jalr	-1944(ra) # 800014bc <_Z15thread_dispatchv>
    for (int i = 0; i < 5; i++) {
    80001c5c:	0014849b          	addiw	s1,s1,1
    80001c60:	fbdff06f          	j	80001c1c <_Z16kod_za_nit_jedanPv+0x28>
    }

    printString(">>> Nit 1 zavrsila rad i egzodira!\n");
    80001c64:	00007517          	auipc	a0,0x7
    80001c68:	46c50513          	addi	a0,a0,1132 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001c6c:	00004097          	auipc	ra,0x4
    80001c70:	93c080e7          	jalr	-1732(ra) # 800055a8 <_Z11printStringPKc>
    thread_exit();
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	820080e7          	jalr	-2016(ra) # 80001494 <_Z11thread_exitv>
}
    80001c7c:	01813083          	ld	ra,24(sp)
    80001c80:	01013403          	ld	s0,16(sp)
    80001c84:	00813483          	ld	s1,8(sp)
    80001c88:	02010113          	addi	sp,sp,32
    80001c8c:	00008067          	ret

0000000080001c90 <_Z14kod_za_nit_dvaPv>:

// Kod koji će izvršavati druga nit
void kod_za_nit_dva(void* arg) {
    80001c90:	fe010113          	addi	sp,sp,-32
    80001c94:	00113c23          	sd	ra,24(sp)
    80001c98:	00813823          	sd	s0,16(sp)
    80001c9c:	00913423          	sd	s1,8(sp)
    80001ca0:	02010413          	addi	s0,sp,32
    printString(">>> Nit 2 je uspesno pokrenuta!\n");
    80001ca4:	00007517          	auipc	a0,0x7
    80001ca8:	45450513          	addi	a0,a0,1108 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001cac:	00004097          	auipc	ra,0x4
    80001cb0:	8fc080e7          	jalr	-1796(ra) # 800055a8 <_Z11printStringPKc>

    for (int i = 0; i < 5; i++) {
    80001cb4:	00000493          	li	s1,0
    80001cb8:	00400793          	li	a5,4
    80001cbc:	0297cc63          	blt	a5,s1,80001cf4 <_Z14kod_za_nit_dvaPv+0x64>
        brojac_nit_2++;
    80001cc0:	0000a717          	auipc	a4,0xa
    80001cc4:	f1070713          	addi	a4,a4,-240 # 8000bbd0 <brojac_nit_1>
    80001cc8:	00472783          	lw	a5,4(a4)
    80001ccc:	0017879b          	addiw	a5,a5,1
    80001cd0:	00f72223          	sw	a5,4(a4)
        printString("Nit 2 radi... iteracija: \n");
    80001cd4:	00007517          	auipc	a0,0x7
    80001cd8:	44c50513          	addi	a0,a0,1100 # 80009120 <CONSOLE_STATUS+0x110>
    80001cdc:	00004097          	auipc	ra,0x4
    80001ce0:	8cc080e7          	jalr	-1844(ra) # 800055a8 <_Z11printStringPKc>

        thread_dispatch();
    80001ce4:	fffff097          	auipc	ra,0xfffff
    80001ce8:	7d8080e7          	jalr	2008(ra) # 800014bc <_Z15thread_dispatchv>
    for (int i = 0; i < 5; i++) {
    80001cec:	0014849b          	addiw	s1,s1,1
    80001cf0:	fc9ff06f          	j	80001cb8 <_Z14kod_za_nit_dvaPv+0x28>

    }

    printString(">>> Nit 2 zavrsila rad i egzodira!\n");
    80001cf4:	00007517          	auipc	a0,0x7
    80001cf8:	44c50513          	addi	a0,a0,1100 # 80009140 <CONSOLE_STATUS+0x130>
    80001cfc:	00004097          	auipc	ra,0x4
    80001d00:	8ac080e7          	jalr	-1876(ra) # 800055a8 <_Z11printStringPKc>
    thread_exit();
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	790080e7          	jalr	1936(ra) # 80001494 <_Z11thread_exitv>
}
    80001d0c:	01813083          	ld	ra,24(sp)
    80001d10:	01013403          	ld	s0,16(sp)
    80001d14:	00813483          	ld	s1,8(sp)
    80001d18:	02010113          	addi	sp,sp,32
    80001d1c:	00008067          	ret

0000000080001d20 <_Z15userMainWrapperPv>:

    printString("--- TEST NITI USPESNO ZAVRSEN! Glavna nit ponovo ima kontrolu. ---\n");
}


void userMainWrapper(void*) {
    80001d20:	ff010113          	addi	sp,sp,-16
    80001d24:	00113423          	sd	ra,8(sp)
    80001d28:	00813023          	sd	s0,0(sp)
    80001d2c:	01010413          	addi	s0,sp,16
    userMain();
    80001d30:	00004097          	auipc	ra,0x4
    80001d34:	f40080e7          	jalr	-192(ra) # 80005c70 <_Z8userMainv>
}
    80001d38:	00813083          	ld	ra,8(sp)
    80001d3c:	00013403          	ld	s0,0(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret

0000000080001d48 <_Z25pokreni_testove_alokacijev>:
void pokreni_testove_alokacije() {
    80001d48:	fe010113          	addi	sp,sp,-32
    80001d4c:	00113c23          	sd	ra,24(sp)
    80001d50:	00813823          	sd	s0,16(sp)
    80001d54:	00913423          	sd	s1,8(sp)
    80001d58:	02010413          	addi	s0,sp,32
    int* p1 = new int(123);
    80001d5c:	00400513          	li	a0,4
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	86c080e7          	jalr	-1940(ra) # 800025cc <_Znwm>
    80001d68:	07b00793          	li	a5,123
    80001d6c:	00f52023          	sw	a5,0(a0)
    if (p1 == nullptr) {
    80001d70:	0a050663          	beqz	a0,80001e1c <_Z25pokreni_testove_alokacijev+0xd4>
    delete p1;  //Ovde proveravaš tvoj free/delete
    80001d74:	00001097          	auipc	ra,0x1
    80001d78:	8a8080e7          	jalr	-1880(ra) # 8000261c <_ZdlPv>
    printString("TEST 1 PROŠAO: Osnovni new/delete radi.\n");
    80001d7c:	00007517          	auipc	a0,0x7
    80001d80:	41c50513          	addi	a0,a0,1052 # 80009198 <CONSOLE_STATUS+0x188>
    80001d84:	00004097          	auipc	ra,0x4
    80001d88:	824080e7          	jalr	-2012(ra) # 800055a8 <_Z11printStringPKc>
    TestObjekat* mojObj = new TestObjekat(777);
    80001d8c:	02000513          	li	a0,32
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	83c080e7          	jalr	-1988(ra) # 800025cc <_Znwm>
    TestObjekat(int pokrenutId) : id(pokrenutId) {
    80001d98:	30900793          	li	a5,777
    80001d9c:	00f52023          	sw	a5,0(a0)
        vrednosti[0] = 0xDEEB;
    80001da0:	0000e7b7          	lui	a5,0xe
    80001da4:	eeb78793          	addi	a5,a5,-277 # deeb <_entry-0x7fff2115>
    80001da8:	00f53423          	sd	a5,8(a0)
        vrednosti[1] = 0x2026; // Trenutna godina za test :)
    80001dac:	000027b7          	lui	a5,0x2
    80001db0:	02678793          	addi	a5,a5,38 # 2026 <_entry-0x7fffdfda>
    80001db4:	00f53823          	sd	a5,16(a0)
        vrednosti[2] = 0xBEEF;
    80001db8:	0000c7b7          	lui	a5,0xc
    80001dbc:	eef78793          	addi	a5,a5,-273 # beef <_entry-0x7fff4111>
    80001dc0:	00f53c23          	sd	a5,24(a0)
    if (mojObj == nullptr) {
    80001dc4:	06050663          	beqz	a0,80001e30 <_Z25pokreni_testove_alokacijev+0xe8>
    delete mojObj;
    80001dc8:	00001097          	auipc	ra,0x1
    80001dcc:	854080e7          	jalr	-1964(ra) # 8000261c <_ZdlPv>
    printString("TEST 2 PROŠAO: Konstruktor se uspešno izvršava preko 'new'.\n");
    80001dd0:	00007517          	auipc	a0,0x7
    80001dd4:	43050513          	addi	a0,a0,1072 # 80009200 <CONSOLE_STATUS+0x1f0>
    80001dd8:	00003097          	auipc	ra,0x3
    80001ddc:	7d0080e7          	jalr	2000(ra) # 800055a8 <_Z11printStringPKc>
    int* niz = new int[velicina_niza];
    80001de0:	02800513          	li	a0,40
    80001de4:	00001097          	auipc	ra,0x1
    80001de8:	810080e7          	jalr	-2032(ra) # 800025f4 <_Znam>
    if (niz == nullptr) {
    80001dec:	04050c63          	beqz	a0,80001e44 <_Z25pokreni_testove_alokacijev+0xfc>
    for (int i = 0; i < velicina_niza; i++) {
    80001df0:	00000793          	li	a5,0
    80001df4:	00900713          	li	a4,9
    80001df8:	06f74063          	blt	a4,a5,80001e58 <_Z25pokreni_testove_alokacijev+0x110>
        niz[i] = i * 10;
    80001dfc:	00279693          	slli	a3,a5,0x2
    80001e00:	00d506b3          	add	a3,a0,a3
    80001e04:	0027971b          	slliw	a4,a5,0x2
    80001e08:	00f7073b          	addw	a4,a4,a5
    80001e0c:	0017171b          	slliw	a4,a4,0x1
    80001e10:	00e6a023          	sw	a4,0(a3)
    for (int i = 0; i < velicina_niza; i++) {
    80001e14:	0017879b          	addiw	a5,a5,1
    80001e18:	fddff06f          	j	80001df4 <_Z25pokreni_testove_alokacijev+0xac>
        printString("TEST 1 PAO: Alokator je vratio nullptr!\n");
    80001e1c:	00007517          	auipc	a0,0x7
    80001e20:	34c50513          	addi	a0,a0,844 # 80009168 <CONSOLE_STATUS+0x158>
    80001e24:	00003097          	auipc	ra,0x3
    80001e28:	784080e7          	jalr	1924(ra) # 800055a8 <_Z11printStringPKc>
        return;
    80001e2c:	08c0006f          	j	80001eb8 <_Z25pokreni_testove_alokacijev+0x170>
        printString("TEST 2 PAO: Neuspešna alokacija strukture/objekta!\n");
    80001e30:	00007517          	auipc	a0,0x7
    80001e34:	39850513          	addi	a0,a0,920 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80001e38:	00003097          	auipc	ra,0x3
    80001e3c:	770080e7          	jalr	1904(ra) # 800055a8 <_Z11printStringPKc>
        return;
    80001e40:	0780006f          	j	80001eb8 <_Z25pokreni_testove_alokacijev+0x170>
        printString("TEST 3 PAO: 'new[]' je vratio nullptr za niz!\n");
    80001e44:	00007517          	auipc	a0,0x7
    80001e48:	3fc50513          	addi	a0,a0,1020 # 80009240 <CONSOLE_STATUS+0x230>
    80001e4c:	00003097          	auipc	ra,0x3
    80001e50:	75c080e7          	jalr	1884(ra) # 800055a8 <_Z11printStringPKc>
        return;
    80001e54:	0640006f          	j	80001eb8 <_Z25pokreni_testove_alokacijev+0x170>
    for (int i = 0; i < velicina_niza; i++) {
    80001e58:	00000793          	li	a5,0
    80001e5c:	00900713          	li	a4,9
    80001e60:	02f74463          	blt	a4,a5,80001e88 <_Z25pokreni_testove_alokacijev+0x140>
        if (niz[i] != i * 10) {
    80001e64:	00279713          	slli	a4,a5,0x2
    80001e68:	00e50733          	add	a4,a0,a4
    80001e6c:	00072683          	lw	a3,0(a4)
    80001e70:	0027971b          	slliw	a4,a5,0x2
    80001e74:	00f7073b          	addw	a4,a4,a5
    80001e78:	0017171b          	slliw	a4,a4,0x1
    80001e7c:	04e69863          	bne	a3,a4,80001ecc <_Z25pokreni_testove_alokacijev+0x184>
    for (int i = 0; i < velicina_niza; i++) {
    80001e80:	0017879b          	addiw	a5,a5,1
    80001e84:	fd9ff06f          	j	80001e5c <_Z25pokreni_testove_alokacijev+0x114>
    bool niz_validan = true;
    80001e88:	00100493          	li	s1,1
    delete[] niz; // Jako bitno da koristiš delete[] sa zagradama!
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	7f8080e7          	jalr	2040(ra) # 80002684 <_ZdaPv>
    if (!niz_validan) {
    80001e94:	04048063          	beqz	s1,80001ed4 <_Z25pokreni_testove_alokacijev+0x18c>
    printString("TEST 3 PROŠAO: Alokacija i dealokacija nizova radi.\n");
    80001e98:	00007517          	auipc	a0,0x7
    80001e9c:	41850513          	addi	a0,a0,1048 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80001ea0:	00003097          	auipc	ra,0x3
    80001ea4:	708080e7          	jalr	1800(ra) # 800055a8 <_Z11printStringPKc>
    printString("--- SVI NEW/DELETE TESTOVI USPEŠNO ZAVRŠENI! ---\n");
    80001ea8:	00007517          	auipc	a0,0x7
    80001eac:	44050513          	addi	a0,a0,1088 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80001eb0:	00003097          	auipc	ra,0x3
    80001eb4:	6f8080e7          	jalr	1784(ra) # 800055a8 <_Z11printStringPKc>
}
    80001eb8:	01813083          	ld	ra,24(sp)
    80001ebc:	01013403          	ld	s0,16(sp)
    80001ec0:	00813483          	ld	s1,8(sp)
    80001ec4:	02010113          	addi	sp,sp,32
    80001ec8:	00008067          	ret
            niz_validan = false;
    80001ecc:	00000493          	li	s1,0
    80001ed0:	fbdff06f          	j	80001e8c <_Z25pokreni_testove_alokacijev+0x144>
        printString("TEST 3 PAO: Podaci u nizu su pregaženi ili korumpirani!\n");
    80001ed4:	00007517          	auipc	a0,0x7
    80001ed8:	39c50513          	addi	a0,a0,924 # 80009270 <CONSOLE_STATUS+0x260>
    80001edc:	00003097          	auipc	ra,0x3
    80001ee0:	6cc080e7          	jalr	1740(ra) # 800055a8 <_Z11printStringPKc>
        return;
    80001ee4:	fd5ff06f          	j	80001eb8 <_Z25pokreni_testove_alokacijev+0x170>

0000000080001ee8 <_Z20pokreni_testove_nitiv>:
void pokreni_testove_niti() {
    80001ee8:	fd010113          	addi	sp,sp,-48
    80001eec:	02113423          	sd	ra,40(sp)
    80001ef0:	02813023          	sd	s0,32(sp)
    80001ef4:	00913c23          	sd	s1,24(sp)
    80001ef8:	03010413          	addi	s0,sp,48
    printString("\n--- POCETAK TESTA NITI ---\n");
    80001efc:	00007517          	auipc	a0,0x7
    80001f00:	42450513          	addi	a0,a0,1060 # 80009320 <CONSOLE_STATUS+0x310>
    80001f04:	00003097          	auipc	ra,0x3
    80001f08:	6a4080e7          	jalr	1700(ra) # 800055a8 <_Z11printStringPKc>
    thread_t nit1 = nullptr;
    80001f0c:	fc043c23          	sd	zero,-40(s0)
    thread_t nit2 = nullptr;
    80001f10:	fc043823          	sd	zero,-48(s0)
    int res1 = thread_create(&nit1, kod_za_nit_jedan, nullptr);
    80001f14:	00000613          	li	a2,0
    80001f18:	00000597          	auipc	a1,0x0
    80001f1c:	cdc58593          	addi	a1,a1,-804 # 80001bf4 <_Z16kod_za_nit_jedanPv>
    80001f20:	fd840513          	addi	a0,s0,-40
    80001f24:	fffff097          	auipc	ra,0xfffff
    80001f28:	534080e7          	jalr	1332(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    80001f2c:	00050493          	mv	s1,a0
    if (res1 < 0 || nit1 == nullptr) {
    80001f30:	06054263          	bltz	a0,80001f94 <_Z20pokreni_testove_nitiv+0xac>
    80001f34:	fd843783          	ld	a5,-40(s0)
    80001f38:	04078e63          	beqz	a5,80001f94 <_Z20pokreni_testove_nitiv+0xac>
    printString("Nit 1 kreirana uspesno.\n");
    80001f3c:	00007517          	auipc	a0,0x7
    80001f40:	42c50513          	addi	a0,a0,1068 # 80009368 <CONSOLE_STATUS+0x358>
    80001f44:	00003097          	auipc	ra,0x3
    80001f48:	664080e7          	jalr	1636(ra) # 800055a8 <_Z11printStringPKc>
    int res2 = thread_create(&nit2, kod_za_nit_dva, nullptr);
    80001f4c:	00000613          	li	a2,0
    80001f50:	00000597          	auipc	a1,0x0
    80001f54:	d4058593          	addi	a1,a1,-704 # 80001c90 <_Z14kod_za_nit_dvaPv>
    80001f58:	fd040513          	addi	a0,s0,-48
    80001f5c:	fffff097          	auipc	ra,0xfffff
    80001f60:	4fc080e7          	jalr	1276(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    if (res2 < 0 || nit2 == nullptr) {
    80001f64:	06054463          	bltz	a0,80001fcc <_Z20pokreni_testove_nitiv+0xe4>
    80001f68:	fd043783          	ld	a5,-48(s0)
    80001f6c:	06078063          	beqz	a5,80001fcc <_Z20pokreni_testove_nitiv+0xe4>
    printString("Nit 2 kreirana uspesno.\n");
    80001f70:	00007517          	auipc	a0,0x7
    80001f74:	44050513          	addi	a0,a0,1088 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80001f78:	00003097          	auipc	ra,0x3
    80001f7c:	630080e7          	jalr	1584(ra) # 800055a8 <_Z11printStringPKc>
    printString("Glavna nit predaje kontrolu radnicima...\n");
    80001f80:	00007517          	auipc	a0,0x7
    80001f84:	45050513          	addi	a0,a0,1104 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80001f88:	00003097          	auipc	ra,0x3
    80001f8c:	620080e7          	jalr	1568(ra) # 800055a8 <_Z11printStringPKc>
    80001f90:	0580006f          	j	80001fe8 <_Z20pokreni_testove_nitiv+0x100>
        printString("ERROR: Kreiranje Nit 1 nije uspelo!\n");
    80001f94:	00007517          	auipc	a0,0x7
    80001f98:	3ac50513          	addi	a0,a0,940 # 80009340 <CONSOLE_STATUS+0x330>
    80001f9c:	00003097          	auipc	ra,0x3
    80001fa0:	60c080e7          	jalr	1548(ra) # 800055a8 <_Z11printStringPKc>
        printInt(res1);
    80001fa4:	00000613          	li	a2,0
    80001fa8:	00a00593          	li	a1,10
    80001fac:	00048513          	mv	a0,s1
    80001fb0:	00003097          	auipc	ra,0x3
    80001fb4:	7a8080e7          	jalr	1960(ra) # 80005758 <_Z8printIntiii>
}
    80001fb8:	02813083          	ld	ra,40(sp)
    80001fbc:	02013403          	ld	s0,32(sp)
    80001fc0:	01813483          	ld	s1,24(sp)
    80001fc4:	03010113          	addi	sp,sp,48
    80001fc8:	00008067          	ret
        printString("ERROR: Kreiranje Nit 2 nije uspelo!\n");
    80001fcc:	00007517          	auipc	a0,0x7
    80001fd0:	3bc50513          	addi	a0,a0,956 # 80009388 <CONSOLE_STATUS+0x378>
    80001fd4:	00003097          	auipc	ra,0x3
    80001fd8:	5d4080e7          	jalr	1492(ra) # 800055a8 <_Z11printStringPKc>
        return;
    80001fdc:	fddff06f          	j	80001fb8 <_Z20pokreni_testove_nitiv+0xd0>
        thread_dispatch();
    80001fe0:	fffff097          	auipc	ra,0xfffff
    80001fe4:	4dc080e7          	jalr	1244(ra) # 800014bc <_Z15thread_dispatchv>
    while (brojac_nit_1 < 5 || brojac_nit_2 < 5) {
    80001fe8:	0000a717          	auipc	a4,0xa
    80001fec:	be872703          	lw	a4,-1048(a4) # 8000bbd0 <brojac_nit_1>
    80001ff0:	00400793          	li	a5,4
    80001ff4:	fee7d6e3          	bge	a5,a4,80001fe0 <_Z20pokreni_testove_nitiv+0xf8>
    80001ff8:	0000a717          	auipc	a4,0xa
    80001ffc:	bdc72703          	lw	a4,-1060(a4) # 8000bbd4 <brojac_nit_2>
    80002000:	fee7d0e3          	bge	a5,a4,80001fe0 <_Z20pokreni_testove_nitiv+0xf8>
    printString("--- TEST NITI USPESNO ZAVRSEN! Glavna nit ponovo ima kontrolu. ---\n");
    80002004:	00007517          	auipc	a0,0x7
    80002008:	3fc50513          	addi	a0,a0,1020 # 80009400 <CONSOLE_STATUS+0x3f0>
    8000200c:	00003097          	auipc	ra,0x3
    80002010:	59c080e7          	jalr	1436(ra) # 800055a8 <_Z11printStringPKc>
    80002014:	fa5ff06f          	j	80001fb8 <_Z20pokreni_testove_nitiv+0xd0>

0000000080002018 <main>:

int main() {
    80002018:	fe010113          	addi	sp,sp,-32
    8000201c:	00113c23          	sd	ra,24(sp)
    80002020:	00813823          	sd	s0,16(sp)
    80002024:	02010413          	addi	s0,sp,32
    MemoryAllocator::initMem();
    80002028:	00001097          	auipc	ra,0x1
    8000202c:	b0c080e7          	jalr	-1268(ra) # 80002b34 <_ZN15MemoryAllocator7initMemEv>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80002030:	0000a797          	auipc	a5,0xa
    80002034:	b387b783          	ld	a5,-1224(a5) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002038:	10579073          	csrw	stvec,a5

    create_main_thread();
    8000203c:	fffff097          	auipc	ra,0xfffff
    80002040:	394080e7          	jalr	916(ra) # 800013d0 <_Z18create_main_threadv>

    thread_t userMainThread;
    thread_create(&userMainThread, userMainWrapper, nullptr);
    80002044:	00000613          	li	a2,0
    80002048:	00000597          	auipc	a1,0x0
    8000204c:	cd858593          	addi	a1,a1,-808 # 80001d20 <_Z15userMainWrapperPv>
    80002050:	fe840513          	addi	a0,s0,-24
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	404080e7          	jalr	1028(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>

    while(true) {
        thread_dispatch();
    8000205c:	fffff097          	auipc	ra,0xfffff
    80002060:	460080e7          	jalr	1120(ra) # 800014bc <_Z15thread_dispatchv>
    80002064:	ff9ff06f          	j	8000205c <main+0x44>

0000000080002068 <_ZN3TCB13threadWrapperEv>:
    TCB::contextSwitch(&old->context, &running->context);
}


void TCB::threadWrapper()
{
    80002068:	fe010113          	addi	sp,sp,-32
    8000206c:	00113c23          	sd	ra,24(sp)
    80002070:	00813823          	sd	s0,16(sp)
    80002074:	00913423          	sd	s1,8(sp)
    80002078:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	70c080e7          	jalr	1804(ra) # 80002788 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002084:	0000a497          	auipc	s1,0xa
    80002088:	b5448493          	addi	s1,s1,-1196 # 8000bbd8 <_ZN3TCB7runningE>
    8000208c:	0004b783          	ld	a5,0(s1)
    80002090:	0007b703          	ld	a4,0(a5)
    80002094:	0287b503          	ld	a0,40(a5)
    80002098:	000700e7          	jalr	a4
    running->setFinished(true);
    8000209c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800020a0:	00100713          	li	a4,1
    800020a4:	02e780a3          	sb	a4,33(a5)
    thread_dispatch();
    800020a8:	fffff097          	auipc	ra,0xfffff
    800020ac:	414080e7          	jalr	1044(ra) # 800014bc <_Z15thread_dispatchv>

}
    800020b0:	01813083          	ld	ra,24(sp)
    800020b4:	01013403          	ld	s0,16(sp)
    800020b8:	00813483          	ld	s1,8(sp)
    800020bc:	02010113          	addi	sp,sp,32
    800020c0:	00008067          	ret

00000000800020c4 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    800020c4:	fd010113          	addi	sp,sp,-48
    800020c8:	02113423          	sd	ra,40(sp)
    800020cc:	02813023          	sd	s0,32(sp)
    800020d0:	00913c23          	sd	s1,24(sp)
    800020d4:	01213823          	sd	s2,16(sp)
    800020d8:	01313423          	sd	s3,8(sp)
    800020dc:	03010413          	addi	s0,sp,48
    800020e0:	00050913          	mv	s2,a0
    800020e4:	00058993          	mv	s3,a1
    static void yield();

    static TCB *running;

    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    800020e8:	03000513          	li	a0,48
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	acc080e7          	jalr	-1332(ra) # 80002bb8 <_ZN15MemoryAllocator9mem_allocEm>
    800020f4:	00050493          	mv	s1,a0
                      }),
              main(body == nullptr),
              finished(false),
              blocked(false),
              started(false),
              arg(arg)
    800020f8:	01253023          	sd	s2,0(a0)
              stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800020fc:	00090a63          	beqz	s2,80002110 <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80002100:	00002537          	lui	a0,0x2
    80002104:	00000097          	auipc	ra,0x0
    80002108:	4f0080e7          	jalr	1264(ra) # 800025f4 <_Znam>
    8000210c:	0080006f          	j	80002114 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80002110:	00000513          	li	a0,0
              arg(arg)
    80002114:	00a4b423          	sd	a0,8(s1)
    80002118:	00000797          	auipc	a5,0x0
    8000211c:	f5078793          	addi	a5,a5,-176 # 80002068 <_ZN3TCB13threadWrapperEv>
    80002120:	00f4b823          	sd	a5,16(s1)
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002124:	04050a63          	beqz	a0,80002178 <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
    80002128:	000027b7          	lui	a5,0x2
    8000212c:	00f50533          	add	a0,a0,a5
              arg(arg)
    80002130:	00a4bc23          	sd	a0,24(s1)
              main(body == nullptr),
    80002134:	00193913          	seqz	s2,s2
              arg(arg)
    80002138:	03248023          	sb	s2,32(s1)
    8000213c:	020480a3          	sb	zero,33(s1)
    80002140:	02048123          	sb	zero,34(s1)
    80002144:	020481a3          	sb	zero,35(s1)
    80002148:	0334b423          	sd	s3,40(s1)
    Scheduler::put(newThread);
    8000214c:	00048513          	mv	a0,s1
    80002150:	00001097          	auipc	ra,0x1
    80002154:	d50080e7          	jalr	-688(ra) # 80002ea0 <_ZN9Scheduler3putEP3TCB>
}
    80002158:	00048513          	mv	a0,s1
    8000215c:	02813083          	ld	ra,40(sp)
    80002160:	02013403          	ld	s0,32(sp)
    80002164:	01813483          	ld	s1,24(sp)
    80002168:	01013903          	ld	s2,16(sp)
    8000216c:	00813983          	ld	s3,8(sp)
    80002170:	03010113          	addi	sp,sp,48
    80002174:	00008067          	ret
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002178:	00000513          	li	a0,0
    8000217c:	fb5ff06f          	j	80002130 <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80002180:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(ptr);
    80002184:	00048513          	mv	a0,s1
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	b9c080e7          	jalr	-1124(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
    80002190:	00090513          	mv	a0,s2
    80002194:	0000b097          	auipc	ra,0xb
    80002198:	b94080e7          	jalr	-1132(ra) # 8000cd28 <_Unwind_Resume>

000000008000219c <_ZN3TCB19createThreadNoStartEPFvPvES0_>:
TCB *TCB::createThreadNoStart(Body body,void* arg){
    8000219c:	fd010113          	addi	sp,sp,-48
    800021a0:	02113423          	sd	ra,40(sp)
    800021a4:	02813023          	sd	s0,32(sp)
    800021a8:	00913c23          	sd	s1,24(sp)
    800021ac:	01213823          	sd	s2,16(sp)
    800021b0:	01313423          	sd	s3,8(sp)
    800021b4:	03010413          	addi	s0,sp,48
    800021b8:	00050913          	mv	s2,a0
    800021bc:	00058993          	mv	s3,a1
        return MemoryAllocator::mem_alloc(size);
    800021c0:	03000513          	li	a0,48
    800021c4:	00001097          	auipc	ra,0x1
    800021c8:	9f4080e7          	jalr	-1548(ra) # 80002bb8 <_ZN15MemoryAllocator9mem_allocEm>
    800021cc:	00050493          	mv	s1,a0
              arg(arg)
    800021d0:	01253023          	sd	s2,0(a0) # 2000 <_entry-0x7fffe000>
              stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800021d4:	00090a63          	beqz	s2,800021e8 <_ZN3TCB19createThreadNoStartEPFvPvES0_+0x4c>
    800021d8:	00002537          	lui	a0,0x2
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	418080e7          	jalr	1048(ra) # 800025f4 <_Znam>
    800021e4:	0080006f          	j	800021ec <_ZN3TCB19createThreadNoStartEPFvPvES0_+0x50>
    800021e8:	00000513          	li	a0,0
              arg(arg)
    800021ec:	00a4b423          	sd	a0,8(s1)
    800021f0:	00000797          	auipc	a5,0x0
    800021f4:	e7878793          	addi	a5,a5,-392 # 80002068 <_ZN3TCB13threadWrapperEv>
    800021f8:	00f4b823          	sd	a5,16(s1)
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800021fc:	04050463          	beqz	a0,80002244 <_ZN3TCB19createThreadNoStartEPFvPvES0_+0xa8>
    80002200:	000027b7          	lui	a5,0x2
    80002204:	00f50533          	add	a0,a0,a5
              arg(arg)
    80002208:	00a4bc23          	sd	a0,24(s1)
              main(body == nullptr),
    8000220c:	00193913          	seqz	s2,s2
              arg(arg)
    80002210:	03248023          	sb	s2,32(s1)
    80002214:	020480a3          	sb	zero,33(s1)
    80002218:	02048123          	sb	zero,34(s1)
    8000221c:	020481a3          	sb	zero,35(s1)
    80002220:	0334b423          	sd	s3,40(s1)
}
    80002224:	00048513          	mv	a0,s1
    80002228:	02813083          	ld	ra,40(sp)
    8000222c:	02013403          	ld	s0,32(sp)
    80002230:	01813483          	ld	s1,24(sp)
    80002234:	01013903          	ld	s2,16(sp)
    80002238:	00813983          	ld	s3,8(sp)
    8000223c:	03010113          	addi	sp,sp,48
    80002240:	00008067          	ret
                       stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002244:	00000513          	li	a0,0
    80002248:	fc1ff06f          	j	80002208 <_ZN3TCB19createThreadNoStartEPFvPvES0_+0x6c>
    8000224c:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(ptr);
    80002250:	00048513          	mv	a0,s1
    80002254:	00001097          	auipc	ra,0x1
    80002258:	ad0080e7          	jalr	-1328(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
    8000225c:	00090513          	mv	a0,s2
    80002260:	0000b097          	auipc	ra,0xb
    80002264:	ac8080e7          	jalr	-1336(ra) # 8000cd28 <_Unwind_Resume>

0000000080002268 <_ZN3TCB5yieldEv>:
{
    80002268:	ff010113          	addi	sp,sp,-16
    8000226c:	00813423          	sd	s0,8(sp)
    80002270:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80002274:	00000073          	ecall
}
    80002278:	00813403          	ld	s0,8(sp)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret

0000000080002284 <_ZN3TCB16createMainThreadEv>:
TCB* TCB::createMainThread() {
    80002284:	ff010113          	addi	sp,sp,-16
    80002288:	00113423          	sd	ra,8(sp)
    8000228c:	00813023          	sd	s0,0(sp)
    80002290:	01010413          	addi	s0,sp,16
        return MemoryAllocator::mem_alloc(size);
    80002294:	03000513          	li	a0,48
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	920080e7          	jalr	-1760(ra) # 80002bb8 <_ZN15MemoryAllocator9mem_allocEm>
              arg(arg)
    800022a0:	00053023          	sd	zero,0(a0) # 2000 <_entry-0x7fffe000>
    800022a4:	00053423          	sd	zero,8(a0)
    800022a8:	00000717          	auipc	a4,0x0
    800022ac:	dc070713          	addi	a4,a4,-576 # 80002068 <_ZN3TCB13threadWrapperEv>
    800022b0:	00e53823          	sd	a4,16(a0)
    800022b4:	00053c23          	sd	zero,24(a0)
    800022b8:	00100713          	li	a4,1
    800022bc:	02e50023          	sb	a4,32(a0)
    800022c0:	020500a3          	sb	zero,33(a0)
    800022c4:	02050123          	sb	zero,34(a0)
    800022c8:	020501a3          	sb	zero,35(a0)
    800022cc:	02053423          	sd	zero,40(a0)
}
    800022d0:	00813083          	ld	ra,8(sp)
    800022d4:	00013403          	ld	s0,0(sp)
    800022d8:	01010113          	addi	sp,sp,16
    800022dc:	00008067          	ret

00000000800022e0 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800022e0:	fe010113          	addi	sp,sp,-32
    800022e4:	00113c23          	sd	ra,24(sp)
    800022e8:	00813823          	sd	s0,16(sp)
    800022ec:	00913423          	sd	s1,8(sp)
    800022f0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800022f4:	0000a497          	auipc	s1,0xa
    800022f8:	8e44b483          	ld	s1,-1820(s1) # 8000bbd8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800022fc:	0214c783          	lbu	a5,33(s1)
    if (!old->isFinished() && !old->isBlocked()) {
    80002300:	00079663          	bnez	a5,8000230c <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked(){return blocked;}
    80002304:	0224c783          	lbu	a5,34(s1)
    80002308:	02078e63          	beqz	a5,80002344 <_ZN3TCB8dispatchEv+0x64>
    running = Scheduler::get();
    8000230c:	00001097          	auipc	ra,0x1
    80002310:	b2c080e7          	jalr	-1236(ra) # 80002e38 <_ZN9Scheduler3getEv>
    80002314:	0000a797          	auipc	a5,0xa
    80002318:	8ca7b223          	sd	a0,-1852(a5) # 8000bbd8 <_ZN3TCB7runningE>
    if (running == nullptr) {
    8000231c:	02050c63          	beqz	a0,80002354 <_ZN3TCB8dispatchEv+0x74>
    TCB::contextSwitch(&old->context, &running->context);
    80002320:	01050593          	addi	a1,a0,16
    80002324:	01048513          	addi	a0,s1,16
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	010080e7          	jalr	16(ra) # 80001338 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002330:	01813083          	ld	ra,24(sp)
    80002334:	01013403          	ld	s0,16(sp)
    80002338:	00813483          	ld	s1,8(sp)
    8000233c:	02010113          	addi	sp,sp,32
    80002340:	00008067          	ret
        Scheduler::put(old);
    80002344:	00048513          	mv	a0,s1
    80002348:	00001097          	auipc	ra,0x1
    8000234c:	b58080e7          	jalr	-1192(ra) # 80002ea0 <_ZN9Scheduler3putEP3TCB>
    80002350:	fbdff06f          	j	8000230c <_ZN3TCB8dispatchEv+0x2c>
        running = old;
    80002354:	0000a797          	auipc	a5,0xa
    80002358:	8897b223          	sd	s1,-1916(a5) # 8000bbd8 <_ZN3TCB7runningE>
        return;
    8000235c:	fd5ff06f          	j	80002330 <_ZN3TCB8dispatchEv+0x50>

0000000080002360 <_ZN3TCB12thread_startEPS_>:
void TCB::thread_start(TCB *ThreadToStart) {
    80002360:	ff010113          	addi	sp,sp,-16
    80002364:	00113423          	sd	ra,8(sp)
    80002368:	00813023          	sd	s0,0(sp)
    8000236c:	01010413          	addi	s0,sp,16

    Scheduler::put(ThreadToStart);
    80002370:	00001097          	auipc	ra,0x1
    80002374:	b30080e7          	jalr	-1232(ra) # 80002ea0 <_ZN9Scheduler3putEP3TCB>
}
    80002378:	00813083          	ld	ra,8(sp)
    8000237c:	00013403          	ld	s0,0(sp)
    80002380:	01010113          	addi	sp,sp,16
    80002384:	00008067          	ret

0000000080002388 <_ZN9SemaphoreD1Ev>:
    printString("sem_open start\n");
    sem_open(&this->myHandle, init);
    printString("sem_open done\n");
}

Semaphore::~Semaphore() {
    80002388:	ff010113          	addi	sp,sp,-16
    8000238c:	00113423          	sd	ra,8(sp)
    80002390:	00813023          	sd	s0,0(sp)
    80002394:	01010413          	addi	s0,sp,16
    80002398:	00009797          	auipc	a5,0x9
    8000239c:	60878793          	addi	a5,a5,1544 # 8000b9a0 <_ZTV9Semaphore+0x10>
    800023a0:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    800023a4:	00853503          	ld	a0,8(a0)
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	18c080e7          	jalr	396(ra) # 80001534 <_Z9sem_closeP4_sem>
}
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg)
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00113423          	sd	ra,8(sp)
    800023c8:	00813023          	sd	s0,0(sp)
    800023cc:	01010413          	addi	s0,sp,16
    800023d0:	00009797          	auipc	a5,0x9
    800023d4:	5a878793          	addi	a5,a5,1448 # 8000b978 <_ZTV6Thread+0x10>
    800023d8:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle,body,arg);
    800023dc:	00850513          	addi	a0,a0,8
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	078080e7          	jalr	120(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800023e8:	00813083          	ld	ra,8(sp)
    800023ec:	00013403          	ld	s0,0(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <_ZN6Thread5startEv>:
{
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00113423          	sd	ra,8(sp)
    80002400:	00813023          	sd	s0,0(sp)
    80002404:	01010413          	addi	s0,sp,16
    thread_start(this->myHandle);
    80002408:	00853503          	ld	a0,8(a0)
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	028080e7          	jalr	40(ra) # 80001434 <_Z12thread_startP3TCB>
}
    80002414:	00000513          	li	a0,0
    80002418:	00813083          	ld	ra,8(sp)
    8000241c:	00013403          	ld	s0,0(sp)
    80002420:	01010113          	addi	sp,sp,16
    80002424:	00008067          	ret

0000000080002428 <_ZN6Thread8dispatchEv>:
{
    80002428:	ff010113          	addi	sp,sp,-16
    8000242c:	00113423          	sd	ra,8(sp)
    80002430:	00813023          	sd	s0,0(sp)
    80002434:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002438:	fffff097          	auipc	ra,0xfffff
    8000243c:	084080e7          	jalr	132(ra) # 800014bc <_Z15thread_dispatchv>
}
    80002440:	00813083          	ld	ra,8(sp)
    80002444:	00013403          	ld	s0,0(sp)
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00008067          	ret

0000000080002450 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00813423          	sd	s0,8(sp)
    80002458:	01010413          	addi	s0,sp,16
}
    8000245c:	00000513          	li	a0,0
    80002460:	00813403          	ld	s0,8(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00113423          	sd	ra,8(sp)
    80002474:	00813023          	sd	s0,0(sp)
    80002478:	01010413          	addi	s0,sp,16
    8000247c:	00009797          	auipc	a5,0x9
    80002480:	4fc78793          	addi	a5,a5,1276 # 8000b978 <_ZTV6Thread+0x10>
    80002484:	00f53023          	sd	a5,0(a0)
    thread_create_wo_start(&this->myHandle, runWrapper, this);
    80002488:	00050613          	mv	a2,a0
    8000248c:	00000597          	auipc	a1,0x0
    80002490:	2d058593          	addi	a1,a1,720 # 8000275c <_ZN6Thread10runWrapperEPv>
    80002494:	00850513          	addi	a0,a0,8
    80002498:	fffff097          	auipc	ra,0xfffff
    8000249c:	f60080e7          	jalr	-160(ra) # 800013f8 <_Z22thread_create_wo_startPP3TCBPFvPvES2_>
}
    800024a0:	00813083          	ld	ra,8(sp)
    800024a4:	00013403          	ld	s0,0(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	00008067          	ret

00000000800024b0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    800024b0:	fe010113          	addi	sp,sp,-32
    800024b4:	00113c23          	sd	ra,24(sp)
    800024b8:	00813823          	sd	s0,16(sp)
    800024bc:	00913423          	sd	s1,8(sp)
    800024c0:	01213023          	sd	s2,0(sp)
    800024c4:	02010413          	addi	s0,sp,32
    800024c8:	00050493          	mv	s1,a0
    800024cc:	00058913          	mv	s2,a1
    800024d0:	00009797          	auipc	a5,0x9
    800024d4:	4d078793          	addi	a5,a5,1232 # 8000b9a0 <_ZTV9Semaphore+0x10>
    800024d8:	00f53023          	sd	a5,0(a0)
    printString("sem_open start\n");
    800024dc:	00007517          	auipc	a0,0x7
    800024e0:	f6c50513          	addi	a0,a0,-148 # 80009448 <CONSOLE_STATUS+0x438>
    800024e4:	00003097          	auipc	ra,0x3
    800024e8:	0c4080e7          	jalr	196(ra) # 800055a8 <_Z11printStringPKc>
    sem_open(&this->myHandle, init);
    800024ec:	00090593          	mv	a1,s2
    800024f0:	00848513          	addi	a0,s1,8
    800024f4:	fffff097          	auipc	ra,0xfffff
    800024f8:	00c080e7          	jalr	12(ra) # 80001500 <_Z8sem_openPP4_semj>
    printString("sem_open done\n");
    800024fc:	00007517          	auipc	a0,0x7
    80002500:	f5c50513          	addi	a0,a0,-164 # 80009458 <CONSOLE_STATUS+0x448>
    80002504:	00003097          	auipc	ra,0x3
    80002508:	0a4080e7          	jalr	164(ra) # 800055a8 <_Z11printStringPKc>
}
    8000250c:	01813083          	ld	ra,24(sp)
    80002510:	01013403          	ld	s0,16(sp)
    80002514:	00813483          	ld	s1,8(sp)
    80002518:	00013903          	ld	s2,0(sp)
    8000251c:	02010113          	addi	sp,sp,32
    80002520:	00008067          	ret

0000000080002524 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002524:	ff010113          	addi	sp,sp,-16
    80002528:	00113423          	sd	ra,8(sp)
    8000252c:	00813023          	sd	s0,0(sp)
    80002530:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80002534:	00853503          	ld	a0,8(a0)
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	028080e7          	jalr	40(ra) # 80001560 <_Z8sem_waitP4_sem>
}
    80002540:	00813083          	ld	ra,8(sp)
    80002544:	00013403          	ld	s0,0(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret

0000000080002550 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00113423          	sd	ra,8(sp)
    80002558:	00813023          	sd	s0,0(sp)
    8000255c:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80002560:	00853503          	ld	a0,8(a0)
    80002564:	fffff097          	auipc	ra,0xfffff
    80002568:	028080e7          	jalr	40(ra) # 8000158c <_Z10sem_signalP4_sem>
}
    8000256c:	00813083          	ld	ra,8(sp)
    80002570:	00013403          	ld	s0,0(sp)
    80002574:	01010113          	addi	sp,sp,16
    80002578:	00008067          	ret

000000008000257c <_ZN7Console4getcEv>:



char Console::getc() {
    8000257c:	ff010113          	addi	sp,sp,-16
    80002580:	00113423          	sd	ra,8(sp)
    80002584:	00813023          	sd	s0,0(sp)
    80002588:	01010413          	addi	s0,sp,16
    return ::getc();
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	02c080e7          	jalr	44(ra) # 800015b8 <_Z4getcv>
}
    80002594:	00813083          	ld	ra,8(sp)
    80002598:	00013403          	ld	s0,0(sp)
    8000259c:	01010113          	addi	sp,sp,16
    800025a0:	00008067          	ret

00000000800025a4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00113423          	sd	ra,8(sp)
    800025ac:	00813023          	sd	s0,0(sp)
    800025b0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	02c080e7          	jalr	44(ra) # 800015e0 <_Z4putcc>
}
    800025bc:	00813083          	ld	ra,8(sp)
    800025c0:	00013403          	ld	s0,0(sp)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <_Znwm>:
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800025cc:	ff010113          	addi	sp,sp,-16
    800025d0:	00113423          	sd	ra,8(sp)
    800025d4:	00813023          	sd	s0,0(sp)
    800025d8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	d90080e7          	jalr	-624(ra) # 8000136c <_Z9mem_allocm>
}
    800025e4:	00813083          	ld	ra,8(sp)
    800025e8:	00013403          	ld	s0,0(sp)
    800025ec:	01010113          	addi	sp,sp,16
    800025f0:	00008067          	ret

00000000800025f4 <_Znam>:

void *operator new[](size_t n)
{
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00113423          	sd	ra,8(sp)
    800025fc:	00813023          	sd	s0,0(sp)
    80002600:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	d68080e7          	jalr	-664(ra) # 8000136c <_Z9mem_allocm>
}
    8000260c:	00813083          	ld	ra,8(sp)
    80002610:	00013403          	ld	s0,0(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret

000000008000261c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    8000261c:	ff010113          	addi	sp,sp,-16
    80002620:	00113423          	sd	ra,8(sp)
    80002624:	00813023          	sd	s0,0(sp)
    80002628:	01010413          	addi	s0,sp,16
mem_free(p);
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	d78080e7          	jalr	-648(ra) # 800013a4 <_Z8mem_freePv>
}
    80002634:	00813083          	ld	ra,8(sp)
    80002638:	00013403          	ld	s0,0(sp)
    8000263c:	01010113          	addi	sp,sp,16
    80002640:	00008067          	ret

0000000080002644 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002644:	fe010113          	addi	sp,sp,-32
    80002648:	00113c23          	sd	ra,24(sp)
    8000264c:	00813823          	sd	s0,16(sp)
    80002650:	00913423          	sd	s1,8(sp)
    80002654:	02010413          	addi	s0,sp,32
    80002658:	00050493          	mv	s1,a0
}
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	d2c080e7          	jalr	-724(ra) # 80002388 <_ZN9SemaphoreD1Ev>
    80002664:	00048513          	mv	a0,s1
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	fb4080e7          	jalr	-76(ra) # 8000261c <_ZdlPv>
    80002670:	01813083          	ld	ra,24(sp)
    80002674:	01013403          	ld	s0,16(sp)
    80002678:	00813483          	ld	s1,8(sp)
    8000267c:	02010113          	addi	sp,sp,32
    80002680:	00008067          	ret

0000000080002684 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	01010413          	addi	s0,sp,16
mem_free(p);
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	d10080e7          	jalr	-752(ra) # 800013a4 <_Z8mem_freePv>
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN6ThreadD1Ev>:
Thread::~Thread()
    800026ac:	fe010113          	addi	sp,sp,-32
    800026b0:	00113c23          	sd	ra,24(sp)
    800026b4:	00813823          	sd	s0,16(sp)
    800026b8:	00913423          	sd	s1,8(sp)
    800026bc:	02010413          	addi	s0,sp,32
    800026c0:	00009797          	auipc	a5,0x9
    800026c4:	2b878793          	addi	a5,a5,696 # 8000b978 <_ZTV6Thread+0x10>
    800026c8:	00f53023          	sd	a5,0(a0)
    delete this->myHandle;
    800026cc:	00853483          	ld	s1,8(a0)
    800026d0:	02048063          	beqz	s1,800026f0 <_ZN6ThreadD1Ev+0x44>
    ~TCB() { delete[] stack; }
    800026d4:	0084b503          	ld	a0,8(s1)
    800026d8:	00050663          	beqz	a0,800026e4 <_ZN6ThreadD1Ev+0x38>
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	fa8080e7          	jalr	-88(ra) # 80002684 <_ZdaPv>
        MemoryAllocator::mem_free(ptr);
    800026e4:	00048513          	mv	a0,s1
    800026e8:	00000097          	auipc	ra,0x0
    800026ec:	63c080e7          	jalr	1596(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800026f0:	01813083          	ld	ra,24(sp)
    800026f4:	01013403          	ld	s0,16(sp)
    800026f8:	00813483          	ld	s1,8(sp)
    800026fc:	02010113          	addi	sp,sp,32
    80002700:	00008067          	ret

0000000080002704 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80002704:	fe010113          	addi	sp,sp,-32
    80002708:	00113c23          	sd	ra,24(sp)
    8000270c:	00813823          	sd	s0,16(sp)
    80002710:	00913423          	sd	s1,8(sp)
    80002714:	02010413          	addi	s0,sp,32
    80002718:	00050493          	mv	s1,a0
}
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	f90080e7          	jalr	-112(ra) # 800026ac <_ZN6ThreadD1Ev>
    80002724:	00048513          	mv	a0,s1
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	ef4080e7          	jalr	-268(ra) # 8000261c <_ZdlPv>
    80002730:	01813083          	ld	ra,24(sp)
    80002734:	01013403          	ld	s0,16(sp)
    80002738:	00813483          	ld	s1,8(sp)
    8000273c:	02010113          	addi	sp,sp,32
    80002740:	00008067          	ret

0000000080002744 <_ZN6Thread3runEv>:
    static void dispatch ();

    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002744:	ff010113          	addi	sp,sp,-16
    80002748:	00813423          	sd	s0,8(sp)
    8000274c:	01010413          	addi	s0,sp,16
    80002750:	00813403          	ld	s0,8(sp)
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret

000000008000275c <_ZN6Thread10runWrapperEPv>:
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
    static void runWrapper(void* arg) {
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00113423          	sd	ra,8(sp)
    80002764:	00813023          	sd	s0,0(sp)
    80002768:	01010413          	addi	s0,sp,16
        Thread* t = (Thread*)arg;
        t->run();
    8000276c:	00053783          	ld	a5,0(a0)
    80002770:	0107b783          	ld	a5,16(a5)
    80002774:	000780e7          	jalr	a5
    }
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <_ZN5Riscv10popSppSpieEv>:
#include "../h/print.hpp"
#include "../h/Semaphore.hpp"



void Riscv::popSppSpie() {
    80002788:	ff010113          	addi	sp,sp,-16
    8000278c:	00813423          	sd	s0,8(sp)
    80002790:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002794:	10000793          	li	a5,256
    80002798:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    8000279c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800027a0:	10200073          	sret
}
    800027a4:	00813403          	ld	s0,8(sp)
    800027a8:	01010113          	addi	sp,sp,16
    800027ac:	00008067          	ret

00000000800027b0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800027b0:	fb010113          	addi	sp,sp,-80
    800027b4:	04113423          	sd	ra,72(sp)
    800027b8:	04813023          	sd	s0,64(sp)
    800027bc:	02913c23          	sd	s1,56(sp)
    800027c0:	03213823          	sd	s2,48(sp)
    800027c4:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800027c8:	142027f3          	csrr	a5,scause
    800027cc:	fcf43023          	sd	a5,-64(s0)
    return scause;
    800027d0:	fc043483          	ld	s1,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800027d4:	ff848713          	addi	a4,s1,-8
    800027d8:	00100793          	li	a5,1
    800027dc:	06e7fa63          	bgeu	a5,a4,80002850 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>


        w_sstatus(sstatus);
        w_sepc(sepc);
    }
else if(scause == 0x8000000000000001UL){
    800027e0:	fff00793          	li	a5,-1
    800027e4:	03f79793          	slli	a5,a5,0x3f
    800027e8:	00178793          	addi	a5,a5,1
    800027ec:	2af48263          	beq	s1,a5,80002a90 <_ZN5Riscv20handleSupervisorTrapEv+0x2e0>
mc_sip(SIP_SSIP);
} else if(scause == 0x8000000000000009UL){
    800027f0:	fff00793          	li	a5,-1
    800027f4:	03f79793          	slli	a5,a5,0x3f
    800027f8:	00978793          	addi	a5,a5,9
    800027fc:	2af48063          	beq	s1,a5,80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x2ec>
console_handler();
}
    else
    {
        printStr("Error:");
    80002800:	00007517          	auipc	a0,0x7
    80002804:	c6850513          	addi	a0,a0,-920 # 80009468 <CONSOLE_STATUS+0x458>
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	79c080e7          	jalr	1948(ra) # 80002fa4 <_Z8printStrPKc>
        printInteger(scause);
    80002810:	00048513          	mv	a0,s1
    80002814:	00001097          	auipc	ra,0x1
    80002818:	800080e7          	jalr	-2048(ra) # 80003014 <_Z12printIntegerm>
        uint64 fault_address;
        __asm__ volatile("csrr %0, sepc" : "=r"(fault_address));
    8000281c:	141024f3          	csrr	s1,sepc

        printStr("Prekid na adresi (sepc): 0x");
    80002820:	00007517          	auipc	a0,0x7
    80002824:	c5050513          	addi	a0,a0,-944 # 80009470 <CONSOLE_STATUS+0x460>
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	77c080e7          	jalr	1916(ra) # 80002fa4 <_Z8printStrPKc>
        printInteger(fault_address); // Odštampaj je kao hex
    80002830:	00048513          	mv	a0,s1
    80002834:	00000097          	auipc	ra,0x0
    80002838:	7e0080e7          	jalr	2016(ra) # 80003014 <_Z12printIntegerm>
        printStr("\n");
    8000283c:	00007517          	auipc	a0,0x7
    80002840:	a6c50513          	addi	a0,a0,-1428 # 800092a8 <CONSOLE_STATUS+0x298>
    80002844:	00000097          	auipc	ra,0x0
    80002848:	760080e7          	jalr	1888(ra) # 80002fa4 <_Z8printStrPKc>
        while(1);
    8000284c:	0000006f          	j	8000284c <_ZN5Riscv20handleSupervisorTrapEv+0x9c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002850:	141027f3          	csrr	a5,sepc
    80002854:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002858:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    8000285c:	00478793          	addi	a5,a5,4
    80002860:	faf43823          	sd	a5,-80(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002864:	100027f3          	csrr	a5,sstatus
    80002868:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    8000286c:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002870:	faf43c23          	sd	a5,-72(s0)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}
inline uint64 Riscv::r_a0() {
    uint64 volatile a0;
    asm volatile("mv %0,a0":"=r"(a0));
    80002874:	00050793          	mv	a5,a0
    80002878:	fcf43423          	sd	a5,-56(s0)
    return a0;
    8000287c:	fc843783          	ld	a5,-56(s0)
        switch (broj) {
    80002880:	04200713          	li	a4,66
    80002884:	12f76e63          	bltu	a4,a5,800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
    80002888:	00279793          	slli	a5,a5,0x2
    8000288c:	00007717          	auipc	a4,0x7
    80002890:	c0070713          	addi	a4,a4,-1024 # 8000948c <CONSOLE_STATUS+0x47c>
    80002894:	00e787b3          	add	a5,a5,a4
    80002898:	0007a783          	lw	a5,0(a5)
    8000289c:	00e787b3          	add	a5,a5,a4
    800028a0:	00078067          	jr	a5
                __asm__ volatile("mv %0,a1":"=r"(size));
    800028a4:	00058513          	mv	a0,a1
                ptr = MemoryAllocator::mem_alloc(size);
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	310080e7          	jalr	784(ra) # 80002bb8 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0" : : "r"(ptr));
    800028b0:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800028b4:	04542823          	sw	t0,80(s0)
                break;
    800028b8:	1080006f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile("mv %0,a1":"=r"(freePtr));
    800028bc:	00058513          	mv	a0,a1
                returnVal = MemoryAllocator::mem_free(freePtr);
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	464080e7          	jalr	1124(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv t0,%0":"=r"(returnVal));
    800028c8:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    800028cc:	04542823          	sw	t0,80(s0)
                break;
    800028d0:	0f00006f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile("mv %0, a1" : "=r"(tcb));
    800028d4:	00058513          	mv	a0,a1
                TCB::thread_start(tcb);
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	a88080e7          	jalr	-1400(ra) # 80002360 <_ZN3TCB12thread_startEPS_>
                break;
    800028e0:	0e00006f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                TCB *main = TCB::createMainThread();
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	9a0080e7          	jalr	-1632(ra) # 80002284 <_ZN3TCB16createMainThreadEv>
                TCB::running = main;
    800028ec:	00009797          	auipc	a5,0x9
    800028f0:	28c7b783          	ld	a5,652(a5) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x20>
    800028f4:	00a7b023          	sd	a0,0(a5)
                __asm__ volatile ("li t0, 0");
    800028f8:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    800028fc:	04542823          	sw	t0,80(s0)
                break;
    80002900:	0c00006f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    80002904:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002908:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    8000290c:	00068593          	mv	a1,a3
                *tcb = TCB::createThread(body, arg);
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	7b4080e7          	jalr	1972(ra) # 800020c4 <_ZN3TCB12createThreadEPFvPvES0_>
    80002918:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    8000291c:	00050863          	beqz	a0,8000292c <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    __asm__ volatile ("li t0, 0");
    80002920:	00000293          	li	t0,0
                    __asm__ volatile ("sd t0, 80(x8)");
    80002924:	04543823          	sd	t0,80(s0)
    80002928:	0980006f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                    __asm__ volatile ("li t0, -1");
    8000292c:	fff00293          	li	t0,-1
                    __asm__ volatile ("sd t0, 80(x8)");
    80002930:	04543823          	sd	t0,80(s0)
    80002934:	08c0006f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                TCB::running->setFinished(true);
    80002938:	00009797          	auipc	a5,0x9
    8000293c:	2407b783          	ld	a5,576(a5) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002940:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002944:	00100713          	li	a4,1
    80002948:	02e780a3          	sb	a4,33(a5)
                TCB::dispatch();
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	994080e7          	jalr	-1644(ra) # 800022e0 <_ZN3TCB8dispatchEv>
                __asm__ volatile("li t0,0");
    80002954:	00000293          	li	t0,0
                __asm__ volatile("sw t0,80(x8)");
    80002958:	04542823          	sw	t0,80(s0)
                break;
    8000295c:	0640006f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                TCB::dispatch();
    80002960:	00000097          	auipc	ra,0x0
    80002964:	980080e7          	jalr	-1664(ra) # 800022e0 <_ZN3TCB8dispatchEv>
                break;
    80002968:	0580006f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile ("mv %0, a1" : "=r" (TcbNoStart));
    8000296c:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (bodyNoStart));
    80002970:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (argNoStart));
    80002974:	00068593          	mv	a1,a3
                *TcbNoStart = TCB::createThreadNoStart(bodyNoStart, argNoStart);
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	824080e7          	jalr	-2012(ra) # 8000219c <_ZN3TCB19createThreadNoStartEPFvPvES0_>
    80002980:	00a4b023          	sd	a0,0(s1)
                if(*TcbNoStart != nullptr) {
    80002984:	06050263          	beqz	a0,800029e8 <_ZN5Riscv20handleSupervisorTrapEv+0x238>
                    __asm__ volatile ("li t0, 0");
    80002988:	00000293          	li	t0,0
                    __asm__ volatile ("sd t0, 80(x8)");
    8000298c:	04543823          	sd	t0,80(s0)
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002990:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002994:	00060913          	mv	s2,a2
    int wait();
    int signal();
    int close();

    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    80002998:	01800513          	li	a0,24
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	21c080e7          	jalr	540(ra) # 80002bb8 <_ZN15MemoryAllocator9mem_allocEm>
    MySemaphore(unsigned init = 1) : value((int)init), closed(false) {}
    800029a4:	01252023          	sw	s2,0(a0)
    800029a8:	00050223          	sb	zero,4(a0)
    List() : head(0), tail(0) {}
    800029ac:	00053423          	sd	zero,8(a0)
    800029b0:	00053823          	sd	zero,16(a0)
                *semHandle = MySemaphore::createSemaphore(init);
    800029b4:	00a4b023          	sd	a0,0(s1)
                if (*semHandle != nullptr) {
    800029b8:	02050e63          	beqz	a0,800029f4 <_ZN5Riscv20handleSupervisorTrapEv+0x244>
                    __asm__ volatile ("li a0, 0");
    800029bc:	00000513          	li	a0,0
        w_sstatus(sstatus);
    800029c0:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800029c4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800029c8:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800029cc:	14179073          	csrw	sepc,a5
    }
}
    800029d0:	04813083          	ld	ra,72(sp)
    800029d4:	04013403          	ld	s0,64(sp)
    800029d8:	03813483          	ld	s1,56(sp)
    800029dc:	03013903          	ld	s2,48(sp)
    800029e0:	05010113          	addi	sp,sp,80
    800029e4:	00008067          	ret
                    __asm__ volatile ("li t0, -1");
    800029e8:	fff00293          	li	t0,-1
                    __asm__ volatile ("sd t0, 80(x8)");
    800029ec:	04543823          	sd	t0,80(s0)
    800029f0:	fa1ff06f          	j	80002990 <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
                    __asm__ volatile ("li a0, -1");
    800029f4:	fff00513          	li	a0,-1
    800029f8:	fc9ff06f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile ("mv %0, a1" : "=r"(sem));
    800029fc:	00058513          	mv	a0,a1
                if (sem != nullptr) {
    80002a00:	00050c63          	beqz	a0,80002a18 <_ZN5Riscv20handleSupervisorTrapEv+0x268>
                    returnVal = sem->close();
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	140080e7          	jalr	320(ra) # 80001b44 <_ZN11MySemaphore5closeEv>
    80002a0c:	00050793          	mv	a5,a0
                __asm__ volatile ("mv a0, %0" : : "r"(returnVal));
    80002a10:	00078513          	mv	a0,a5
                break;
    80002a14:	fadff06f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                    returnVal = -1;
    80002a18:	fff00793          	li	a5,-1
    80002a1c:	ff5ff06f          	j	80002a10 <_ZN5Riscv20handleSupervisorTrapEv+0x260>
                __asm__ volatile ("mv %0, a1" : "=r"(sem));
    80002a20:	00058513          	mv	a0,a1
                if (sem != nullptr) {
    80002a24:	00050c63          	beqz	a0,80002a3c <_ZN5Riscv20handleSupervisorTrapEv+0x28c>
                    returnVal = sem->wait();
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	fe4080e7          	jalr	-28(ra) # 80001a0c <_ZN11MySemaphore4waitEv>
    80002a30:	00050793          	mv	a5,a0
                __asm__ volatile ("mv a0, %0" : : "r"(returnVal));
    80002a34:	00078513          	mv	a0,a5
                break;
    80002a38:	f89ff06f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                    returnVal = -1;
    80002a3c:	fff00793          	li	a5,-1
    80002a40:	ff5ff06f          	j	80002a34 <_ZN5Riscv20handleSupervisorTrapEv+0x284>
                __asm__ volatile ("mv %0, a1" : "=r"(sem));
    80002a44:	00058513          	mv	a0,a1
                if (sem != nullptr) {
    80002a48:	00050c63          	beqz	a0,80002a60 <_ZN5Riscv20handleSupervisorTrapEv+0x2b0>
                    returnVal = sem->signal();
    80002a4c:	fffff097          	auipc	ra,0xfffff
    80002a50:	070080e7          	jalr	112(ra) # 80001abc <_ZN11MySemaphore6signalEv>
    80002a54:	00050793          	mv	a5,a0
                __asm__ volatile ("mv a0, %0" : : "r"(returnVal));
    80002a58:	00078513          	mv	a0,a5
                break;
    80002a5c:	f65ff06f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                    returnVal = -1;
    80002a60:	fff00793          	li	a5,-1
    80002a64:	ff5ff06f          	j	80002a58 <_ZN5Riscv20handleSupervisorTrapEv+0x2a8>
                returnVal = __getc();
    80002a68:	00006097          	auipc	ra,0x6
    80002a6c:	e80080e7          	jalr	-384(ra) # 800088e8 <__getc>
                __asm__ volatile ("mv t0, %0" : : "r"(returnVal));
    80002a70:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002a74:	04542823          	sw	t0,80(s0)
                break;
    80002a78:	f49ff06f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile ("mv %0, a1" : "=r" (c));
    80002a7c:	00058513          	mv	a0,a1
                __putc(c);
    80002a80:	0ff57513          	andi	a0,a0,255
    80002a84:	00006097          	auipc	ra,0x6
    80002a88:	e28080e7          	jalr	-472(ra) # 800088ac <__putc>
                break;
    80002a8c:	f35ff06f          	j	800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002a90:	00200793          	li	a5,2
    80002a94:	1447b073          	csrc	sip,a5
}
    80002a98:	f39ff06f          	j	800029d0 <_ZN5Riscv20handleSupervisorTrapEv+0x220>
console_handler();
    80002a9c:	00006097          	auipc	ra,0x6
    80002aa0:	e84080e7          	jalr	-380(ra) # 80008920 <console_handler>
    80002aa4:	f2dff06f          	j	800029d0 <_ZN5Riscv20handleSupervisorTrapEv+0x220>

0000000080002aa8 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    80002aa8:	fe010113          	addi	sp,sp,-32
    80002aac:	00113c23          	sd	ra,24(sp)
    80002ab0:	00813823          	sd	s0,16(sp)
    80002ab4:	00913423          	sd	s1,8(sp)
    80002ab8:	02010413          	addi	s0,sp,32
    uint64 irq =plic_claim();
    80002abc:	00004097          	auipc	ra,0x4
    80002ac0:	588080e7          	jalr	1416(ra) # 80007044 <plic_claim>
    80002ac4:	00050493          	mv	s1,a0
    if(irq==0x0a) {
    80002ac8:	00a00793          	li	a5,10
    80002acc:	02f50263          	beq	a0,a5,80002af0 <_ZN5Riscv22handleConsoleInterruptEv+0x48>
        console_handler();
    }
    plic_complete(irq);
    80002ad0:	00048513          	mv	a0,s1
    80002ad4:	00004097          	auipc	ra,0x4
    80002ad8:	5a8080e7          	jalr	1448(ra) # 8000707c <plic_complete>
}
    80002adc:	01813083          	ld	ra,24(sp)
    80002ae0:	01013403          	ld	s0,16(sp)
    80002ae4:	00813483          	ld	s1,8(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret
        console_handler();
    80002af0:	00006097          	auipc	ra,0x6
    80002af4:	e30080e7          	jalr	-464(ra) # 80008920 <console_handler>
    80002af8:	fd9ff06f          	j	80002ad0 <_ZN5Riscv22handleConsoleInterruptEv+0x28>

0000000080002afc <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    80002afc:	ff010113          	addi	sp,sp,-16
    80002b00:	00813423          	sd	s0,8(sp)
    80002b04:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002b08:	00200793          	li	a5,2
    80002b0c:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
}
    80002b10:	00813403          	ld	s0,8(sp)
    80002b14:	01010113          	addi	sp,sp,16
    80002b18:	00008067          	ret

0000000080002b1c <_ZN15MemoryAllocatorD1Ev>:

MemoryAllocator::MemoryAllocator()
{
    initMem();
}
MemoryAllocator::~MemoryAllocator()
    80002b1c:	ff010113          	addi	sp,sp,-16
    80002b20:	00813423          	sd	s0,8(sp)
    80002b24:	01010413          	addi	s0,sp,16
{
}
    80002b28:	00813403          	ld	s0,8(sp)
    80002b2c:	01010113          	addi	sp,sp,16
    80002b30:	00008067          	ret

0000000080002b34 <_ZN15MemoryAllocator7initMemEv>:
void MemoryAllocator::initMem() {
    80002b34:	ff010113          	addi	sp,sp,-16
    80002b38:	00813423          	sd	s0,8(sp)
    80002b3c:	01010413          	addi	s0,sp,16

        free = (Block*)HEAP_START_ADDR;
    80002b40:	00009617          	auipc	a2,0x9
    80002b44:	02063603          	ld	a2,32(a2) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002b48:	00063783          	ld	a5,0(a2)
    80002b4c:	00009717          	auipc	a4,0x9
    80002b50:	09c70713          	addi	a4,a4,156 # 8000bbe8 <_ZN15MemoryAllocator4freeE>
    80002b54:	00f73023          	sd	a5,0(a4)

        free->next = nullptr;
    80002b58:	0007b023          	sd	zero,0(a5)
        free->prev = nullptr;
    80002b5c:	00073683          	ld	a3,0(a4)
    80002b60:	0006b423          	sd	zero,8(a3)

        free->size =
                (size_t)((char*)HEAP_END_ADDR
    80002b64:	00009797          	auipc	a5,0x9
    80002b68:	01c7b783          	ld	a5,28(a5) # 8000bb80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b6c:	0007b783          	ld	a5,0(a5)
                         - (char*)HEAP_START_ADDR
    80002b70:	00063603          	ld	a2,0(a2)
    80002b74:	40c787b3          	sub	a5,a5,a2
                         - sizeof(Block));
    80002b78:	fe878793          	addi	a5,a5,-24
        free->size =
    80002b7c:	00f6b823          	sd	a5,16(a3)

        used = nullptr;
    80002b80:	00073423          	sd	zero,8(a4)
    }
    80002b84:	00813403          	ld	s0,8(sp)
    80002b88:	01010113          	addi	sp,sp,16
    80002b8c:	00008067          	ret

0000000080002b90 <_ZN15MemoryAllocatorC1Ev>:
MemoryAllocator::MemoryAllocator()
    80002b90:	ff010113          	addi	sp,sp,-16
    80002b94:	00113423          	sd	ra,8(sp)
    80002b98:	00813023          	sd	s0,0(sp)
    80002b9c:	01010413          	addi	s0,sp,16
    initMem();
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	f94080e7          	jalr	-108(ra) # 80002b34 <_ZN15MemoryAllocator7initMemEv>
}
    80002ba8:	00813083          	ld	ra,8(sp)
    80002bac:	00013403          	ld	s0,0(sp)
    80002bb0:	01010113          	addi	sp,sp,16
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size)
{
    80002bb8:	ff010113          	addi	sp,sp,-16
    80002bbc:	00813423          	sd	s0,8(sp)
    80002bc0:	01010413          	addi	s0,sp,16
    if(size == 0) return nullptr;
    80002bc4:	0e050463          	beqz	a0,80002cac <_ZN15MemoryAllocator9mem_allocEm+0xf4>

    size_t newSize =
            ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE)
    80002bc8:	03f50513          	addi	a0,a0,63
    size_t newSize =
    80002bcc:	fc057793          	andi	a5,a0,-64
            * MEM_BLOCK_SIZE;

    Block* prev = nullptr;
    Block* blk = free;
    80002bd0:	00009517          	auipc	a0,0x9
    80002bd4:	01853503          	ld	a0,24(a0) # 8000bbe8 <_ZN15MemoryAllocator4freeE>
    Block* prev = nullptr;
    80002bd8:	00000693          	li	a3,0

    for(; blk != nullptr; prev = blk, blk = blk->next)
    80002bdc:	00050c63          	beqz	a0,80002bf4 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    {
        if(blk->size >= newSize)
    80002be0:	01053703          	ld	a4,16(a0)
    80002be4:	00f77863          	bgeu	a4,a5,80002bf4 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    for(; blk != nullptr; prev = blk, blk = blk->next)
    80002be8:	00050693          	mv	a3,a0
    80002bec:	00053503          	ld	a0,0(a0)
    80002bf0:	fedff06f          	j	80002bdc <_ZN15MemoryAllocator9mem_allocEm+0x24>
            break;
    }

    if(blk == nullptr)
    80002bf4:	06050a63          	beqz	a0,80002c68 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
        return nullptr;

    size_t remainingSize = blk->size - newSize;
    80002bf8:	01053703          	ld	a4,16(a0)
    80002bfc:	40f70733          	sub	a4,a4,a5

    if(remainingSize >= sizeof(Block) + MEM_BLOCK_SIZE)
    80002c00:	05700613          	li	a2,87
    80002c04:	06e67e63          	bgeu	a2,a4,80002c80 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    {
        Block* newBlk =
                (Block*)((char*)blk + sizeof(Block) + newSize);
    80002c08:	01878613          	addi	a2,a5,24
        Block* newBlk =
    80002c0c:	00c50633          	add	a2,a0,a2

        newBlk->size = remainingSize - sizeof(Block);
    80002c10:	fe870713          	addi	a4,a4,-24
    80002c14:	00e63823          	sd	a4,16(a2)
        newBlk->next = blk->next;
    80002c18:	00053703          	ld	a4,0(a0)
    80002c1c:	00e63023          	sd	a4,0(a2)
        newBlk->prev = prev;
    80002c20:	00d63423          	sd	a3,8(a2)

        if(prev)
    80002c24:	04068863          	beqz	a3,80002c74 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            prev->next = newBlk;
    80002c28:	00c6b023          	sd	a2,0(a3)
        else
            free = newBlk;

        if(newBlk->next)
    80002c2c:	00063703          	ld	a4,0(a2)
    80002c30:	00070463          	beqz	a4,80002c38 <_ZN15MemoryAllocator9mem_allocEm+0x80>
            newBlk->next->prev = newBlk;
    80002c34:	00c73423          	sd	a2,8(a4)

        blk->size = newSize;
    80002c38:	00f53823          	sd	a5,16(a0)

        if(blk->next)
            blk->next->prev = prev;
    }

    blk->prev = nullptr;
    80002c3c:	00053423          	sd	zero,8(a0)
    blk->next = used;
    80002c40:	00009797          	auipc	a5,0x9
    80002c44:	fa878793          	addi	a5,a5,-88 # 8000bbe8 <_ZN15MemoryAllocator4freeE>
    80002c48:	0087b703          	ld	a4,8(a5)
    80002c4c:	00e53023          	sd	a4,0(a0)

    if(used)
    80002c50:	0087b783          	ld	a5,8(a5)
    80002c54:	00078463          	beqz	a5,80002c5c <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        used->prev = blk;
    80002c58:	00a7b423          	sd	a0,8(a5)

    used = blk;
    80002c5c:	00009797          	auipc	a5,0x9
    80002c60:	f8a7ba23          	sd	a0,-108(a5) # 8000bbf0 <_ZN15MemoryAllocator4usedE>

    return (char*)blk + sizeof(Block);
    80002c64:	01850513          	addi	a0,a0,24
}
    80002c68:	00813403          	ld	s0,8(sp)
    80002c6c:	01010113          	addi	sp,sp,16
    80002c70:	00008067          	ret
            free = newBlk;
    80002c74:	00009717          	auipc	a4,0x9
    80002c78:	f6c73a23          	sd	a2,-140(a4) # 8000bbe8 <_ZN15MemoryAllocator4freeE>
    80002c7c:	fb1ff06f          	j	80002c2c <_ZN15MemoryAllocator9mem_allocEm+0x74>
        if(prev)
    80002c80:	00068e63          	beqz	a3,80002c9c <_ZN15MemoryAllocator9mem_allocEm+0xe4>
            prev->next = blk->next;
    80002c84:	00053783          	ld	a5,0(a0)
    80002c88:	00f6b023          	sd	a5,0(a3)
        if(blk->next)
    80002c8c:	00053783          	ld	a5,0(a0)
    80002c90:	fa0786e3          	beqz	a5,80002c3c <_ZN15MemoryAllocator9mem_allocEm+0x84>
            blk->next->prev = prev;
    80002c94:	00d7b423          	sd	a3,8(a5)
    80002c98:	fa5ff06f          	j	80002c3c <_ZN15MemoryAllocator9mem_allocEm+0x84>
            free = blk->next;
    80002c9c:	00053783          	ld	a5,0(a0)
    80002ca0:	00009717          	auipc	a4,0x9
    80002ca4:	f4f73423          	sd	a5,-184(a4) # 8000bbe8 <_ZN15MemoryAllocator4freeE>
    80002ca8:	fe5ff06f          	j	80002c8c <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if(size == 0) return nullptr;
    80002cac:	00000513          	li	a0,0
    80002cb0:	fb9ff06f          	j	80002c68 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

0000000080002cb4 <_ZN15MemoryAllocator9tryToJoinEP5Block>:
int MemoryAllocator::tryToJoin(Block* curr)
{
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00813423          	sd	s0,8(sp)
    80002cbc:	01010413          	addi	s0,sp,16
    if(curr == nullptr || curr->next == nullptr)
    80002cc0:	04050663          	beqz	a0,80002d0c <_ZN15MemoryAllocator9tryToJoinEP5Block+0x58>
    80002cc4:	00053703          	ld	a4,0(a0)
    80002cc8:	04070663          	beqz	a4,80002d14 <_ZN15MemoryAllocator9tryToJoinEP5Block+0x60>
        return -1;

    if((char*)curr + sizeof(Block) + curr->size == (char*)curr->next)
    80002ccc:	01053783          	ld	a5,16(a0)
    80002cd0:	01878693          	addi	a3,a5,24
    80002cd4:	00d506b3          	add	a3,a0,a3
    80002cd8:	04d71263          	bne	a4,a3,80002d1c <_ZN15MemoryAllocator9tryToJoinEP5Block+0x68>
    {
        Block* nextBlk = curr->next;

        curr->size += sizeof(Block) + nextBlk->size;
    80002cdc:	01073683          	ld	a3,16(a4)
    80002ce0:	00d787b3          	add	a5,a5,a3
    80002ce4:	01878793          	addi	a5,a5,24
    80002ce8:	00f53823          	sd	a5,16(a0)
        curr->next = nextBlk->next;
    80002cec:	00073783          	ld	a5,0(a4)
    80002cf0:	00f53023          	sd	a5,0(a0)

        if(curr->next)
    80002cf4:	00078463          	beqz	a5,80002cfc <_ZN15MemoryAllocator9tryToJoinEP5Block+0x48>
            curr->next->prev = curr;
    80002cf8:	00a7b423          	sd	a0,8(a5)

        return 0;
    80002cfc:	00000513          	li	a0,0
    }
    return -1;
}
    80002d00:	00813403          	ld	s0,8(sp)
    80002d04:	01010113          	addi	sp,sp,16
    80002d08:	00008067          	ret
        return -1;
    80002d0c:	fff00513          	li	a0,-1
    80002d10:	ff1ff06f          	j	80002d00 <_ZN15MemoryAllocator9tryToJoinEP5Block+0x4c>
    80002d14:	fff00513          	li	a0,-1
    80002d18:	fe9ff06f          	j	80002d00 <_ZN15MemoryAllocator9tryToJoinEP5Block+0x4c>
    return -1;
    80002d1c:	fff00513          	li	a0,-1
    80002d20:	fe1ff06f          	j	80002d00 <_ZN15MemoryAllocator9tryToJoinEP5Block+0x4c>

0000000080002d24 <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free(void* ptr)
{
    if(ptr == nullptr)
    80002d24:	0c050263          	beqz	a0,80002de8 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
{
    80002d28:	fe010113          	addi	sp,sp,-32
    80002d2c:	00113c23          	sd	ra,24(sp)
    80002d30:	00813823          	sd	s0,16(sp)
    80002d34:	00913423          	sd	s1,8(sp)
    80002d38:	02010413          	addi	s0,sp,32
    80002d3c:	00050713          	mv	a4,a0
        return -1;

    Block* curr = (Block*)((char*)ptr - sizeof(Block));
    80002d40:	fe850513          	addi	a0,a0,-24

    if(curr->prev)
    80002d44:	ff073783          	ld	a5,-16(a4)
    80002d48:	02078e63          	beqz	a5,80002d84 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
        curr->prev->next = curr->next;
    80002d4c:	fe873683          	ld	a3,-24(a4)
    80002d50:	00d7b023          	sd	a3,0(a5)
    else
        used = curr->next;

    if(curr->next)
    80002d54:	fe873783          	ld	a5,-24(a4)
    80002d58:	00078663          	beqz	a5,80002d64 <_ZN15MemoryAllocator8mem_freeEPv+0x40>
        curr->next->prev = curr->prev;
    80002d5c:	ff073683          	ld	a3,-16(a4)
    80002d60:	00d7b423          	sd	a3,8(a5)
    Block* prev = nullptr;
    Block* iter = free;
    80002d64:	00009797          	auipc	a5,0x9
    80002d68:	e847b783          	ld	a5,-380(a5) # 8000bbe8 <_ZN15MemoryAllocator4freeE>
    Block* prev = nullptr;
    80002d6c:	00000493          	li	s1,0

    while(iter && (char*)iter < (char*)curr)
    80002d70:	02078263          	beqz	a5,80002d94 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80002d74:	02a7f063          	bgeu	a5,a0,80002d94 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    {
        prev = iter;
    80002d78:	00078493          	mv	s1,a5
        iter = iter->next;
    80002d7c:	0007b783          	ld	a5,0(a5)
    while(iter && (char*)iter < (char*)curr)
    80002d80:	ff1ff06f          	j	80002d70 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
        used = curr->next;
    80002d84:	fe873783          	ld	a5,-24(a4)
    80002d88:	00009697          	auipc	a3,0x9
    80002d8c:	e6f6b423          	sd	a5,-408(a3) # 8000bbf0 <_ZN15MemoryAllocator4usedE>
    80002d90:	fc5ff06f          	j	80002d54 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
    }

    curr->prev = prev;
    80002d94:	fe973823          	sd	s1,-16(a4)
    curr->next = iter;
    80002d98:	fef73423          	sd	a5,-24(a4)

    if(iter)
    80002d9c:	00078463          	beqz	a5,80002da4 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        iter->prev = curr;
    80002da0:	00a7b423          	sd	a0,8(a5)

    if(prev)
    80002da4:	02048c63          	beqz	s1,80002ddc <_ZN15MemoryAllocator8mem_freeEPv+0xb8>
        prev->next = curr;
    80002da8:	00a4b023          	sd	a0,0(s1)
    else
        free = curr;

    tryToJoin(curr);
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	f08080e7          	jalr	-248(ra) # 80002cb4 <_ZN15MemoryAllocator9tryToJoinEP5Block>

    if(prev)
    80002db4:	02048e63          	beqz	s1,80002df0 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
        tryToJoin(prev);
    80002db8:	00048513          	mv	a0,s1
    80002dbc:	00000097          	auipc	ra,0x0
    80002dc0:	ef8080e7          	jalr	-264(ra) # 80002cb4 <_ZN15MemoryAllocator9tryToJoinEP5Block>
    return 0;
    80002dc4:	00000513          	li	a0,0
    80002dc8:	01813083          	ld	ra,24(sp)
    80002dcc:	01013403          	ld	s0,16(sp)
    80002dd0:	00813483          	ld	s1,8(sp)
    80002dd4:	02010113          	addi	sp,sp,32
    80002dd8:	00008067          	ret
        free = curr;
    80002ddc:	00009797          	auipc	a5,0x9
    80002de0:	e0a7b623          	sd	a0,-500(a5) # 8000bbe8 <_ZN15MemoryAllocator4freeE>
    80002de4:	fc9ff06f          	j	80002dac <_ZN15MemoryAllocator8mem_freeEPv+0x88>
        return -1;
    80002de8:	fff00513          	li	a0,-1
    80002dec:	00008067          	ret
    return 0;
    80002df0:	00000513          	li	a0,0
    80002df4:	fd5ff06f          	j	80002dc8 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>

0000000080002df8 <_Z41__static_initialization_and_destruction_0ii>:
    }


void Scheduler::putFirst(TCB *ccb){
    readyThreadQueue.addFirst(ccb);
    80002df8:	ff010113          	addi	sp,sp,-16
    80002dfc:	00813423          	sd	s0,8(sp)
    80002e00:	01010413          	addi	s0,sp,16
    80002e04:	00100793          	li	a5,1
    80002e08:	00f50863          	beq	a0,a5,80002e18 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002e0c:	00813403          	ld	s0,8(sp)
    80002e10:	01010113          	addi	sp,sp,16
    80002e14:	00008067          	ret
    80002e18:	000107b7          	lui	a5,0x10
    80002e1c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002e20:	fef596e3          	bne	a1,a5,80002e0c <_Z41__static_initialization_and_destruction_0ii+0x14>
    80002e24:	00009797          	auipc	a5,0x9
    80002e28:	dd478793          	addi	a5,a5,-556 # 8000bbf8 <_ZN9Scheduler16readyThreadQueueE>
    80002e2c:	0007b023          	sd	zero,0(a5)
    80002e30:	0007b423          	sd	zero,8(a5)
    80002e34:	fd9ff06f          	j	80002e0c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002e38 <_ZN9Scheduler3getEv>:
{
    80002e38:	fe010113          	addi	sp,sp,-32
    80002e3c:	00113c23          	sd	ra,24(sp)
    80002e40:	00813823          	sd	s0,16(sp)
    80002e44:	00913423          	sd	s1,8(sp)
    80002e48:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002e4c:	00009517          	auipc	a0,0x9
    80002e50:	dac53503          	ld	a0,-596(a0) # 8000bbf8 <_ZN9Scheduler16readyThreadQueueE>
    80002e54:	04050263          	beqz	a0,80002e98 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002e58:	00853783          	ld	a5,8(a0)
    80002e5c:	00009717          	auipc	a4,0x9
    80002e60:	d8f73e23          	sd	a5,-612(a4) # 8000bbf8 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002e64:	02078463          	beqz	a5,80002e8c <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002e68:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	eb8080e7          	jalr	-328(ra) # 80002d24 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002e74:	00048513          	mv	a0,s1
    80002e78:	01813083          	ld	ra,24(sp)
    80002e7c:	01013403          	ld	s0,16(sp)
    80002e80:	00813483          	ld	s1,8(sp)
    80002e84:	02010113          	addi	sp,sp,32
    80002e88:	00008067          	ret
        if (!head) { tail = 0; }
    80002e8c:	00009797          	auipc	a5,0x9
    80002e90:	d607ba23          	sd	zero,-652(a5) # 8000bc00 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002e94:	fd5ff06f          	j	80002e68 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002e98:	00050493          	mv	s1,a0
    return t;
    80002e9c:	fd9ff06f          	j	80002e74 <_ZN9Scheduler3getEv+0x3c>

0000000080002ea0 <_ZN9Scheduler3putEP3TCB>:
    {
    80002ea0:	fe010113          	addi	sp,sp,-32
    80002ea4:	00113c23          	sd	ra,24(sp)
    80002ea8:	00813823          	sd	s0,16(sp)
    80002eac:	00913423          	sd	s1,8(sp)
    80002eb0:	02010413          	addi	s0,sp,32
    80002eb4:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    80002eb8:	01000513          	li	a0,16
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	cfc080e7          	jalr	-772(ra) # 80002bb8 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002ec4:	00953023          	sd	s1,0(a0)
    80002ec8:	00053423          	sd	zero,8(a0)
        if (tail)
    80002ecc:	00009797          	auipc	a5,0x9
    80002ed0:	d347b783          	ld	a5,-716(a5) # 8000bc00 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002ed4:	02078263          	beqz	a5,80002ef8 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002ed8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002edc:	00009797          	auipc	a5,0x9
    80002ee0:	d2a7b223          	sd	a0,-732(a5) # 8000bc00 <_ZN9Scheduler16readyThreadQueueE+0x8>
    }
    80002ee4:	01813083          	ld	ra,24(sp)
    80002ee8:	01013403          	ld	s0,16(sp)
    80002eec:	00813483          	ld	s1,8(sp)
    80002ef0:	02010113          	addi	sp,sp,32
    80002ef4:	00008067          	ret
            head = tail = elem;
    80002ef8:	00009797          	auipc	a5,0x9
    80002efc:	d0078793          	addi	a5,a5,-768 # 8000bbf8 <_ZN9Scheduler16readyThreadQueueE>
    80002f00:	00a7b423          	sd	a0,8(a5)
    80002f04:	00a7b023          	sd	a0,0(a5)
    80002f08:	fddff06f          	j	80002ee4 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002f0c <_ZN9Scheduler8putFirstEP3TCB>:
void Scheduler::putFirst(TCB *ccb){
    80002f0c:	fe010113          	addi	sp,sp,-32
    80002f10:	00113c23          	sd	ra,24(sp)
    80002f14:	00813823          	sd	s0,16(sp)
    80002f18:	00913423          	sd	s1,8(sp)
    80002f1c:	02010413          	addi	s0,sp,32
    80002f20:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    80002f24:	01000513          	li	a0,16
    80002f28:	00000097          	auipc	ra,0x0
    80002f2c:	c90080e7          	jalr	-880(ra) # 80002bb8 <_ZN15MemoryAllocator9mem_allocEm>
        Elem *elem = new Elem(data, head);
    80002f30:	00009797          	auipc	a5,0x9
    80002f34:	cc878793          	addi	a5,a5,-824 # 8000bbf8 <_ZN9Scheduler16readyThreadQueueE>
    80002f38:	0007b703          	ld	a4,0(a5)
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002f3c:	00953023          	sd	s1,0(a0)
    80002f40:	00e53423          	sd	a4,8(a0)
        head = elem;
    80002f44:	00a7b023          	sd	a0,0(a5)
        if (!tail) { tail = head; }
    80002f48:	0087b783          	ld	a5,8(a5)
    80002f4c:	00078c63          	beqz	a5,80002f64 <_ZN9Scheduler8putFirstEP3TCB+0x58>
    80002f50:	01813083          	ld	ra,24(sp)
    80002f54:	01013403          	ld	s0,16(sp)
    80002f58:	00813483          	ld	s1,8(sp)
    80002f5c:	02010113          	addi	sp,sp,32
    80002f60:	00008067          	ret
    80002f64:	00009797          	auipc	a5,0x9
    80002f68:	c8a7be23          	sd	a0,-868(a5) # 8000bc00 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002f6c:	fe5ff06f          	j	80002f50 <_ZN9Scheduler8putFirstEP3TCB+0x44>

0000000080002f70 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002f70:	ff010113          	addi	sp,sp,-16
    80002f74:	00113423          	sd	ra,8(sp)
    80002f78:	00813023          	sd	s0,0(sp)
    80002f7c:	01010413          	addi	s0,sp,16
    80002f80:	000105b7          	lui	a1,0x10
    80002f84:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002f88:	00100513          	li	a0,1
    80002f8c:	00000097          	auipc	ra,0x0
    80002f90:	e6c080e7          	jalr	-404(ra) # 80002df8 <_Z41__static_initialization_and_destruction_0ii>
    80002f94:	00813083          	ld	ra,8(sp)
    80002f98:	00013403          	ld	s0,0(sp)
    80002f9c:	01010113          	addi	sp,sp,16
    80002fa0:	00008067          	ret

0000000080002fa4 <_Z8printStrPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printStr(char const *string)
{
    80002fa4:	fd010113          	addi	sp,sp,-48
    80002fa8:	02113423          	sd	ra,40(sp)
    80002fac:	02813023          	sd	s0,32(sp)
    80002fb0:	00913c23          	sd	s1,24(sp)
    80002fb4:	01213823          	sd	s2,16(sp)
    80002fb8:	03010413          	addi	s0,sp,48
    80002fbc:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002fc0:	100027f3          	csrr	a5,sstatus
    80002fc4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002fc8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002fcc:	00200793          	li	a5,2
    80002fd0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002fd4:	0004c503          	lbu	a0,0(s1)
    80002fd8:	00050a63          	beqz	a0,80002fec <_Z8printStrPKc+0x48>
    {
        __putc(*string);
    80002fdc:	00006097          	auipc	ra,0x6
    80002fe0:	8d0080e7          	jalr	-1840(ra) # 800088ac <__putc>
        string++;
    80002fe4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002fe8:	fedff06f          	j	80002fd4 <_Z8printStrPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002fec:	0009091b          	sext.w	s2,s2
    80002ff0:	00297913          	andi	s2,s2,2
    80002ff4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002ff8:	10092073          	csrs	sstatus,s2
}
    80002ffc:	02813083          	ld	ra,40(sp)
    80003000:	02013403          	ld	s0,32(sp)
    80003004:	01813483          	ld	s1,24(sp)
    80003008:	01013903          	ld	s2,16(sp)
    8000300c:	03010113          	addi	sp,sp,48
    80003010:	00008067          	ret

0000000080003014 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80003014:	fc010113          	addi	sp,sp,-64
    80003018:	02113c23          	sd	ra,56(sp)
    8000301c:	02813823          	sd	s0,48(sp)
    80003020:	02913423          	sd	s1,40(sp)
    80003024:	03213023          	sd	s2,32(sp)
    80003028:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000302c:	100027f3          	csrr	a5,sstatus
    80003030:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003034:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003038:	00200793          	li	a5,2
    8000303c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80003040:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80003044:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80003048:	00a00613          	li	a2,10
    8000304c:	02c5773b          	remuw	a4,a0,a2
    80003050:	02071693          	slli	a3,a4,0x20
    80003054:	0206d693          	srli	a3,a3,0x20
    80003058:	00006717          	auipc	a4,0x6
    8000305c:	54070713          	addi	a4,a4,1344 # 80009598 <_ZZ12printIntegermE6digits>
    80003060:	00d70733          	add	a4,a4,a3
    80003064:	00074703          	lbu	a4,0(a4)
    80003068:	fe040693          	addi	a3,s0,-32
    8000306c:	009687b3          	add	a5,a3,s1
    80003070:	0014849b          	addiw	s1,s1,1
    80003074:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80003078:	0005071b          	sext.w	a4,a0
    8000307c:	02c5553b          	divuw	a0,a0,a2
    80003080:	00900793          	li	a5,9
    80003084:	fce7e2e3          	bltu	a5,a4,80003048 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80003088:	fff4849b          	addiw	s1,s1,-1
    8000308c:	0004ce63          	bltz	s1,800030a8 <_Z12printIntegerm+0x94>
    80003090:	fe040793          	addi	a5,s0,-32
    80003094:	009787b3          	add	a5,a5,s1
    80003098:	ff07c503          	lbu	a0,-16(a5)
    8000309c:	00006097          	auipc	ra,0x6
    800030a0:	810080e7          	jalr	-2032(ra) # 800088ac <__putc>
    800030a4:	fe5ff06f          	j	80003088 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800030a8:	0009091b          	sext.w	s2,s2
    800030ac:	00297913          	andi	s2,s2,2
    800030b0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800030b4:	10092073          	csrs	sstatus,s2
    800030b8:	03813083          	ld	ra,56(sp)
    800030bc:	03013403          	ld	s0,48(sp)
    800030c0:	02813483          	ld	s1,40(sp)
    800030c4:	02013903          	ld	s2,32(sp)
    800030c8:	04010113          	addi	sp,sp,64
    800030cc:	00008067          	ret

00000000800030d0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800030d0:	fe010113          	addi	sp,sp,-32
    800030d4:	00113c23          	sd	ra,24(sp)
    800030d8:	00813823          	sd	s0,16(sp)
    800030dc:	00913423          	sd	s1,8(sp)
    800030e0:	01213023          	sd	s2,0(sp)
    800030e4:	02010413          	addi	s0,sp,32
    800030e8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800030ec:	00000913          	li	s2,0
    800030f0:	00c0006f          	j	800030fc <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800030f4:	ffffe097          	auipc	ra,0xffffe
    800030f8:	3c8080e7          	jalr	968(ra) # 800014bc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800030fc:	ffffe097          	auipc	ra,0xffffe
    80003100:	4bc080e7          	jalr	1212(ra) # 800015b8 <_Z4getcv>
    80003104:	0005059b          	sext.w	a1,a0
    80003108:	01b00793          	li	a5,27
    8000310c:	02f58a63          	beq	a1,a5,80003140 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003110:	0084b503          	ld	a0,8(s1)
    80003114:	00003097          	auipc	ra,0x3
    80003118:	454080e7          	jalr	1108(ra) # 80006568 <_ZN6Buffer3putEi>
        i++;
    8000311c:	0019071b          	addiw	a4,s2,1
    80003120:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003124:	0004a683          	lw	a3,0(s1)
    80003128:	0026979b          	slliw	a5,a3,0x2
    8000312c:	00d787bb          	addw	a5,a5,a3
    80003130:	0017979b          	slliw	a5,a5,0x1
    80003134:	02f767bb          	remw	a5,a4,a5
    80003138:	fc0792e3          	bnez	a5,800030fc <_ZL16producerKeyboardPv+0x2c>
    8000313c:	fb9ff06f          	j	800030f4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003140:	00100793          	li	a5,1
    80003144:	00009717          	auipc	a4,0x9
    80003148:	acf72223          	sw	a5,-1340(a4) # 8000bc08 <_ZL9threadEnd>
    data->buffer->put('!');
    8000314c:	02100593          	li	a1,33
    80003150:	0084b503          	ld	a0,8(s1)
    80003154:	00003097          	auipc	ra,0x3
    80003158:	414080e7          	jalr	1044(ra) # 80006568 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000315c:	0104b503          	ld	a0,16(s1)
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	42c080e7          	jalr	1068(ra) # 8000158c <_Z10sem_signalP4_sem>
}
    80003168:	01813083          	ld	ra,24(sp)
    8000316c:	01013403          	ld	s0,16(sp)
    80003170:	00813483          	ld	s1,8(sp)
    80003174:	00013903          	ld	s2,0(sp)
    80003178:	02010113          	addi	sp,sp,32
    8000317c:	00008067          	ret

0000000080003180 <_ZL8producerPv>:

static void producer(void *arg) {
    80003180:	fe010113          	addi	sp,sp,-32
    80003184:	00113c23          	sd	ra,24(sp)
    80003188:	00813823          	sd	s0,16(sp)
    8000318c:	00913423          	sd	s1,8(sp)
    80003190:	01213023          	sd	s2,0(sp)
    80003194:	02010413          	addi	s0,sp,32
    80003198:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000319c:	00000913          	li	s2,0
    800031a0:	00c0006f          	j	800031ac <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800031a4:	ffffe097          	auipc	ra,0xffffe
    800031a8:	318080e7          	jalr	792(ra) # 800014bc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800031ac:	00009797          	auipc	a5,0x9
    800031b0:	a5c7a783          	lw	a5,-1444(a5) # 8000bc08 <_ZL9threadEnd>
    800031b4:	02079e63          	bnez	a5,800031f0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800031b8:	0004a583          	lw	a1,0(s1)
    800031bc:	0305859b          	addiw	a1,a1,48
    800031c0:	0084b503          	ld	a0,8(s1)
    800031c4:	00003097          	auipc	ra,0x3
    800031c8:	3a4080e7          	jalr	932(ra) # 80006568 <_ZN6Buffer3putEi>
        i++;
    800031cc:	0019071b          	addiw	a4,s2,1
    800031d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800031d4:	0004a683          	lw	a3,0(s1)
    800031d8:	0026979b          	slliw	a5,a3,0x2
    800031dc:	00d787bb          	addw	a5,a5,a3
    800031e0:	0017979b          	slliw	a5,a5,0x1
    800031e4:	02f767bb          	remw	a5,a4,a5
    800031e8:	fc0792e3          	bnez	a5,800031ac <_ZL8producerPv+0x2c>
    800031ec:	fb9ff06f          	j	800031a4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800031f0:	0104b503          	ld	a0,16(s1)
    800031f4:	ffffe097          	auipc	ra,0xffffe
    800031f8:	398080e7          	jalr	920(ra) # 8000158c <_Z10sem_signalP4_sem>
}
    800031fc:	01813083          	ld	ra,24(sp)
    80003200:	01013403          	ld	s0,16(sp)
    80003204:	00813483          	ld	s1,8(sp)
    80003208:	00013903          	ld	s2,0(sp)
    8000320c:	02010113          	addi	sp,sp,32
    80003210:	00008067          	ret

0000000080003214 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003214:	fd010113          	addi	sp,sp,-48
    80003218:	02113423          	sd	ra,40(sp)
    8000321c:	02813023          	sd	s0,32(sp)
    80003220:	00913c23          	sd	s1,24(sp)
    80003224:	01213823          	sd	s2,16(sp)
    80003228:	01313423          	sd	s3,8(sp)
    8000322c:	03010413          	addi	s0,sp,48
    80003230:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003234:	00000993          	li	s3,0
    80003238:	01c0006f          	j	80003254 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000323c:	ffffe097          	auipc	ra,0xffffe
    80003240:	280080e7          	jalr	640(ra) # 800014bc <_Z15thread_dispatchv>
    80003244:	0500006f          	j	80003294 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003248:	00a00513          	li	a0,10
    8000324c:	ffffe097          	auipc	ra,0xffffe
    80003250:	394080e7          	jalr	916(ra) # 800015e0 <_Z4putcc>
    while (!threadEnd) {
    80003254:	00009797          	auipc	a5,0x9
    80003258:	9b47a783          	lw	a5,-1612(a5) # 8000bc08 <_ZL9threadEnd>
    8000325c:	06079063          	bnez	a5,800032bc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003260:	00893503          	ld	a0,8(s2)
    80003264:	00003097          	auipc	ra,0x3
    80003268:	394080e7          	jalr	916(ra) # 800065f8 <_ZN6Buffer3getEv>
        i++;
    8000326c:	0019849b          	addiw	s1,s3,1
    80003270:	0004899b          	sext.w	s3,s1
        putc(key);
    80003274:	0ff57513          	andi	a0,a0,255
    80003278:	ffffe097          	auipc	ra,0xffffe
    8000327c:	368080e7          	jalr	872(ra) # 800015e0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003280:	00092703          	lw	a4,0(s2)
    80003284:	0027179b          	slliw	a5,a4,0x2
    80003288:	00e787bb          	addw	a5,a5,a4
    8000328c:	02f4e7bb          	remw	a5,s1,a5
    80003290:	fa0786e3          	beqz	a5,8000323c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003294:	05000793          	li	a5,80
    80003298:	02f4e4bb          	remw	s1,s1,a5
    8000329c:	fa049ce3          	bnez	s1,80003254 <_ZL8consumerPv+0x40>
    800032a0:	fa9ff06f          	j	80003248 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800032a4:	00893503          	ld	a0,8(s2)
    800032a8:	00003097          	auipc	ra,0x3
    800032ac:	350080e7          	jalr	848(ra) # 800065f8 <_ZN6Buffer3getEv>
        putc(key);
    800032b0:	0ff57513          	andi	a0,a0,255
    800032b4:	ffffe097          	auipc	ra,0xffffe
    800032b8:	32c080e7          	jalr	812(ra) # 800015e0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800032bc:	00893503          	ld	a0,8(s2)
    800032c0:	00003097          	auipc	ra,0x3
    800032c4:	3c4080e7          	jalr	964(ra) # 80006684 <_ZN6Buffer6getCntEv>
    800032c8:	fca04ee3          	bgtz	a0,800032a4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800032cc:	01093503          	ld	a0,16(s2)
    800032d0:	ffffe097          	auipc	ra,0xffffe
    800032d4:	2bc080e7          	jalr	700(ra) # 8000158c <_Z10sem_signalP4_sem>
}
    800032d8:	02813083          	ld	ra,40(sp)
    800032dc:	02013403          	ld	s0,32(sp)
    800032e0:	01813483          	ld	s1,24(sp)
    800032e4:	01013903          	ld	s2,16(sp)
    800032e8:	00813983          	ld	s3,8(sp)
    800032ec:	03010113          	addi	sp,sp,48
    800032f0:	00008067          	ret

00000000800032f4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800032f4:	f9010113          	addi	sp,sp,-112
    800032f8:	06113423          	sd	ra,104(sp)
    800032fc:	06813023          	sd	s0,96(sp)
    80003300:	04913c23          	sd	s1,88(sp)
    80003304:	05213823          	sd	s2,80(sp)
    80003308:	05313423          	sd	s3,72(sp)
    8000330c:	05413023          	sd	s4,64(sp)
    80003310:	03513c23          	sd	s5,56(sp)
    80003314:	03613823          	sd	s6,48(sp)
    80003318:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000331c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003320:	00006517          	auipc	a0,0x6
    80003324:	28850513          	addi	a0,a0,648 # 800095a8 <_ZZ12printIntegermE6digits+0x10>
    80003328:	00002097          	auipc	ra,0x2
    8000332c:	280080e7          	jalr	640(ra) # 800055a8 <_Z11printStringPKc>
    getString(input, 30);
    80003330:	01e00593          	li	a1,30
    80003334:	fa040493          	addi	s1,s0,-96
    80003338:	00048513          	mv	a0,s1
    8000333c:	00002097          	auipc	ra,0x2
    80003340:	2f4080e7          	jalr	756(ra) # 80005630 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003344:	00048513          	mv	a0,s1
    80003348:	00002097          	auipc	ra,0x2
    8000334c:	3c0080e7          	jalr	960(ra) # 80005708 <_Z11stringToIntPKc>
    80003350:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003354:	00006517          	auipc	a0,0x6
    80003358:	27450513          	addi	a0,a0,628 # 800095c8 <_ZZ12printIntegermE6digits+0x30>
    8000335c:	00002097          	auipc	ra,0x2
    80003360:	24c080e7          	jalr	588(ra) # 800055a8 <_Z11printStringPKc>
    getString(input, 30);
    80003364:	01e00593          	li	a1,30
    80003368:	00048513          	mv	a0,s1
    8000336c:	00002097          	auipc	ra,0x2
    80003370:	2c4080e7          	jalr	708(ra) # 80005630 <_Z9getStringPci>
    n = stringToInt(input);
    80003374:	00048513          	mv	a0,s1
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	390080e7          	jalr	912(ra) # 80005708 <_Z11stringToIntPKc>
    80003380:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003384:	00006517          	auipc	a0,0x6
    80003388:	26450513          	addi	a0,a0,612 # 800095e8 <_ZZ12printIntegermE6digits+0x50>
    8000338c:	00002097          	auipc	ra,0x2
    80003390:	21c080e7          	jalr	540(ra) # 800055a8 <_Z11printStringPKc>
    80003394:	00000613          	li	a2,0
    80003398:	00a00593          	li	a1,10
    8000339c:	00090513          	mv	a0,s2
    800033a0:	00002097          	auipc	ra,0x2
    800033a4:	3b8080e7          	jalr	952(ra) # 80005758 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800033a8:	00006517          	auipc	a0,0x6
    800033ac:	25850513          	addi	a0,a0,600 # 80009600 <_ZZ12printIntegermE6digits+0x68>
    800033b0:	00002097          	auipc	ra,0x2
    800033b4:	1f8080e7          	jalr	504(ra) # 800055a8 <_Z11printStringPKc>
    800033b8:	00000613          	li	a2,0
    800033bc:	00a00593          	li	a1,10
    800033c0:	00048513          	mv	a0,s1
    800033c4:	00002097          	auipc	ra,0x2
    800033c8:	394080e7          	jalr	916(ra) # 80005758 <_Z8printIntiii>
    printString(".\n");
    800033cc:	00006517          	auipc	a0,0x6
    800033d0:	24c50513          	addi	a0,a0,588 # 80009618 <_ZZ12printIntegermE6digits+0x80>
    800033d4:	00002097          	auipc	ra,0x2
    800033d8:	1d4080e7          	jalr	468(ra) # 800055a8 <_Z11printStringPKc>
    if(threadNum > n) {
    800033dc:	0324c463          	blt	s1,s2,80003404 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800033e0:	03205c63          	blez	s2,80003418 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800033e4:	03800513          	li	a0,56
    800033e8:	fffff097          	auipc	ra,0xfffff
    800033ec:	1e4080e7          	jalr	484(ra) # 800025cc <_Znwm>
    800033f0:	00050a13          	mv	s4,a0
    800033f4:	00048593          	mv	a1,s1
    800033f8:	00003097          	auipc	ra,0x3
    800033fc:	0d4080e7          	jalr	212(ra) # 800064cc <_ZN6BufferC1Ei>
    80003400:	0300006f          	j	80003430 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003404:	00006517          	auipc	a0,0x6
    80003408:	21c50513          	addi	a0,a0,540 # 80009620 <_ZZ12printIntegermE6digits+0x88>
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	19c080e7          	jalr	412(ra) # 800055a8 <_Z11printStringPKc>
        return;
    80003414:	0140006f          	j	80003428 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003418:	00006517          	auipc	a0,0x6
    8000341c:	24850513          	addi	a0,a0,584 # 80009660 <_ZZ12printIntegermE6digits+0xc8>
    80003420:	00002097          	auipc	ra,0x2
    80003424:	188080e7          	jalr	392(ra) # 800055a8 <_Z11printStringPKc>
        return;
    80003428:	000b0113          	mv	sp,s6
    8000342c:	1500006f          	j	8000357c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003430:	00000593          	li	a1,0
    80003434:	00008517          	auipc	a0,0x8
    80003438:	7dc50513          	addi	a0,a0,2012 # 8000bc10 <_ZL10waitForAll>
    8000343c:	ffffe097          	auipc	ra,0xffffe
    80003440:	0c4080e7          	jalr	196(ra) # 80001500 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003444:	00391793          	slli	a5,s2,0x3
    80003448:	00f78793          	addi	a5,a5,15
    8000344c:	ff07f793          	andi	a5,a5,-16
    80003450:	40f10133          	sub	sp,sp,a5
    80003454:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003458:	0019071b          	addiw	a4,s2,1
    8000345c:	00171793          	slli	a5,a4,0x1
    80003460:	00e787b3          	add	a5,a5,a4
    80003464:	00379793          	slli	a5,a5,0x3
    80003468:	00f78793          	addi	a5,a5,15
    8000346c:	ff07f793          	andi	a5,a5,-16
    80003470:	40f10133          	sub	sp,sp,a5
    80003474:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003478:	00191613          	slli	a2,s2,0x1
    8000347c:	012607b3          	add	a5,a2,s2
    80003480:	00379793          	slli	a5,a5,0x3
    80003484:	00f987b3          	add	a5,s3,a5
    80003488:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000348c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003490:	00008717          	auipc	a4,0x8
    80003494:	78073703          	ld	a4,1920(a4) # 8000bc10 <_ZL10waitForAll>
    80003498:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000349c:	00078613          	mv	a2,a5
    800034a0:	00000597          	auipc	a1,0x0
    800034a4:	d7458593          	addi	a1,a1,-652 # 80003214 <_ZL8consumerPv>
    800034a8:	f9840513          	addi	a0,s0,-104
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	fac080e7          	jalr	-84(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800034b4:	00000493          	li	s1,0
    800034b8:	0280006f          	j	800034e0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800034bc:	00000597          	auipc	a1,0x0
    800034c0:	c1458593          	addi	a1,a1,-1004 # 800030d0 <_ZL16producerKeyboardPv>
                      data + i);
    800034c4:	00179613          	slli	a2,a5,0x1
    800034c8:	00f60633          	add	a2,a2,a5
    800034cc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800034d0:	00c98633          	add	a2,s3,a2
    800034d4:	ffffe097          	auipc	ra,0xffffe
    800034d8:	f84080e7          	jalr	-124(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800034dc:	0014849b          	addiw	s1,s1,1
    800034e0:	0524d263          	bge	s1,s2,80003524 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800034e4:	00149793          	slli	a5,s1,0x1
    800034e8:	009787b3          	add	a5,a5,s1
    800034ec:	00379793          	slli	a5,a5,0x3
    800034f0:	00f987b3          	add	a5,s3,a5
    800034f4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800034f8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800034fc:	00008717          	auipc	a4,0x8
    80003500:	71473703          	ld	a4,1812(a4) # 8000bc10 <_ZL10waitForAll>
    80003504:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003508:	00048793          	mv	a5,s1
    8000350c:	00349513          	slli	a0,s1,0x3
    80003510:	00aa8533          	add	a0,s5,a0
    80003514:	fa9054e3          	blez	s1,800034bc <_Z22producerConsumer_C_APIv+0x1c8>
    80003518:	00000597          	auipc	a1,0x0
    8000351c:	c6858593          	addi	a1,a1,-920 # 80003180 <_ZL8producerPv>
    80003520:	fa5ff06f          	j	800034c4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003524:	ffffe097          	auipc	ra,0xffffe
    80003528:	f98080e7          	jalr	-104(ra) # 800014bc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000352c:	00000493          	li	s1,0
    80003530:	00994e63          	blt	s2,s1,8000354c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003534:	00008517          	auipc	a0,0x8
    80003538:	6dc53503          	ld	a0,1756(a0) # 8000bc10 <_ZL10waitForAll>
    8000353c:	ffffe097          	auipc	ra,0xffffe
    80003540:	024080e7          	jalr	36(ra) # 80001560 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003544:	0014849b          	addiw	s1,s1,1
    80003548:	fe9ff06f          	j	80003530 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000354c:	00008517          	auipc	a0,0x8
    80003550:	6c453503          	ld	a0,1732(a0) # 8000bc10 <_ZL10waitForAll>
    80003554:	ffffe097          	auipc	ra,0xffffe
    80003558:	fe0080e7          	jalr	-32(ra) # 80001534 <_Z9sem_closeP4_sem>
    delete buffer;
    8000355c:	000a0e63          	beqz	s4,80003578 <_Z22producerConsumer_C_APIv+0x284>
    80003560:	000a0513          	mv	a0,s4
    80003564:	00003097          	auipc	ra,0x3
    80003568:	1a8080e7          	jalr	424(ra) # 8000670c <_ZN6BufferD1Ev>
    8000356c:	000a0513          	mv	a0,s4
    80003570:	fffff097          	auipc	ra,0xfffff
    80003574:	0ac080e7          	jalr	172(ra) # 8000261c <_ZdlPv>
    80003578:	000b0113          	mv	sp,s6

}
    8000357c:	f9040113          	addi	sp,s0,-112
    80003580:	06813083          	ld	ra,104(sp)
    80003584:	06013403          	ld	s0,96(sp)
    80003588:	05813483          	ld	s1,88(sp)
    8000358c:	05013903          	ld	s2,80(sp)
    80003590:	04813983          	ld	s3,72(sp)
    80003594:	04013a03          	ld	s4,64(sp)
    80003598:	03813a83          	ld	s5,56(sp)
    8000359c:	03013b03          	ld	s6,48(sp)
    800035a0:	07010113          	addi	sp,sp,112
    800035a4:	00008067          	ret
    800035a8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800035ac:	000a0513          	mv	a0,s4
    800035b0:	fffff097          	auipc	ra,0xfffff
    800035b4:	06c080e7          	jalr	108(ra) # 8000261c <_ZdlPv>
    800035b8:	00048513          	mv	a0,s1
    800035bc:	00009097          	auipc	ra,0x9
    800035c0:	76c080e7          	jalr	1900(ra) # 8000cd28 <_Unwind_Resume>

00000000800035c4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800035c4:	fe010113          	addi	sp,sp,-32
    800035c8:	00113c23          	sd	ra,24(sp)
    800035cc:	00813823          	sd	s0,16(sp)
    800035d0:	00913423          	sd	s1,8(sp)
    800035d4:	01213023          	sd	s2,0(sp)
    800035d8:	02010413          	addi	s0,sp,32
    800035dc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800035e0:	00100793          	li	a5,1
    800035e4:	02a7f863          	bgeu	a5,a0,80003614 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800035e8:	00a00793          	li	a5,10
    800035ec:	02f577b3          	remu	a5,a0,a5
    800035f0:	02078e63          	beqz	a5,8000362c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800035f4:	fff48513          	addi	a0,s1,-1
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	fcc080e7          	jalr	-52(ra) # 800035c4 <_ZL9fibonaccim>
    80003600:	00050913          	mv	s2,a0
    80003604:	ffe48513          	addi	a0,s1,-2
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	fbc080e7          	jalr	-68(ra) # 800035c4 <_ZL9fibonaccim>
    80003610:	00a90533          	add	a0,s2,a0
}
    80003614:	01813083          	ld	ra,24(sp)
    80003618:	01013403          	ld	s0,16(sp)
    8000361c:	00813483          	ld	s1,8(sp)
    80003620:	00013903          	ld	s2,0(sp)
    80003624:	02010113          	addi	sp,sp,32
    80003628:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	e90080e7          	jalr	-368(ra) # 800014bc <_Z15thread_dispatchv>
    80003634:	fc1ff06f          	j	800035f4 <_ZL9fibonaccim+0x30>

0000000080003638 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003638:	fe010113          	addi	sp,sp,-32
    8000363c:	00113c23          	sd	ra,24(sp)
    80003640:	00813823          	sd	s0,16(sp)
    80003644:	00913423          	sd	s1,8(sp)
    80003648:	01213023          	sd	s2,0(sp)
    8000364c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003650:	00000913          	li	s2,0
    80003654:	0380006f          	j	8000368c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	e64080e7          	jalr	-412(ra) # 800014bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003660:	00148493          	addi	s1,s1,1
    80003664:	000027b7          	lui	a5,0x2
    80003668:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000366c:	0097ee63          	bltu	a5,s1,80003688 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003670:	00000713          	li	a4,0
    80003674:	000077b7          	lui	a5,0x7
    80003678:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000367c:	fce7eee3          	bltu	a5,a4,80003658 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003680:	00170713          	addi	a4,a4,1
    80003684:	ff1ff06f          	j	80003674 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003688:	00190913          	addi	s2,s2,1
    8000368c:	00900793          	li	a5,9
    80003690:	0527e063          	bltu	a5,s2,800036d0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003694:	00006517          	auipc	a0,0x6
    80003698:	98c50513          	addi	a0,a0,-1652 # 80009020 <CONSOLE_STATUS+0x10>
    8000369c:	00002097          	auipc	ra,0x2
    800036a0:	f0c080e7          	jalr	-244(ra) # 800055a8 <_Z11printStringPKc>
    800036a4:	00000613          	li	a2,0
    800036a8:	00a00593          	li	a1,10
    800036ac:	0009051b          	sext.w	a0,s2
    800036b0:	00002097          	auipc	ra,0x2
    800036b4:	0a8080e7          	jalr	168(ra) # 80005758 <_Z8printIntiii>
    800036b8:	00006517          	auipc	a0,0x6
    800036bc:	bf050513          	addi	a0,a0,-1040 # 800092a8 <CONSOLE_STATUS+0x298>
    800036c0:	00002097          	auipc	ra,0x2
    800036c4:	ee8080e7          	jalr	-280(ra) # 800055a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036c8:	00000493          	li	s1,0
    800036cc:	f99ff06f          	j	80003664 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800036d0:	00006517          	auipc	a0,0x6
    800036d4:	fc050513          	addi	a0,a0,-64 # 80009690 <_ZZ12printIntegermE6digits+0xf8>
    800036d8:	00002097          	auipc	ra,0x2
    800036dc:	ed0080e7          	jalr	-304(ra) # 800055a8 <_Z11printStringPKc>
    finishedA = true;
    800036e0:	00100793          	li	a5,1
    800036e4:	00008717          	auipc	a4,0x8
    800036e8:	52f70a23          	sb	a5,1332(a4) # 8000bc18 <_ZL9finishedA>
}
    800036ec:	01813083          	ld	ra,24(sp)
    800036f0:	01013403          	ld	s0,16(sp)
    800036f4:	00813483          	ld	s1,8(sp)
    800036f8:	00013903          	ld	s2,0(sp)
    800036fc:	02010113          	addi	sp,sp,32
    80003700:	00008067          	ret

0000000080003704 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003704:	fe010113          	addi	sp,sp,-32
    80003708:	00113c23          	sd	ra,24(sp)
    8000370c:	00813823          	sd	s0,16(sp)
    80003710:	00913423          	sd	s1,8(sp)
    80003714:	01213023          	sd	s2,0(sp)
    80003718:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000371c:	00000913          	li	s2,0
    80003720:	0380006f          	j	80003758 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	d98080e7          	jalr	-616(ra) # 800014bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000372c:	00148493          	addi	s1,s1,1
    80003730:	000027b7          	lui	a5,0x2
    80003734:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003738:	0097ee63          	bltu	a5,s1,80003754 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000373c:	00000713          	li	a4,0
    80003740:	000077b7          	lui	a5,0x7
    80003744:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003748:	fce7eee3          	bltu	a5,a4,80003724 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000374c:	00170713          	addi	a4,a4,1
    80003750:	ff1ff06f          	j	80003740 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003754:	00190913          	addi	s2,s2,1
    80003758:	00f00793          	li	a5,15
    8000375c:	0527e063          	bltu	a5,s2,8000379c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003760:	00006517          	auipc	a0,0x6
    80003764:	8c850513          	addi	a0,a0,-1848 # 80009028 <CONSOLE_STATUS+0x18>
    80003768:	00002097          	auipc	ra,0x2
    8000376c:	e40080e7          	jalr	-448(ra) # 800055a8 <_Z11printStringPKc>
    80003770:	00000613          	li	a2,0
    80003774:	00a00593          	li	a1,10
    80003778:	0009051b          	sext.w	a0,s2
    8000377c:	00002097          	auipc	ra,0x2
    80003780:	fdc080e7          	jalr	-36(ra) # 80005758 <_Z8printIntiii>
    80003784:	00006517          	auipc	a0,0x6
    80003788:	b2450513          	addi	a0,a0,-1244 # 800092a8 <CONSOLE_STATUS+0x298>
    8000378c:	00002097          	auipc	ra,0x2
    80003790:	e1c080e7          	jalr	-484(ra) # 800055a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003794:	00000493          	li	s1,0
    80003798:	f99ff06f          	j	80003730 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000379c:	00006517          	auipc	a0,0x6
    800037a0:	f0450513          	addi	a0,a0,-252 # 800096a0 <_ZZ12printIntegermE6digits+0x108>
    800037a4:	00002097          	auipc	ra,0x2
    800037a8:	e04080e7          	jalr	-508(ra) # 800055a8 <_Z11printStringPKc>
    finishedB = true;
    800037ac:	00100793          	li	a5,1
    800037b0:	00008717          	auipc	a4,0x8
    800037b4:	46f704a3          	sb	a5,1129(a4) # 8000bc19 <_ZL9finishedB>
    thread_dispatch();
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	d04080e7          	jalr	-764(ra) # 800014bc <_Z15thread_dispatchv>
}
    800037c0:	01813083          	ld	ra,24(sp)
    800037c4:	01013403          	ld	s0,16(sp)
    800037c8:	00813483          	ld	s1,8(sp)
    800037cc:	00013903          	ld	s2,0(sp)
    800037d0:	02010113          	addi	sp,sp,32
    800037d4:	00008067          	ret

00000000800037d8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800037d8:	fe010113          	addi	sp,sp,-32
    800037dc:	00113c23          	sd	ra,24(sp)
    800037e0:	00813823          	sd	s0,16(sp)
    800037e4:	00913423          	sd	s1,8(sp)
    800037e8:	01213023          	sd	s2,0(sp)
    800037ec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800037f0:	00000493          	li	s1,0
    800037f4:	0400006f          	j	80003834 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800037f8:	00006517          	auipc	a0,0x6
    800037fc:	83850513          	addi	a0,a0,-1992 # 80009030 <CONSOLE_STATUS+0x20>
    80003800:	00002097          	auipc	ra,0x2
    80003804:	da8080e7          	jalr	-600(ra) # 800055a8 <_Z11printStringPKc>
    80003808:	00000613          	li	a2,0
    8000380c:	00a00593          	li	a1,10
    80003810:	00048513          	mv	a0,s1
    80003814:	00002097          	auipc	ra,0x2
    80003818:	f44080e7          	jalr	-188(ra) # 80005758 <_Z8printIntiii>
    8000381c:	00006517          	auipc	a0,0x6
    80003820:	a8c50513          	addi	a0,a0,-1396 # 800092a8 <CONSOLE_STATUS+0x298>
    80003824:	00002097          	auipc	ra,0x2
    80003828:	d84080e7          	jalr	-636(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000382c:	0014849b          	addiw	s1,s1,1
    80003830:	0ff4f493          	andi	s1,s1,255
    80003834:	00200793          	li	a5,2
    80003838:	fc97f0e3          	bgeu	a5,s1,800037f8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000383c:	00006517          	auipc	a0,0x6
    80003840:	e7450513          	addi	a0,a0,-396 # 800096b0 <_ZZ12printIntegermE6digits+0x118>
    80003844:	00002097          	auipc	ra,0x2
    80003848:	d64080e7          	jalr	-668(ra) # 800055a8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000384c:	00700313          	li	t1,7
    thread_dispatch();
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	c6c080e7          	jalr	-916(ra) # 800014bc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003858:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000385c:	00005517          	auipc	a0,0x5
    80003860:	7ec50513          	addi	a0,a0,2028 # 80009048 <CONSOLE_STATUS+0x38>
    80003864:	00002097          	auipc	ra,0x2
    80003868:	d44080e7          	jalr	-700(ra) # 800055a8 <_Z11printStringPKc>
    8000386c:	00000613          	li	a2,0
    80003870:	00a00593          	li	a1,10
    80003874:	0009051b          	sext.w	a0,s2
    80003878:	00002097          	auipc	ra,0x2
    8000387c:	ee0080e7          	jalr	-288(ra) # 80005758 <_Z8printIntiii>
    80003880:	00006517          	auipc	a0,0x6
    80003884:	a2850513          	addi	a0,a0,-1496 # 800092a8 <CONSOLE_STATUS+0x298>
    80003888:	00002097          	auipc	ra,0x2
    8000388c:	d20080e7          	jalr	-736(ra) # 800055a8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003890:	00c00513          	li	a0,12
    80003894:	00000097          	auipc	ra,0x0
    80003898:	d30080e7          	jalr	-720(ra) # 800035c4 <_ZL9fibonaccim>
    8000389c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800038a0:	00005517          	auipc	a0,0x5
    800038a4:	7b050513          	addi	a0,a0,1968 # 80009050 <CONSOLE_STATUS+0x40>
    800038a8:	00002097          	auipc	ra,0x2
    800038ac:	d00080e7          	jalr	-768(ra) # 800055a8 <_Z11printStringPKc>
    800038b0:	00000613          	li	a2,0
    800038b4:	00a00593          	li	a1,10
    800038b8:	0009051b          	sext.w	a0,s2
    800038bc:	00002097          	auipc	ra,0x2
    800038c0:	e9c080e7          	jalr	-356(ra) # 80005758 <_Z8printIntiii>
    800038c4:	00006517          	auipc	a0,0x6
    800038c8:	9e450513          	addi	a0,a0,-1564 # 800092a8 <CONSOLE_STATUS+0x298>
    800038cc:	00002097          	auipc	ra,0x2
    800038d0:	cdc080e7          	jalr	-804(ra) # 800055a8 <_Z11printStringPKc>
    800038d4:	0400006f          	j	80003914 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800038d8:	00005517          	auipc	a0,0x5
    800038dc:	75850513          	addi	a0,a0,1880 # 80009030 <CONSOLE_STATUS+0x20>
    800038e0:	00002097          	auipc	ra,0x2
    800038e4:	cc8080e7          	jalr	-824(ra) # 800055a8 <_Z11printStringPKc>
    800038e8:	00000613          	li	a2,0
    800038ec:	00a00593          	li	a1,10
    800038f0:	00048513          	mv	a0,s1
    800038f4:	00002097          	auipc	ra,0x2
    800038f8:	e64080e7          	jalr	-412(ra) # 80005758 <_Z8printIntiii>
    800038fc:	00006517          	auipc	a0,0x6
    80003900:	9ac50513          	addi	a0,a0,-1620 # 800092a8 <CONSOLE_STATUS+0x298>
    80003904:	00002097          	auipc	ra,0x2
    80003908:	ca4080e7          	jalr	-860(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000390c:	0014849b          	addiw	s1,s1,1
    80003910:	0ff4f493          	andi	s1,s1,255
    80003914:	00500793          	li	a5,5
    80003918:	fc97f0e3          	bgeu	a5,s1,800038d8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000391c:	00006517          	auipc	a0,0x6
    80003920:	d7450513          	addi	a0,a0,-652 # 80009690 <_ZZ12printIntegermE6digits+0xf8>
    80003924:	00002097          	auipc	ra,0x2
    80003928:	c84080e7          	jalr	-892(ra) # 800055a8 <_Z11printStringPKc>
    finishedC = true;
    8000392c:	00100793          	li	a5,1
    80003930:	00008717          	auipc	a4,0x8
    80003934:	2ef70523          	sb	a5,746(a4) # 8000bc1a <_ZL9finishedC>
    thread_dispatch();
    80003938:	ffffe097          	auipc	ra,0xffffe
    8000393c:	b84080e7          	jalr	-1148(ra) # 800014bc <_Z15thread_dispatchv>
}
    80003940:	01813083          	ld	ra,24(sp)
    80003944:	01013403          	ld	s0,16(sp)
    80003948:	00813483          	ld	s1,8(sp)
    8000394c:	00013903          	ld	s2,0(sp)
    80003950:	02010113          	addi	sp,sp,32
    80003954:	00008067          	ret

0000000080003958 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003958:	fe010113          	addi	sp,sp,-32
    8000395c:	00113c23          	sd	ra,24(sp)
    80003960:	00813823          	sd	s0,16(sp)
    80003964:	00913423          	sd	s1,8(sp)
    80003968:	01213023          	sd	s2,0(sp)
    8000396c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003970:	00a00493          	li	s1,10
    80003974:	0400006f          	j	800039b4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003978:	00005517          	auipc	a0,0x5
    8000397c:	6e850513          	addi	a0,a0,1768 # 80009060 <CONSOLE_STATUS+0x50>
    80003980:	00002097          	auipc	ra,0x2
    80003984:	c28080e7          	jalr	-984(ra) # 800055a8 <_Z11printStringPKc>
    80003988:	00000613          	li	a2,0
    8000398c:	00a00593          	li	a1,10
    80003990:	00048513          	mv	a0,s1
    80003994:	00002097          	auipc	ra,0x2
    80003998:	dc4080e7          	jalr	-572(ra) # 80005758 <_Z8printIntiii>
    8000399c:	00006517          	auipc	a0,0x6
    800039a0:	90c50513          	addi	a0,a0,-1780 # 800092a8 <CONSOLE_STATUS+0x298>
    800039a4:	00002097          	auipc	ra,0x2
    800039a8:	c04080e7          	jalr	-1020(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800039ac:	0014849b          	addiw	s1,s1,1
    800039b0:	0ff4f493          	andi	s1,s1,255
    800039b4:	00c00793          	li	a5,12
    800039b8:	fc97f0e3          	bgeu	a5,s1,80003978 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800039bc:	00006517          	auipc	a0,0x6
    800039c0:	d0450513          	addi	a0,a0,-764 # 800096c0 <_ZZ12printIntegermE6digits+0x128>
    800039c4:	00002097          	auipc	ra,0x2
    800039c8:	be4080e7          	jalr	-1052(ra) # 800055a8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800039cc:	00500313          	li	t1,5
    thread_dispatch();
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	aec080e7          	jalr	-1300(ra) # 800014bc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800039d8:	01000513          	li	a0,16
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	be8080e7          	jalr	-1048(ra) # 800035c4 <_ZL9fibonaccim>
    800039e4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800039e8:	00005517          	auipc	a0,0x5
    800039ec:	69050513          	addi	a0,a0,1680 # 80009078 <CONSOLE_STATUS+0x68>
    800039f0:	00002097          	auipc	ra,0x2
    800039f4:	bb8080e7          	jalr	-1096(ra) # 800055a8 <_Z11printStringPKc>
    800039f8:	00000613          	li	a2,0
    800039fc:	00a00593          	li	a1,10
    80003a00:	0009051b          	sext.w	a0,s2
    80003a04:	00002097          	auipc	ra,0x2
    80003a08:	d54080e7          	jalr	-684(ra) # 80005758 <_Z8printIntiii>
    80003a0c:	00006517          	auipc	a0,0x6
    80003a10:	89c50513          	addi	a0,a0,-1892 # 800092a8 <CONSOLE_STATUS+0x298>
    80003a14:	00002097          	auipc	ra,0x2
    80003a18:	b94080e7          	jalr	-1132(ra) # 800055a8 <_Z11printStringPKc>
    80003a1c:	0400006f          	j	80003a5c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a20:	00005517          	auipc	a0,0x5
    80003a24:	64050513          	addi	a0,a0,1600 # 80009060 <CONSOLE_STATUS+0x50>
    80003a28:	00002097          	auipc	ra,0x2
    80003a2c:	b80080e7          	jalr	-1152(ra) # 800055a8 <_Z11printStringPKc>
    80003a30:	00000613          	li	a2,0
    80003a34:	00a00593          	li	a1,10
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	00002097          	auipc	ra,0x2
    80003a40:	d1c080e7          	jalr	-740(ra) # 80005758 <_Z8printIntiii>
    80003a44:	00006517          	auipc	a0,0x6
    80003a48:	86450513          	addi	a0,a0,-1948 # 800092a8 <CONSOLE_STATUS+0x298>
    80003a4c:	00002097          	auipc	ra,0x2
    80003a50:	b5c080e7          	jalr	-1188(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003a54:	0014849b          	addiw	s1,s1,1
    80003a58:	0ff4f493          	andi	s1,s1,255
    80003a5c:	00f00793          	li	a5,15
    80003a60:	fc97f0e3          	bgeu	a5,s1,80003a20 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003a64:	00006517          	auipc	a0,0x6
    80003a68:	c6c50513          	addi	a0,a0,-916 # 800096d0 <_ZZ12printIntegermE6digits+0x138>
    80003a6c:	00002097          	auipc	ra,0x2
    80003a70:	b3c080e7          	jalr	-1220(ra) # 800055a8 <_Z11printStringPKc>
    finishedD = true;
    80003a74:	00100793          	li	a5,1
    80003a78:	00008717          	auipc	a4,0x8
    80003a7c:	1af701a3          	sb	a5,419(a4) # 8000bc1b <_ZL9finishedD>
    thread_dispatch();
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	a3c080e7          	jalr	-1476(ra) # 800014bc <_Z15thread_dispatchv>
}
    80003a88:	01813083          	ld	ra,24(sp)
    80003a8c:	01013403          	ld	s0,16(sp)
    80003a90:	00813483          	ld	s1,8(sp)
    80003a94:	00013903          	ld	s2,0(sp)
    80003a98:	02010113          	addi	sp,sp,32
    80003a9c:	00008067          	ret

0000000080003aa0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003aa0:	fc010113          	addi	sp,sp,-64
    80003aa4:	02113c23          	sd	ra,56(sp)
    80003aa8:	02813823          	sd	s0,48(sp)
    80003aac:	02913423          	sd	s1,40(sp)
    80003ab0:	03213023          	sd	s2,32(sp)
    80003ab4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003ab8:	02000513          	li	a0,32
    80003abc:	fffff097          	auipc	ra,0xfffff
    80003ac0:	b10080e7          	jalr	-1264(ra) # 800025cc <_Znwm>
    80003ac4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	9a4080e7          	jalr	-1628(ra) # 8000246c <_ZN6ThreadC1Ev>
    80003ad0:	00008797          	auipc	a5,0x8
    80003ad4:	ef078793          	addi	a5,a5,-272 # 8000b9c0 <_ZTV7WorkerA+0x10>
    80003ad8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003adc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003ae0:	00006517          	auipc	a0,0x6
    80003ae4:	c0050513          	addi	a0,a0,-1024 # 800096e0 <_ZZ12printIntegermE6digits+0x148>
    80003ae8:	00002097          	auipc	ra,0x2
    80003aec:	ac0080e7          	jalr	-1344(ra) # 800055a8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003af0:	02000513          	li	a0,32
    80003af4:	fffff097          	auipc	ra,0xfffff
    80003af8:	ad8080e7          	jalr	-1320(ra) # 800025cc <_Znwm>
    80003afc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003b00:	fffff097          	auipc	ra,0xfffff
    80003b04:	96c080e7          	jalr	-1684(ra) # 8000246c <_ZN6ThreadC1Ev>
    80003b08:	00008797          	auipc	a5,0x8
    80003b0c:	ee078793          	addi	a5,a5,-288 # 8000b9e8 <_ZTV7WorkerB+0x10>
    80003b10:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003b14:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003b18:	00006517          	auipc	a0,0x6
    80003b1c:	be050513          	addi	a0,a0,-1056 # 800096f8 <_ZZ12printIntegermE6digits+0x160>
    80003b20:	00002097          	auipc	ra,0x2
    80003b24:	a88080e7          	jalr	-1400(ra) # 800055a8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003b28:	02000513          	li	a0,32
    80003b2c:	fffff097          	auipc	ra,0xfffff
    80003b30:	aa0080e7          	jalr	-1376(ra) # 800025cc <_Znwm>
    80003b34:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	934080e7          	jalr	-1740(ra) # 8000246c <_ZN6ThreadC1Ev>
    80003b40:	00008797          	auipc	a5,0x8
    80003b44:	ed078793          	addi	a5,a5,-304 # 8000ba10 <_ZTV7WorkerC+0x10>
    80003b48:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003b4c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003b50:	00006517          	auipc	a0,0x6
    80003b54:	bc050513          	addi	a0,a0,-1088 # 80009710 <_ZZ12printIntegermE6digits+0x178>
    80003b58:	00002097          	auipc	ra,0x2
    80003b5c:	a50080e7          	jalr	-1456(ra) # 800055a8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003b60:	02000513          	li	a0,32
    80003b64:	fffff097          	auipc	ra,0xfffff
    80003b68:	a68080e7          	jalr	-1432(ra) # 800025cc <_Znwm>
    80003b6c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003b70:	fffff097          	auipc	ra,0xfffff
    80003b74:	8fc080e7          	jalr	-1796(ra) # 8000246c <_ZN6ThreadC1Ev>
    80003b78:	00008797          	auipc	a5,0x8
    80003b7c:	ec078793          	addi	a5,a5,-320 # 8000ba38 <_ZTV7WorkerD+0x10>
    80003b80:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003b84:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003b88:	00006517          	auipc	a0,0x6
    80003b8c:	ba050513          	addi	a0,a0,-1120 # 80009728 <_ZZ12printIntegermE6digits+0x190>
    80003b90:	00002097          	auipc	ra,0x2
    80003b94:	a18080e7          	jalr	-1512(ra) # 800055a8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003b98:	00000493          	li	s1,0
    80003b9c:	00300793          	li	a5,3
    80003ba0:	0297c663          	blt	a5,s1,80003bcc <_Z20Threads_CPP_API_testv+0x12c>

        threads[i]->start();
    80003ba4:	00349793          	slli	a5,s1,0x3
    80003ba8:	fe040713          	addi	a4,s0,-32
    80003bac:	00f707b3          	add	a5,a4,a5
    80003bb0:	fe07b503          	ld	a0,-32(a5)
    80003bb4:	fffff097          	auipc	ra,0xfffff
    80003bb8:	844080e7          	jalr	-1980(ra) # 800023f8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003bbc:	0014849b          	addiw	s1,s1,1
    80003bc0:	fddff06f          	j	80003b9c <_Z20Threads_CPP_API_testv+0xfc>

    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {

        Thread::dispatch();
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	864080e7          	jalr	-1948(ra) # 80002428 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003bcc:	00008797          	auipc	a5,0x8
    80003bd0:	04c7c783          	lbu	a5,76(a5) # 8000bc18 <_ZL9finishedA>
    80003bd4:	fe0788e3          	beqz	a5,80003bc4 <_Z20Threads_CPP_API_testv+0x124>
    80003bd8:	00008797          	auipc	a5,0x8
    80003bdc:	0417c783          	lbu	a5,65(a5) # 8000bc19 <_ZL9finishedB>
    80003be0:	fe0782e3          	beqz	a5,80003bc4 <_Z20Threads_CPP_API_testv+0x124>
    80003be4:	00008797          	auipc	a5,0x8
    80003be8:	0367c783          	lbu	a5,54(a5) # 8000bc1a <_ZL9finishedC>
    80003bec:	fc078ce3          	beqz	a5,80003bc4 <_Z20Threads_CPP_API_testv+0x124>
    80003bf0:	00008797          	auipc	a5,0x8
    80003bf4:	02b7c783          	lbu	a5,43(a5) # 8000bc1b <_ZL9finishedD>
    80003bf8:	fc0786e3          	beqz	a5,80003bc4 <_Z20Threads_CPP_API_testv+0x124>
    80003bfc:	fc040493          	addi	s1,s0,-64
    80003c00:	0080006f          	j	80003c08 <_Z20Threads_CPP_API_testv+0x168>

    }

    for (auto thread: threads) { delete thread; }
    80003c04:	00848493          	addi	s1,s1,8
    80003c08:	fe040793          	addi	a5,s0,-32
    80003c0c:	08f48663          	beq	s1,a5,80003c98 <_Z20Threads_CPP_API_testv+0x1f8>
    80003c10:	0004b503          	ld	a0,0(s1)
    80003c14:	fe0508e3          	beqz	a0,80003c04 <_Z20Threads_CPP_API_testv+0x164>
    80003c18:	00053783          	ld	a5,0(a0)
    80003c1c:	0087b783          	ld	a5,8(a5)
    80003c20:	000780e7          	jalr	a5
    80003c24:	fe1ff06f          	j	80003c04 <_Z20Threads_CPP_API_testv+0x164>
    80003c28:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	9ec080e7          	jalr	-1556(ra) # 8000261c <_ZdlPv>
    80003c38:	00090513          	mv	a0,s2
    80003c3c:	00009097          	auipc	ra,0x9
    80003c40:	0ec080e7          	jalr	236(ra) # 8000cd28 <_Unwind_Resume>
    80003c44:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003c48:	00048513          	mv	a0,s1
    80003c4c:	fffff097          	auipc	ra,0xfffff
    80003c50:	9d0080e7          	jalr	-1584(ra) # 8000261c <_ZdlPv>
    80003c54:	00090513          	mv	a0,s2
    80003c58:	00009097          	auipc	ra,0x9
    80003c5c:	0d0080e7          	jalr	208(ra) # 8000cd28 <_Unwind_Resume>
    80003c60:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003c64:	00048513          	mv	a0,s1
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	9b4080e7          	jalr	-1612(ra) # 8000261c <_ZdlPv>
    80003c70:	00090513          	mv	a0,s2
    80003c74:	00009097          	auipc	ra,0x9
    80003c78:	0b4080e7          	jalr	180(ra) # 8000cd28 <_Unwind_Resume>
    80003c7c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003c80:	00048513          	mv	a0,s1
    80003c84:	fffff097          	auipc	ra,0xfffff
    80003c88:	998080e7          	jalr	-1640(ra) # 8000261c <_ZdlPv>
    80003c8c:	00090513          	mv	a0,s2
    80003c90:	00009097          	auipc	ra,0x9
    80003c94:	098080e7          	jalr	152(ra) # 8000cd28 <_Unwind_Resume>
}
    80003c98:	03813083          	ld	ra,56(sp)
    80003c9c:	03013403          	ld	s0,48(sp)
    80003ca0:	02813483          	ld	s1,40(sp)
    80003ca4:	02013903          	ld	s2,32(sp)
    80003ca8:	04010113          	addi	sp,sp,64
    80003cac:	00008067          	ret

0000000080003cb0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003cb0:	ff010113          	addi	sp,sp,-16
    80003cb4:	00113423          	sd	ra,8(sp)
    80003cb8:	00813023          	sd	s0,0(sp)
    80003cbc:	01010413          	addi	s0,sp,16
    80003cc0:	00008797          	auipc	a5,0x8
    80003cc4:	d0078793          	addi	a5,a5,-768 # 8000b9c0 <_ZTV7WorkerA+0x10>
    80003cc8:	00f53023          	sd	a5,0(a0)
    80003ccc:	fffff097          	auipc	ra,0xfffff
    80003cd0:	9e0080e7          	jalr	-1568(ra) # 800026ac <_ZN6ThreadD1Ev>
    80003cd4:	00813083          	ld	ra,8(sp)
    80003cd8:	00013403          	ld	s0,0(sp)
    80003cdc:	01010113          	addi	sp,sp,16
    80003ce0:	00008067          	ret

0000000080003ce4 <_ZN7WorkerAD0Ev>:
    80003ce4:	fe010113          	addi	sp,sp,-32
    80003ce8:	00113c23          	sd	ra,24(sp)
    80003cec:	00813823          	sd	s0,16(sp)
    80003cf0:	00913423          	sd	s1,8(sp)
    80003cf4:	02010413          	addi	s0,sp,32
    80003cf8:	00050493          	mv	s1,a0
    80003cfc:	00008797          	auipc	a5,0x8
    80003d00:	cc478793          	addi	a5,a5,-828 # 8000b9c0 <_ZTV7WorkerA+0x10>
    80003d04:	00f53023          	sd	a5,0(a0)
    80003d08:	fffff097          	auipc	ra,0xfffff
    80003d0c:	9a4080e7          	jalr	-1628(ra) # 800026ac <_ZN6ThreadD1Ev>
    80003d10:	00048513          	mv	a0,s1
    80003d14:	fffff097          	auipc	ra,0xfffff
    80003d18:	908080e7          	jalr	-1784(ra) # 8000261c <_ZdlPv>
    80003d1c:	01813083          	ld	ra,24(sp)
    80003d20:	01013403          	ld	s0,16(sp)
    80003d24:	00813483          	ld	s1,8(sp)
    80003d28:	02010113          	addi	sp,sp,32
    80003d2c:	00008067          	ret

0000000080003d30 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00113423          	sd	ra,8(sp)
    80003d38:	00813023          	sd	s0,0(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    80003d40:	00008797          	auipc	a5,0x8
    80003d44:	ca878793          	addi	a5,a5,-856 # 8000b9e8 <_ZTV7WorkerB+0x10>
    80003d48:	00f53023          	sd	a5,0(a0)
    80003d4c:	fffff097          	auipc	ra,0xfffff
    80003d50:	960080e7          	jalr	-1696(ra) # 800026ac <_ZN6ThreadD1Ev>
    80003d54:	00813083          	ld	ra,8(sp)
    80003d58:	00013403          	ld	s0,0(sp)
    80003d5c:	01010113          	addi	sp,sp,16
    80003d60:	00008067          	ret

0000000080003d64 <_ZN7WorkerBD0Ev>:
    80003d64:	fe010113          	addi	sp,sp,-32
    80003d68:	00113c23          	sd	ra,24(sp)
    80003d6c:	00813823          	sd	s0,16(sp)
    80003d70:	00913423          	sd	s1,8(sp)
    80003d74:	02010413          	addi	s0,sp,32
    80003d78:	00050493          	mv	s1,a0
    80003d7c:	00008797          	auipc	a5,0x8
    80003d80:	c6c78793          	addi	a5,a5,-916 # 8000b9e8 <_ZTV7WorkerB+0x10>
    80003d84:	00f53023          	sd	a5,0(a0)
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	924080e7          	jalr	-1756(ra) # 800026ac <_ZN6ThreadD1Ev>
    80003d90:	00048513          	mv	a0,s1
    80003d94:	fffff097          	auipc	ra,0xfffff
    80003d98:	888080e7          	jalr	-1912(ra) # 8000261c <_ZdlPv>
    80003d9c:	01813083          	ld	ra,24(sp)
    80003da0:	01013403          	ld	s0,16(sp)
    80003da4:	00813483          	ld	s1,8(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret

0000000080003db0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003db0:	ff010113          	addi	sp,sp,-16
    80003db4:	00113423          	sd	ra,8(sp)
    80003db8:	00813023          	sd	s0,0(sp)
    80003dbc:	01010413          	addi	s0,sp,16
    80003dc0:	00008797          	auipc	a5,0x8
    80003dc4:	c5078793          	addi	a5,a5,-944 # 8000ba10 <_ZTV7WorkerC+0x10>
    80003dc8:	00f53023          	sd	a5,0(a0)
    80003dcc:	fffff097          	auipc	ra,0xfffff
    80003dd0:	8e0080e7          	jalr	-1824(ra) # 800026ac <_ZN6ThreadD1Ev>
    80003dd4:	00813083          	ld	ra,8(sp)
    80003dd8:	00013403          	ld	s0,0(sp)
    80003ddc:	01010113          	addi	sp,sp,16
    80003de0:	00008067          	ret

0000000080003de4 <_ZN7WorkerCD0Ev>:
    80003de4:	fe010113          	addi	sp,sp,-32
    80003de8:	00113c23          	sd	ra,24(sp)
    80003dec:	00813823          	sd	s0,16(sp)
    80003df0:	00913423          	sd	s1,8(sp)
    80003df4:	02010413          	addi	s0,sp,32
    80003df8:	00050493          	mv	s1,a0
    80003dfc:	00008797          	auipc	a5,0x8
    80003e00:	c1478793          	addi	a5,a5,-1004 # 8000ba10 <_ZTV7WorkerC+0x10>
    80003e04:	00f53023          	sd	a5,0(a0)
    80003e08:	fffff097          	auipc	ra,0xfffff
    80003e0c:	8a4080e7          	jalr	-1884(ra) # 800026ac <_ZN6ThreadD1Ev>
    80003e10:	00048513          	mv	a0,s1
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	808080e7          	jalr	-2040(ra) # 8000261c <_ZdlPv>
    80003e1c:	01813083          	ld	ra,24(sp)
    80003e20:	01013403          	ld	s0,16(sp)
    80003e24:	00813483          	ld	s1,8(sp)
    80003e28:	02010113          	addi	sp,sp,32
    80003e2c:	00008067          	ret

0000000080003e30 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003e30:	ff010113          	addi	sp,sp,-16
    80003e34:	00113423          	sd	ra,8(sp)
    80003e38:	00813023          	sd	s0,0(sp)
    80003e3c:	01010413          	addi	s0,sp,16
    80003e40:	00008797          	auipc	a5,0x8
    80003e44:	bf878793          	addi	a5,a5,-1032 # 8000ba38 <_ZTV7WorkerD+0x10>
    80003e48:	00f53023          	sd	a5,0(a0)
    80003e4c:	fffff097          	auipc	ra,0xfffff
    80003e50:	860080e7          	jalr	-1952(ra) # 800026ac <_ZN6ThreadD1Ev>
    80003e54:	00813083          	ld	ra,8(sp)
    80003e58:	00013403          	ld	s0,0(sp)
    80003e5c:	01010113          	addi	sp,sp,16
    80003e60:	00008067          	ret

0000000080003e64 <_ZN7WorkerDD0Ev>:
    80003e64:	fe010113          	addi	sp,sp,-32
    80003e68:	00113c23          	sd	ra,24(sp)
    80003e6c:	00813823          	sd	s0,16(sp)
    80003e70:	00913423          	sd	s1,8(sp)
    80003e74:	02010413          	addi	s0,sp,32
    80003e78:	00050493          	mv	s1,a0
    80003e7c:	00008797          	auipc	a5,0x8
    80003e80:	bbc78793          	addi	a5,a5,-1092 # 8000ba38 <_ZTV7WorkerD+0x10>
    80003e84:	00f53023          	sd	a5,0(a0)
    80003e88:	fffff097          	auipc	ra,0xfffff
    80003e8c:	824080e7          	jalr	-2012(ra) # 800026ac <_ZN6ThreadD1Ev>
    80003e90:	00048513          	mv	a0,s1
    80003e94:	ffffe097          	auipc	ra,0xffffe
    80003e98:	788080e7          	jalr	1928(ra) # 8000261c <_ZdlPv>
    80003e9c:	01813083          	ld	ra,24(sp)
    80003ea0:	01013403          	ld	s0,16(sp)
    80003ea4:	00813483          	ld	s1,8(sp)
    80003ea8:	02010113          	addi	sp,sp,32
    80003eac:	00008067          	ret

0000000080003eb0 <_ZN7WorkerA3runEv>:
    void run() override {
    80003eb0:	ff010113          	addi	sp,sp,-16
    80003eb4:	00113423          	sd	ra,8(sp)
    80003eb8:	00813023          	sd	s0,0(sp)
    80003ebc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003ec0:	00000593          	li	a1,0
    80003ec4:	fffff097          	auipc	ra,0xfffff
    80003ec8:	774080e7          	jalr	1908(ra) # 80003638 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003ecc:	00813083          	ld	ra,8(sp)
    80003ed0:	00013403          	ld	s0,0(sp)
    80003ed4:	01010113          	addi	sp,sp,16
    80003ed8:	00008067          	ret

0000000080003edc <_ZN7WorkerB3runEv>:
    void run() override {
    80003edc:	ff010113          	addi	sp,sp,-16
    80003ee0:	00113423          	sd	ra,8(sp)
    80003ee4:	00813023          	sd	s0,0(sp)
    80003ee8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003eec:	00000593          	li	a1,0
    80003ef0:	00000097          	auipc	ra,0x0
    80003ef4:	814080e7          	jalr	-2028(ra) # 80003704 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003ef8:	00813083          	ld	ra,8(sp)
    80003efc:	00013403          	ld	s0,0(sp)
    80003f00:	01010113          	addi	sp,sp,16
    80003f04:	00008067          	ret

0000000080003f08 <_ZN7WorkerC3runEv>:
    void run() override {
    80003f08:	ff010113          	addi	sp,sp,-16
    80003f0c:	00113423          	sd	ra,8(sp)
    80003f10:	00813023          	sd	s0,0(sp)
    80003f14:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003f18:	00000593          	li	a1,0
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	8bc080e7          	jalr	-1860(ra) # 800037d8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003f24:	00813083          	ld	ra,8(sp)
    80003f28:	00013403          	ld	s0,0(sp)
    80003f2c:	01010113          	addi	sp,sp,16
    80003f30:	00008067          	ret

0000000080003f34 <_ZN7WorkerD3runEv>:
    void run() override {
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00113423          	sd	ra,8(sp)
    80003f3c:	00813023          	sd	s0,0(sp)
    80003f40:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003f44:	00000593          	li	a1,0
    80003f48:	00000097          	auipc	ra,0x0
    80003f4c:	a10080e7          	jalr	-1520(ra) # 80003958 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003f50:	00813083          	ld	ra,8(sp)
    80003f54:	00013403          	ld	s0,0(sp)
    80003f58:	01010113          	addi	sp,sp,16
    80003f5c:	00008067          	ret

0000000080003f60 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003f60:	f8010113          	addi	sp,sp,-128
    80003f64:	06113c23          	sd	ra,120(sp)
    80003f68:	06813823          	sd	s0,112(sp)
    80003f6c:	06913423          	sd	s1,104(sp)
    80003f70:	07213023          	sd	s2,96(sp)
    80003f74:	05313c23          	sd	s3,88(sp)
    80003f78:	05413823          	sd	s4,80(sp)
    80003f7c:	05513423          	sd	s5,72(sp)
    80003f80:	05613023          	sd	s6,64(sp)
    80003f84:	03713c23          	sd	s7,56(sp)
    80003f88:	03813823          	sd	s8,48(sp)
    80003f8c:	03913423          	sd	s9,40(sp)
    80003f90:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003f94:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003f98:	00005517          	auipc	a0,0x5
    80003f9c:	61050513          	addi	a0,a0,1552 # 800095a8 <_ZZ12printIntegermE6digits+0x10>
    80003fa0:	00001097          	auipc	ra,0x1
    80003fa4:	608080e7          	jalr	1544(ra) # 800055a8 <_Z11printStringPKc>
    getString(input, 30);
    80003fa8:	01e00593          	li	a1,30
    80003fac:	f8040493          	addi	s1,s0,-128
    80003fb0:	00048513          	mv	a0,s1
    80003fb4:	00001097          	auipc	ra,0x1
    80003fb8:	67c080e7          	jalr	1660(ra) # 80005630 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003fbc:	00048513          	mv	a0,s1
    80003fc0:	00001097          	auipc	ra,0x1
    80003fc4:	748080e7          	jalr	1864(ra) # 80005708 <_Z11stringToIntPKc>
    80003fc8:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003fcc:	00005517          	auipc	a0,0x5
    80003fd0:	5fc50513          	addi	a0,a0,1532 # 800095c8 <_ZZ12printIntegermE6digits+0x30>
    80003fd4:	00001097          	auipc	ra,0x1
    80003fd8:	5d4080e7          	jalr	1492(ra) # 800055a8 <_Z11printStringPKc>
    getString(input, 30);
    80003fdc:	01e00593          	li	a1,30
    80003fe0:	00048513          	mv	a0,s1
    80003fe4:	00001097          	auipc	ra,0x1
    80003fe8:	64c080e7          	jalr	1612(ra) # 80005630 <_Z9getStringPci>
    n = stringToInt(input);
    80003fec:	00048513          	mv	a0,s1
    80003ff0:	00001097          	auipc	ra,0x1
    80003ff4:	718080e7          	jalr	1816(ra) # 80005708 <_Z11stringToIntPKc>
    80003ff8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003ffc:	00005517          	auipc	a0,0x5
    80004000:	5ec50513          	addi	a0,a0,1516 # 800095e8 <_ZZ12printIntegermE6digits+0x50>
    80004004:	00001097          	auipc	ra,0x1
    80004008:	5a4080e7          	jalr	1444(ra) # 800055a8 <_Z11printStringPKc>
    printInt(threadNum);
    8000400c:	00000613          	li	a2,0
    80004010:	00a00593          	li	a1,10
    80004014:	00098513          	mv	a0,s3
    80004018:	00001097          	auipc	ra,0x1
    8000401c:	740080e7          	jalr	1856(ra) # 80005758 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004020:	00005517          	auipc	a0,0x5
    80004024:	5e050513          	addi	a0,a0,1504 # 80009600 <_ZZ12printIntegermE6digits+0x68>
    80004028:	00001097          	auipc	ra,0x1
    8000402c:	580080e7          	jalr	1408(ra) # 800055a8 <_Z11printStringPKc>
    printInt(n);
    80004030:	00000613          	li	a2,0
    80004034:	00a00593          	li	a1,10
    80004038:	00048513          	mv	a0,s1
    8000403c:	00001097          	auipc	ra,0x1
    80004040:	71c080e7          	jalr	1820(ra) # 80005758 <_Z8printIntiii>
    printString(".\n");
    80004044:	00005517          	auipc	a0,0x5
    80004048:	5d450513          	addi	a0,a0,1492 # 80009618 <_ZZ12printIntegermE6digits+0x80>
    8000404c:	00001097          	auipc	ra,0x1
    80004050:	55c080e7          	jalr	1372(ra) # 800055a8 <_Z11printStringPKc>
    if (threadNum > n) {
    80004054:	0334cc63          	blt	s1,s3,8000408c <_Z20testConsumerProducerv+0x12c>
    } else if (threadNum < 1) {
    80004058:	05305463          	blez	s3,800040a0 <_Z20testConsumerProducerv+0x140>
    printString("Kreiram buffer\n");
    8000405c:	00005517          	auipc	a0,0x5
    80004060:	6f450513          	addi	a0,a0,1780 # 80009750 <_ZZ12printIntegermE6digits+0x1b8>
    80004064:	00001097          	auipc	ra,0x1
    80004068:	544080e7          	jalr	1348(ra) # 800055a8 <_Z11printStringPKc>
    BufferCPP *buffer = new BufferCPP(n);
    8000406c:	03800513          	li	a0,56
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	55c080e7          	jalr	1372(ra) # 800025cc <_Znwm>
    80004078:	00050a93          	mv	s5,a0
    8000407c:	00048593          	mv	a1,s1
    80004080:	00001097          	auipc	ra,0x1
    80004084:	7f8080e7          	jalr	2040(ra) # 80005878 <_ZN9BufferCPPC1Ei>
    80004088:	0300006f          	j	800040b8 <_Z20testConsumerProducerv+0x158>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000408c:	00005517          	auipc	a0,0x5
    80004090:	59450513          	addi	a0,a0,1428 # 80009620 <_ZZ12printIntegermE6digits+0x88>
    80004094:	00001097          	auipc	ra,0x1
    80004098:	514080e7          	jalr	1300(ra) # 800055a8 <_Z11printStringPKc>
        return;
    8000409c:	0140006f          	j	800040b0 <_Z20testConsumerProducerv+0x150>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800040a0:	00005517          	auipc	a0,0x5
    800040a4:	5c050513          	addi	a0,a0,1472 # 80009660 <_ZZ12printIntegermE6digits+0xc8>
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	500080e7          	jalr	1280(ra) # 800055a8 <_Z11printStringPKc>
        return;
    800040b0:	000c0113          	mv	sp,s8
    800040b4:	26c0006f          	j	80004320 <_Z20testConsumerProducerv+0x3c0>
    printString("Kreiram semafor\n");
    800040b8:	00005517          	auipc	a0,0x5
    800040bc:	6a850513          	addi	a0,a0,1704 # 80009760 <_ZZ12printIntegermE6digits+0x1c8>
    800040c0:	00001097          	auipc	ra,0x1
    800040c4:	4e8080e7          	jalr	1256(ra) # 800055a8 <_Z11printStringPKc>
    waitForAll = new Semaphore(0);
    800040c8:	01000513          	li	a0,16
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	500080e7          	jalr	1280(ra) # 800025cc <_Znwm>
    800040d4:	00050493          	mv	s1,a0
    800040d8:	00000593          	li	a1,0
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	3d4080e7          	jalr	980(ra) # 800024b0 <_ZN9SemaphoreC1Ej>
    800040e4:	00008917          	auipc	s2,0x8
    800040e8:	b3c90913          	addi	s2,s2,-1220 # 8000bc20 <_ZL9threadEnd>
    800040ec:	00993423          	sd	s1,8(s2)
    printString("Kreiram consumer\n");
    800040f0:	00005517          	auipc	a0,0x5
    800040f4:	68850513          	addi	a0,a0,1672 # 80009778 <_ZZ12printIntegermE6digits+0x1e0>
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	4b0080e7          	jalr	1200(ra) # 800055a8 <_Z11printStringPKc>
    Thread *producers[threadNum];
    80004100:	00399793          	slli	a5,s3,0x3
    80004104:	00f78793          	addi	a5,a5,15
    80004108:	ff07f793          	andi	a5,a5,-16
    8000410c:	40f10133          	sub	sp,sp,a5
    80004110:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004114:	0019871b          	addiw	a4,s3,1
    80004118:	00171793          	slli	a5,a4,0x1
    8000411c:	00e787b3          	add	a5,a5,a4
    80004120:	00379793          	slli	a5,a5,0x3
    80004124:	00f78793          	addi	a5,a5,15
    80004128:	ff07f793          	andi	a5,a5,-16
    8000412c:	40f10133          	sub	sp,sp,a5
    80004130:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004134:	00199493          	slli	s1,s3,0x1
    80004138:	013484b3          	add	s1,s1,s3
    8000413c:	00349493          	slli	s1,s1,0x3
    80004140:	009b04b3          	add	s1,s6,s1
    80004144:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004148:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000414c:	00893783          	ld	a5,8(s2)
    80004150:	00f4b823          	sd	a5,16(s1)
    printString("Kreiram consumer\n");
    80004154:	00005517          	auipc	a0,0x5
    80004158:	62450513          	addi	a0,a0,1572 # 80009778 <_ZZ12printIntegermE6digits+0x1e0>
    8000415c:	00001097          	auipc	ra,0x1
    80004160:	44c080e7          	jalr	1100(ra) # 800055a8 <_Z11printStringPKc>
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004164:	02800513          	li	a0,40
    80004168:	ffffe097          	auipc	ra,0xffffe
    8000416c:	464080e7          	jalr	1124(ra) # 800025cc <_Znwm>
    80004170:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004174:	ffffe097          	auipc	ra,0xffffe
    80004178:	2f8080e7          	jalr	760(ra) # 8000246c <_ZN6ThreadC1Ev>
    8000417c:	00008797          	auipc	a5,0x8
    80004180:	93478793          	addi	a5,a5,-1740 # 8000bab0 <_ZTV8Consumer+0x10>
    80004184:	00fbb023          	sd	a5,0(s7)
    80004188:	029bb023          	sd	s1,32(s7)
    printString("Startuje consumer\n");
    8000418c:	00005517          	auipc	a0,0x5
    80004190:	60450513          	addi	a0,a0,1540 # 80009790 <_ZZ12printIntegermE6digits+0x1f8>
    80004194:	00001097          	auipc	ra,0x1
    80004198:	414080e7          	jalr	1044(ra) # 800055a8 <_Z11printStringPKc>
    consumer->start();
    8000419c:	000b8513          	mv	a0,s7
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	258080e7          	jalr	600(ra) # 800023f8 <_ZN6Thread5startEv>
    printString("Consumer startovan\n");
    800041a8:	00005517          	auipc	a0,0x5
    800041ac:	60050513          	addi	a0,a0,1536 # 800097a8 <_ZZ12printIntegermE6digits+0x210>
    800041b0:	00001097          	auipc	ra,0x1
    800041b4:	3f8080e7          	jalr	1016(ra) # 800055a8 <_Z11printStringPKc>
    threadData[0].id = 0;
    800041b8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800041bc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800041c0:	00008797          	auipc	a5,0x8
    800041c4:	a687b783          	ld	a5,-1432(a5) # 8000bc28 <_ZL10waitForAll>
    800041c8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800041cc:	02800513          	li	a0,40
    800041d0:	ffffe097          	auipc	ra,0xffffe
    800041d4:	3fc080e7          	jalr	1020(ra) # 800025cc <_Znwm>
    800041d8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800041dc:	ffffe097          	auipc	ra,0xffffe
    800041e0:	290080e7          	jalr	656(ra) # 8000246c <_ZN6ThreadC1Ev>
    800041e4:	00008797          	auipc	a5,0x8
    800041e8:	87c78793          	addi	a5,a5,-1924 # 8000ba60 <_ZTV16ProducerKeyborad+0x10>
    800041ec:	00f4b023          	sd	a5,0(s1)
    800041f0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800041f4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800041f8:	00048513          	mv	a0,s1
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	1fc080e7          	jalr	508(ra) # 800023f8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004204:	00100913          	li	s2,1
    80004208:	0300006f          	j	80004238 <_Z20testConsumerProducerv+0x2d8>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000420c:	00008797          	auipc	a5,0x8
    80004210:	87c78793          	addi	a5,a5,-1924 # 8000ba88 <_ZTV8Producer+0x10>
    80004214:	00fcb023          	sd	a5,0(s9)
    80004218:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000421c:	00391793          	slli	a5,s2,0x3
    80004220:	00fa07b3          	add	a5,s4,a5
    80004224:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004228:	000c8513          	mv	a0,s9
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	1cc080e7          	jalr	460(ra) # 800023f8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004234:	0019091b          	addiw	s2,s2,1
    80004238:	05395263          	bge	s2,s3,8000427c <_Z20testConsumerProducerv+0x31c>
        threadData[i].id = i;
    8000423c:	00191493          	slli	s1,s2,0x1
    80004240:	012484b3          	add	s1,s1,s2
    80004244:	00349493          	slli	s1,s1,0x3
    80004248:	009b04b3          	add	s1,s6,s1
    8000424c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004250:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004254:	00008797          	auipc	a5,0x8
    80004258:	9d47b783          	ld	a5,-1580(a5) # 8000bc28 <_ZL10waitForAll>
    8000425c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004260:	02800513          	li	a0,40
    80004264:	ffffe097          	auipc	ra,0xffffe
    80004268:	368080e7          	jalr	872(ra) # 800025cc <_Znwm>
    8000426c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	1fc080e7          	jalr	508(ra) # 8000246c <_ZN6ThreadC1Ev>
    80004278:	f95ff06f          	j	8000420c <_Z20testConsumerProducerv+0x2ac>
    Thread::dispatch();
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	1ac080e7          	jalr	428(ra) # 80002428 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004284:	00000493          	li	s1,0
    80004288:	0099ce63          	blt	s3,s1,800042a4 <_Z20testConsumerProducerv+0x344>
        waitForAll->wait();
    8000428c:	00008517          	auipc	a0,0x8
    80004290:	99c53503          	ld	a0,-1636(a0) # 8000bc28 <_ZL10waitForAll>
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	290080e7          	jalr	656(ra) # 80002524 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000429c:	0014849b          	addiw	s1,s1,1
    800042a0:	fe9ff06f          	j	80004288 <_Z20testConsumerProducerv+0x328>
    delete waitForAll;
    800042a4:	00008517          	auipc	a0,0x8
    800042a8:	98453503          	ld	a0,-1660(a0) # 8000bc28 <_ZL10waitForAll>
    800042ac:	00050863          	beqz	a0,800042bc <_Z20testConsumerProducerv+0x35c>
    800042b0:	00053783          	ld	a5,0(a0)
    800042b4:	0087b783          	ld	a5,8(a5)
    800042b8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800042bc:	00000493          	li	s1,0
    800042c0:	0080006f          	j	800042c8 <_Z20testConsumerProducerv+0x368>
    for (int i = 0; i < threadNum; i++) {
    800042c4:	0014849b          	addiw	s1,s1,1
    800042c8:	0334d263          	bge	s1,s3,800042ec <_Z20testConsumerProducerv+0x38c>
        delete producers[i];
    800042cc:	00349793          	slli	a5,s1,0x3
    800042d0:	00fa07b3          	add	a5,s4,a5
    800042d4:	0007b503          	ld	a0,0(a5)
    800042d8:	fe0506e3          	beqz	a0,800042c4 <_Z20testConsumerProducerv+0x364>
    800042dc:	00053783          	ld	a5,0(a0)
    800042e0:	0087b783          	ld	a5,8(a5)
    800042e4:	000780e7          	jalr	a5
    800042e8:	fddff06f          	j	800042c4 <_Z20testConsumerProducerv+0x364>
    delete consumer;
    800042ec:	000b8a63          	beqz	s7,80004300 <_Z20testConsumerProducerv+0x3a0>
    800042f0:	000bb783          	ld	a5,0(s7)
    800042f4:	0087b783          	ld	a5,8(a5)
    800042f8:	000b8513          	mv	a0,s7
    800042fc:	000780e7          	jalr	a5
    delete buffer;
    80004300:	000a8e63          	beqz	s5,8000431c <_Z20testConsumerProducerv+0x3bc>
    80004304:	000a8513          	mv	a0,s5
    80004308:	00002097          	auipc	ra,0x2
    8000430c:	868080e7          	jalr	-1944(ra) # 80005b70 <_ZN9BufferCPPD1Ev>
    80004310:	000a8513          	mv	a0,s5
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	308080e7          	jalr	776(ra) # 8000261c <_ZdlPv>
    8000431c:	000c0113          	mv	sp,s8
}
    80004320:	f8040113          	addi	sp,s0,-128
    80004324:	07813083          	ld	ra,120(sp)
    80004328:	07013403          	ld	s0,112(sp)
    8000432c:	06813483          	ld	s1,104(sp)
    80004330:	06013903          	ld	s2,96(sp)
    80004334:	05813983          	ld	s3,88(sp)
    80004338:	05013a03          	ld	s4,80(sp)
    8000433c:	04813a83          	ld	s5,72(sp)
    80004340:	04013b03          	ld	s6,64(sp)
    80004344:	03813b83          	ld	s7,56(sp)
    80004348:	03013c03          	ld	s8,48(sp)
    8000434c:	02813c83          	ld	s9,40(sp)
    80004350:	08010113          	addi	sp,sp,128
    80004354:	00008067          	ret
    80004358:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000435c:	000a8513          	mv	a0,s5
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	2bc080e7          	jalr	700(ra) # 8000261c <_ZdlPv>
    80004368:	00048513          	mv	a0,s1
    8000436c:	00009097          	auipc	ra,0x9
    80004370:	9bc080e7          	jalr	-1604(ra) # 8000cd28 <_Unwind_Resume>
    80004374:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004378:	00048513          	mv	a0,s1
    8000437c:	ffffe097          	auipc	ra,0xffffe
    80004380:	2a0080e7          	jalr	672(ra) # 8000261c <_ZdlPv>
    80004384:	00090513          	mv	a0,s2
    80004388:	00009097          	auipc	ra,0x9
    8000438c:	9a0080e7          	jalr	-1632(ra) # 8000cd28 <_Unwind_Resume>
    80004390:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004394:	000b8513          	mv	a0,s7
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	284080e7          	jalr	644(ra) # 8000261c <_ZdlPv>
    800043a0:	00048513          	mv	a0,s1
    800043a4:	00009097          	auipc	ra,0x9
    800043a8:	984080e7          	jalr	-1660(ra) # 8000cd28 <_Unwind_Resume>
    800043ac:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800043b0:	00048513          	mv	a0,s1
    800043b4:	ffffe097          	auipc	ra,0xffffe
    800043b8:	268080e7          	jalr	616(ra) # 8000261c <_ZdlPv>
    800043bc:	00090513          	mv	a0,s2
    800043c0:	00009097          	auipc	ra,0x9
    800043c4:	968080e7          	jalr	-1688(ra) # 8000cd28 <_Unwind_Resume>
    800043c8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800043cc:	000c8513          	mv	a0,s9
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	24c080e7          	jalr	588(ra) # 8000261c <_ZdlPv>
    800043d8:	00048513          	mv	a0,s1
    800043dc:	00009097          	auipc	ra,0x9
    800043e0:	94c080e7          	jalr	-1716(ra) # 8000cd28 <_Unwind_Resume>

00000000800043e4 <_ZN8Consumer3runEv>:
    void run() override {
    800043e4:	fd010113          	addi	sp,sp,-48
    800043e8:	02113423          	sd	ra,40(sp)
    800043ec:	02813023          	sd	s0,32(sp)
    800043f0:	00913c23          	sd	s1,24(sp)
    800043f4:	01213823          	sd	s2,16(sp)
    800043f8:	01313423          	sd	s3,8(sp)
    800043fc:	03010413          	addi	s0,sp,48
    80004400:	00050913          	mv	s2,a0
        int i = 0;
    80004404:	00000993          	li	s3,0
    80004408:	0100006f          	j	80004418 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000440c:	00a00513          	li	a0,10
    80004410:	ffffe097          	auipc	ra,0xffffe
    80004414:	194080e7          	jalr	404(ra) # 800025a4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004418:	00008797          	auipc	a5,0x8
    8000441c:	8087a783          	lw	a5,-2040(a5) # 8000bc20 <_ZL9threadEnd>
    80004420:	04079a63          	bnez	a5,80004474 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004424:	02093783          	ld	a5,32(s2)
    80004428:	0087b503          	ld	a0,8(a5)
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	630080e7          	jalr	1584(ra) # 80005a5c <_ZN9BufferCPP3getEv>
            i++;
    80004434:	0019849b          	addiw	s1,s3,1
    80004438:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000443c:	0ff57513          	andi	a0,a0,255
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	164080e7          	jalr	356(ra) # 800025a4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004448:	05000793          	li	a5,80
    8000444c:	02f4e4bb          	remw	s1,s1,a5
    80004450:	fc0494e3          	bnez	s1,80004418 <_ZN8Consumer3runEv+0x34>
    80004454:	fb9ff06f          	j	8000440c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004458:	02093783          	ld	a5,32(s2)
    8000445c:	0087b503          	ld	a0,8(a5)
    80004460:	00001097          	auipc	ra,0x1
    80004464:	5fc080e7          	jalr	1532(ra) # 80005a5c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004468:	0ff57513          	andi	a0,a0,255
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	138080e7          	jalr	312(ra) # 800025a4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004474:	02093783          	ld	a5,32(s2)
    80004478:	0087b503          	ld	a0,8(a5)
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	66c080e7          	jalr	1644(ra) # 80005ae8 <_ZN9BufferCPP6getCntEv>
    80004484:	fca04ae3          	bgtz	a0,80004458 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004488:	02093783          	ld	a5,32(s2)
    8000448c:	0107b503          	ld	a0,16(a5)
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	0c0080e7          	jalr	192(ra) # 80002550 <_ZN9Semaphore6signalEv>
    }
    80004498:	02813083          	ld	ra,40(sp)
    8000449c:	02013403          	ld	s0,32(sp)
    800044a0:	01813483          	ld	s1,24(sp)
    800044a4:	01013903          	ld	s2,16(sp)
    800044a8:	00813983          	ld	s3,8(sp)
    800044ac:	03010113          	addi	sp,sp,48
    800044b0:	00008067          	ret

00000000800044b4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800044b4:	ff010113          	addi	sp,sp,-16
    800044b8:	00113423          	sd	ra,8(sp)
    800044bc:	00813023          	sd	s0,0(sp)
    800044c0:	01010413          	addi	s0,sp,16
    800044c4:	00007797          	auipc	a5,0x7
    800044c8:	5ec78793          	addi	a5,a5,1516 # 8000bab0 <_ZTV8Consumer+0x10>
    800044cc:	00f53023          	sd	a5,0(a0)
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	1dc080e7          	jalr	476(ra) # 800026ac <_ZN6ThreadD1Ev>
    800044d8:	00813083          	ld	ra,8(sp)
    800044dc:	00013403          	ld	s0,0(sp)
    800044e0:	01010113          	addi	sp,sp,16
    800044e4:	00008067          	ret

00000000800044e8 <_ZN8ConsumerD0Ev>:
    800044e8:	fe010113          	addi	sp,sp,-32
    800044ec:	00113c23          	sd	ra,24(sp)
    800044f0:	00813823          	sd	s0,16(sp)
    800044f4:	00913423          	sd	s1,8(sp)
    800044f8:	02010413          	addi	s0,sp,32
    800044fc:	00050493          	mv	s1,a0
    80004500:	00007797          	auipc	a5,0x7
    80004504:	5b078793          	addi	a5,a5,1456 # 8000bab0 <_ZTV8Consumer+0x10>
    80004508:	00f53023          	sd	a5,0(a0)
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	1a0080e7          	jalr	416(ra) # 800026ac <_ZN6ThreadD1Ev>
    80004514:	00048513          	mv	a0,s1
    80004518:	ffffe097          	auipc	ra,0xffffe
    8000451c:	104080e7          	jalr	260(ra) # 8000261c <_ZdlPv>
    80004520:	01813083          	ld	ra,24(sp)
    80004524:	01013403          	ld	s0,16(sp)
    80004528:	00813483          	ld	s1,8(sp)
    8000452c:	02010113          	addi	sp,sp,32
    80004530:	00008067          	ret

0000000080004534 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004534:	ff010113          	addi	sp,sp,-16
    80004538:	00113423          	sd	ra,8(sp)
    8000453c:	00813023          	sd	s0,0(sp)
    80004540:	01010413          	addi	s0,sp,16
    80004544:	00007797          	auipc	a5,0x7
    80004548:	51c78793          	addi	a5,a5,1308 # 8000ba60 <_ZTV16ProducerKeyborad+0x10>
    8000454c:	00f53023          	sd	a5,0(a0)
    80004550:	ffffe097          	auipc	ra,0xffffe
    80004554:	15c080e7          	jalr	348(ra) # 800026ac <_ZN6ThreadD1Ev>
    80004558:	00813083          	ld	ra,8(sp)
    8000455c:	00013403          	ld	s0,0(sp)
    80004560:	01010113          	addi	sp,sp,16
    80004564:	00008067          	ret

0000000080004568 <_ZN16ProducerKeyboradD0Ev>:
    80004568:	fe010113          	addi	sp,sp,-32
    8000456c:	00113c23          	sd	ra,24(sp)
    80004570:	00813823          	sd	s0,16(sp)
    80004574:	00913423          	sd	s1,8(sp)
    80004578:	02010413          	addi	s0,sp,32
    8000457c:	00050493          	mv	s1,a0
    80004580:	00007797          	auipc	a5,0x7
    80004584:	4e078793          	addi	a5,a5,1248 # 8000ba60 <_ZTV16ProducerKeyborad+0x10>
    80004588:	00f53023          	sd	a5,0(a0)
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	120080e7          	jalr	288(ra) # 800026ac <_ZN6ThreadD1Ev>
    80004594:	00048513          	mv	a0,s1
    80004598:	ffffe097          	auipc	ra,0xffffe
    8000459c:	084080e7          	jalr	132(ra) # 8000261c <_ZdlPv>
    800045a0:	01813083          	ld	ra,24(sp)
    800045a4:	01013403          	ld	s0,16(sp)
    800045a8:	00813483          	ld	s1,8(sp)
    800045ac:	02010113          	addi	sp,sp,32
    800045b0:	00008067          	ret

00000000800045b4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800045b4:	ff010113          	addi	sp,sp,-16
    800045b8:	00113423          	sd	ra,8(sp)
    800045bc:	00813023          	sd	s0,0(sp)
    800045c0:	01010413          	addi	s0,sp,16
    800045c4:	00007797          	auipc	a5,0x7
    800045c8:	4c478793          	addi	a5,a5,1220 # 8000ba88 <_ZTV8Producer+0x10>
    800045cc:	00f53023          	sd	a5,0(a0)
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	0dc080e7          	jalr	220(ra) # 800026ac <_ZN6ThreadD1Ev>
    800045d8:	00813083          	ld	ra,8(sp)
    800045dc:	00013403          	ld	s0,0(sp)
    800045e0:	01010113          	addi	sp,sp,16
    800045e4:	00008067          	ret

00000000800045e8 <_ZN8ProducerD0Ev>:
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00113c23          	sd	ra,24(sp)
    800045f0:	00813823          	sd	s0,16(sp)
    800045f4:	00913423          	sd	s1,8(sp)
    800045f8:	02010413          	addi	s0,sp,32
    800045fc:	00050493          	mv	s1,a0
    80004600:	00007797          	auipc	a5,0x7
    80004604:	48878793          	addi	a5,a5,1160 # 8000ba88 <_ZTV8Producer+0x10>
    80004608:	00f53023          	sd	a5,0(a0)
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	0a0080e7          	jalr	160(ra) # 800026ac <_ZN6ThreadD1Ev>
    80004614:	00048513          	mv	a0,s1
    80004618:	ffffe097          	auipc	ra,0xffffe
    8000461c:	004080e7          	jalr	4(ra) # 8000261c <_ZdlPv>
    80004620:	01813083          	ld	ra,24(sp)
    80004624:	01013403          	ld	s0,16(sp)
    80004628:	00813483          	ld	s1,8(sp)
    8000462c:	02010113          	addi	sp,sp,32
    80004630:	00008067          	ret

0000000080004634 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004634:	fe010113          	addi	sp,sp,-32
    80004638:	00113c23          	sd	ra,24(sp)
    8000463c:	00813823          	sd	s0,16(sp)
    80004640:	00913423          	sd	s1,8(sp)
    80004644:	02010413          	addi	s0,sp,32
    80004648:	00050493          	mv	s1,a0
        printString("Radi1");
    8000464c:	00005517          	auipc	a0,0x5
    80004650:	0f450513          	addi	a0,a0,244 # 80009740 <_ZZ12printIntegermE6digits+0x1a8>
    80004654:	00001097          	auipc	ra,0x1
    80004658:	f54080e7          	jalr	-172(ra) # 800055a8 <_Z11printStringPKc>
        while ((key = getc()) != 'q') {
    8000465c:	ffffd097          	auipc	ra,0xffffd
    80004660:	f5c080e7          	jalr	-164(ra) # 800015b8 <_Z4getcv>
    80004664:	0005059b          	sext.w	a1,a0
    80004668:	07100793          	li	a5,113
    8000466c:	00f58c63          	beq	a1,a5,80004684 <_ZN16ProducerKeyborad3runEv+0x50>
            td->buffer->put(key);
    80004670:	0204b783          	ld	a5,32(s1)
    80004674:	0087b503          	ld	a0,8(a5)
    80004678:	00001097          	auipc	ra,0x1
    8000467c:	354080e7          	jalr	852(ra) # 800059cc <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 'q') {
    80004680:	fddff06f          	j	8000465c <_ZN16ProducerKeyborad3runEv+0x28>
        threadEnd = 1;
    80004684:	00100793          	li	a5,1
    80004688:	00007717          	auipc	a4,0x7
    8000468c:	58f72c23          	sw	a5,1432(a4) # 8000bc20 <_ZL9threadEnd>
        td->buffer->put('!');
    80004690:	0204b783          	ld	a5,32(s1)
    80004694:	02100593          	li	a1,33
    80004698:	0087b503          	ld	a0,8(a5)
    8000469c:	00001097          	auipc	ra,0x1
    800046a0:	330080e7          	jalr	816(ra) # 800059cc <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800046a4:	0204b783          	ld	a5,32(s1)
    800046a8:	0107b503          	ld	a0,16(a5)
    800046ac:	ffffe097          	auipc	ra,0xffffe
    800046b0:	ea4080e7          	jalr	-348(ra) # 80002550 <_ZN9Semaphore6signalEv>
    }
    800046b4:	01813083          	ld	ra,24(sp)
    800046b8:	01013403          	ld	s0,16(sp)
    800046bc:	00813483          	ld	s1,8(sp)
    800046c0:	02010113          	addi	sp,sp,32
    800046c4:	00008067          	ret

00000000800046c8 <_ZN8Producer3runEv>:
    void run() override {
    800046c8:	fe010113          	addi	sp,sp,-32
    800046cc:	00113c23          	sd	ra,24(sp)
    800046d0:	00813823          	sd	s0,16(sp)
    800046d4:	00913423          	sd	s1,8(sp)
    800046d8:	02010413          	addi	s0,sp,32
    800046dc:	00050493          	mv	s1,a0
        printString("Radi2");
    800046e0:	00005517          	auipc	a0,0x5
    800046e4:	06850513          	addi	a0,a0,104 # 80009748 <_ZZ12printIntegermE6digits+0x1b0>
    800046e8:	00001097          	auipc	ra,0x1
    800046ec:	ec0080e7          	jalr	-320(ra) # 800055a8 <_Z11printStringPKc>
        while (!threadEnd) {
    800046f0:	00007797          	auipc	a5,0x7
    800046f4:	5307a783          	lw	a5,1328(a5) # 8000bc20 <_ZL9threadEnd>
    800046f8:	02079463          	bnez	a5,80004720 <_ZN8Producer3runEv+0x58>
            td->buffer->put(td->id + '0');
    800046fc:	0204b783          	ld	a5,32(s1)
    80004700:	0007a583          	lw	a1,0(a5)
    80004704:	0305859b          	addiw	a1,a1,48
    80004708:	0087b503          	ld	a0,8(a5)
    8000470c:	00001097          	auipc	ra,0x1
    80004710:	2c0080e7          	jalr	704(ra) # 800059cc <_ZN9BufferCPP3putEi>
            Thread::dispatch();
    80004714:	ffffe097          	auipc	ra,0xffffe
    80004718:	d14080e7          	jalr	-748(ra) # 80002428 <_ZN6Thread8dispatchEv>
        while (!threadEnd) {
    8000471c:	fd5ff06f          	j	800046f0 <_ZN8Producer3runEv+0x28>
        td->sem->signal();
    80004720:	0204b783          	ld	a5,32(s1)
    80004724:	0107b503          	ld	a0,16(a5)
    80004728:	ffffe097          	auipc	ra,0xffffe
    8000472c:	e28080e7          	jalr	-472(ra) # 80002550 <_ZN9Semaphore6signalEv>
    }
    80004730:	01813083          	ld	ra,24(sp)
    80004734:	01013403          	ld	s0,16(sp)
    80004738:	00813483          	ld	s1,8(sp)
    8000473c:	02010113          	addi	sp,sp,32
    80004740:	00008067          	ret

0000000080004744 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004744:	fe010113          	addi	sp,sp,-32
    80004748:	00113c23          	sd	ra,24(sp)
    8000474c:	00813823          	sd	s0,16(sp)
    80004750:	00913423          	sd	s1,8(sp)
    80004754:	01213023          	sd	s2,0(sp)
    80004758:	02010413          	addi	s0,sp,32
    8000475c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004760:	00100793          	li	a5,1
    80004764:	02a7f863          	bgeu	a5,a0,80004794 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004768:	00a00793          	li	a5,10
    8000476c:	02f577b3          	remu	a5,a0,a5
    80004770:	02078e63          	beqz	a5,800047ac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004774:	fff48513          	addi	a0,s1,-1
    80004778:	00000097          	auipc	ra,0x0
    8000477c:	fcc080e7          	jalr	-52(ra) # 80004744 <_ZL9fibonaccim>
    80004780:	00050913          	mv	s2,a0
    80004784:	ffe48513          	addi	a0,s1,-2
    80004788:	00000097          	auipc	ra,0x0
    8000478c:	fbc080e7          	jalr	-68(ra) # 80004744 <_ZL9fibonaccim>
    80004790:	00a90533          	add	a0,s2,a0
}
    80004794:	01813083          	ld	ra,24(sp)
    80004798:	01013403          	ld	s0,16(sp)
    8000479c:	00813483          	ld	s1,8(sp)
    800047a0:	00013903          	ld	s2,0(sp)
    800047a4:	02010113          	addi	sp,sp,32
    800047a8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800047ac:	ffffd097          	auipc	ra,0xffffd
    800047b0:	d10080e7          	jalr	-752(ra) # 800014bc <_Z15thread_dispatchv>
    800047b4:	fc1ff06f          	j	80004774 <_ZL9fibonaccim+0x30>

00000000800047b8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800047b8:	fe010113          	addi	sp,sp,-32
    800047bc:	00113c23          	sd	ra,24(sp)
    800047c0:	00813823          	sd	s0,16(sp)
    800047c4:	00913423          	sd	s1,8(sp)
    800047c8:	01213023          	sd	s2,0(sp)
    800047cc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800047d0:	00a00493          	li	s1,10
    800047d4:	0400006f          	j	80004814 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800047d8:	00005517          	auipc	a0,0x5
    800047dc:	88850513          	addi	a0,a0,-1912 # 80009060 <CONSOLE_STATUS+0x50>
    800047e0:	00001097          	auipc	ra,0x1
    800047e4:	dc8080e7          	jalr	-568(ra) # 800055a8 <_Z11printStringPKc>
    800047e8:	00000613          	li	a2,0
    800047ec:	00a00593          	li	a1,10
    800047f0:	00048513          	mv	a0,s1
    800047f4:	00001097          	auipc	ra,0x1
    800047f8:	f64080e7          	jalr	-156(ra) # 80005758 <_Z8printIntiii>
    800047fc:	00005517          	auipc	a0,0x5
    80004800:	aac50513          	addi	a0,a0,-1364 # 800092a8 <CONSOLE_STATUS+0x298>
    80004804:	00001097          	auipc	ra,0x1
    80004808:	da4080e7          	jalr	-604(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000480c:	0014849b          	addiw	s1,s1,1
    80004810:	0ff4f493          	andi	s1,s1,255
    80004814:	00c00793          	li	a5,12
    80004818:	fc97f0e3          	bgeu	a5,s1,800047d8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000481c:	00005517          	auipc	a0,0x5
    80004820:	ea450513          	addi	a0,a0,-348 # 800096c0 <_ZZ12printIntegermE6digits+0x128>
    80004824:	00001097          	auipc	ra,0x1
    80004828:	d84080e7          	jalr	-636(ra) # 800055a8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000482c:	00500313          	li	t1,5
    thread_dispatch();
    80004830:	ffffd097          	auipc	ra,0xffffd
    80004834:	c8c080e7          	jalr	-884(ra) # 800014bc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004838:	01000513          	li	a0,16
    8000483c:	00000097          	auipc	ra,0x0
    80004840:	f08080e7          	jalr	-248(ra) # 80004744 <_ZL9fibonaccim>
    80004844:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004848:	00005517          	auipc	a0,0x5
    8000484c:	83050513          	addi	a0,a0,-2000 # 80009078 <CONSOLE_STATUS+0x68>
    80004850:	00001097          	auipc	ra,0x1
    80004854:	d58080e7          	jalr	-680(ra) # 800055a8 <_Z11printStringPKc>
    80004858:	00000613          	li	a2,0
    8000485c:	00a00593          	li	a1,10
    80004860:	0009051b          	sext.w	a0,s2
    80004864:	00001097          	auipc	ra,0x1
    80004868:	ef4080e7          	jalr	-268(ra) # 80005758 <_Z8printIntiii>
    8000486c:	00005517          	auipc	a0,0x5
    80004870:	a3c50513          	addi	a0,a0,-1476 # 800092a8 <CONSOLE_STATUS+0x298>
    80004874:	00001097          	auipc	ra,0x1
    80004878:	d34080e7          	jalr	-716(ra) # 800055a8 <_Z11printStringPKc>
    8000487c:	0400006f          	j	800048bc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004880:	00004517          	auipc	a0,0x4
    80004884:	7e050513          	addi	a0,a0,2016 # 80009060 <CONSOLE_STATUS+0x50>
    80004888:	00001097          	auipc	ra,0x1
    8000488c:	d20080e7          	jalr	-736(ra) # 800055a8 <_Z11printStringPKc>
    80004890:	00000613          	li	a2,0
    80004894:	00a00593          	li	a1,10
    80004898:	00048513          	mv	a0,s1
    8000489c:	00001097          	auipc	ra,0x1
    800048a0:	ebc080e7          	jalr	-324(ra) # 80005758 <_Z8printIntiii>
    800048a4:	00005517          	auipc	a0,0x5
    800048a8:	a0450513          	addi	a0,a0,-1532 # 800092a8 <CONSOLE_STATUS+0x298>
    800048ac:	00001097          	auipc	ra,0x1
    800048b0:	cfc080e7          	jalr	-772(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800048b4:	0014849b          	addiw	s1,s1,1
    800048b8:	0ff4f493          	andi	s1,s1,255
    800048bc:	00f00793          	li	a5,15
    800048c0:	fc97f0e3          	bgeu	a5,s1,80004880 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800048c4:	00005517          	auipc	a0,0x5
    800048c8:	e0c50513          	addi	a0,a0,-500 # 800096d0 <_ZZ12printIntegermE6digits+0x138>
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	cdc080e7          	jalr	-804(ra) # 800055a8 <_Z11printStringPKc>
    finishedD = true;
    800048d4:	00100793          	li	a5,1
    800048d8:	00007717          	auipc	a4,0x7
    800048dc:	34f70c23          	sb	a5,856(a4) # 8000bc30 <_ZL9finishedD>
    thread_dispatch();
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	bdc080e7          	jalr	-1060(ra) # 800014bc <_Z15thread_dispatchv>
}
    800048e8:	01813083          	ld	ra,24(sp)
    800048ec:	01013403          	ld	s0,16(sp)
    800048f0:	00813483          	ld	s1,8(sp)
    800048f4:	00013903          	ld	s2,0(sp)
    800048f8:	02010113          	addi	sp,sp,32
    800048fc:	00008067          	ret

0000000080004900 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00113c23          	sd	ra,24(sp)
    80004908:	00813823          	sd	s0,16(sp)
    8000490c:	00913423          	sd	s1,8(sp)
    80004910:	01213023          	sd	s2,0(sp)
    80004914:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004918:	00000493          	li	s1,0
    8000491c:	0400006f          	j	8000495c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004920:	00004517          	auipc	a0,0x4
    80004924:	71050513          	addi	a0,a0,1808 # 80009030 <CONSOLE_STATUS+0x20>
    80004928:	00001097          	auipc	ra,0x1
    8000492c:	c80080e7          	jalr	-896(ra) # 800055a8 <_Z11printStringPKc>
    80004930:	00000613          	li	a2,0
    80004934:	00a00593          	li	a1,10
    80004938:	00048513          	mv	a0,s1
    8000493c:	00001097          	auipc	ra,0x1
    80004940:	e1c080e7          	jalr	-484(ra) # 80005758 <_Z8printIntiii>
    80004944:	00005517          	auipc	a0,0x5
    80004948:	96450513          	addi	a0,a0,-1692 # 800092a8 <CONSOLE_STATUS+0x298>
    8000494c:	00001097          	auipc	ra,0x1
    80004950:	c5c080e7          	jalr	-932(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004954:	0014849b          	addiw	s1,s1,1
    80004958:	0ff4f493          	andi	s1,s1,255
    8000495c:	00200793          	li	a5,2
    80004960:	fc97f0e3          	bgeu	a5,s1,80004920 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004964:	00005517          	auipc	a0,0x5
    80004968:	d4c50513          	addi	a0,a0,-692 # 800096b0 <_ZZ12printIntegermE6digits+0x118>
    8000496c:	00001097          	auipc	ra,0x1
    80004970:	c3c080e7          	jalr	-964(ra) # 800055a8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004974:	00700313          	li	t1,7
    thread_dispatch();
    80004978:	ffffd097          	auipc	ra,0xffffd
    8000497c:	b44080e7          	jalr	-1212(ra) # 800014bc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004980:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004984:	00004517          	auipc	a0,0x4
    80004988:	6c450513          	addi	a0,a0,1732 # 80009048 <CONSOLE_STATUS+0x38>
    8000498c:	00001097          	auipc	ra,0x1
    80004990:	c1c080e7          	jalr	-996(ra) # 800055a8 <_Z11printStringPKc>
    80004994:	00000613          	li	a2,0
    80004998:	00a00593          	li	a1,10
    8000499c:	0009051b          	sext.w	a0,s2
    800049a0:	00001097          	auipc	ra,0x1
    800049a4:	db8080e7          	jalr	-584(ra) # 80005758 <_Z8printIntiii>
    800049a8:	00005517          	auipc	a0,0x5
    800049ac:	90050513          	addi	a0,a0,-1792 # 800092a8 <CONSOLE_STATUS+0x298>
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	bf8080e7          	jalr	-1032(ra) # 800055a8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800049b8:	00c00513          	li	a0,12
    800049bc:	00000097          	auipc	ra,0x0
    800049c0:	d88080e7          	jalr	-632(ra) # 80004744 <_ZL9fibonaccim>
    800049c4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800049c8:	00004517          	auipc	a0,0x4
    800049cc:	68850513          	addi	a0,a0,1672 # 80009050 <CONSOLE_STATUS+0x40>
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	bd8080e7          	jalr	-1064(ra) # 800055a8 <_Z11printStringPKc>
    800049d8:	00000613          	li	a2,0
    800049dc:	00a00593          	li	a1,10
    800049e0:	0009051b          	sext.w	a0,s2
    800049e4:	00001097          	auipc	ra,0x1
    800049e8:	d74080e7          	jalr	-652(ra) # 80005758 <_Z8printIntiii>
    800049ec:	00005517          	auipc	a0,0x5
    800049f0:	8bc50513          	addi	a0,a0,-1860 # 800092a8 <CONSOLE_STATUS+0x298>
    800049f4:	00001097          	auipc	ra,0x1
    800049f8:	bb4080e7          	jalr	-1100(ra) # 800055a8 <_Z11printStringPKc>
    800049fc:	0400006f          	j	80004a3c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004a00:	00004517          	auipc	a0,0x4
    80004a04:	63050513          	addi	a0,a0,1584 # 80009030 <CONSOLE_STATUS+0x20>
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	ba0080e7          	jalr	-1120(ra) # 800055a8 <_Z11printStringPKc>
    80004a10:	00000613          	li	a2,0
    80004a14:	00a00593          	li	a1,10
    80004a18:	00048513          	mv	a0,s1
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	d3c080e7          	jalr	-708(ra) # 80005758 <_Z8printIntiii>
    80004a24:	00005517          	auipc	a0,0x5
    80004a28:	88450513          	addi	a0,a0,-1916 # 800092a8 <CONSOLE_STATUS+0x298>
    80004a2c:	00001097          	auipc	ra,0x1
    80004a30:	b7c080e7          	jalr	-1156(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004a34:	0014849b          	addiw	s1,s1,1
    80004a38:	0ff4f493          	andi	s1,s1,255
    80004a3c:	00500793          	li	a5,5
    80004a40:	fc97f0e3          	bgeu	a5,s1,80004a00 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004a44:	00005517          	auipc	a0,0x5
    80004a48:	c4c50513          	addi	a0,a0,-948 # 80009690 <_ZZ12printIntegermE6digits+0xf8>
    80004a4c:	00001097          	auipc	ra,0x1
    80004a50:	b5c080e7          	jalr	-1188(ra) # 800055a8 <_Z11printStringPKc>
    finishedC = true;
    80004a54:	00100793          	li	a5,1
    80004a58:	00007717          	auipc	a4,0x7
    80004a5c:	1cf70ca3          	sb	a5,473(a4) # 8000bc31 <_ZL9finishedC>
    thread_dispatch();
    80004a60:	ffffd097          	auipc	ra,0xffffd
    80004a64:	a5c080e7          	jalr	-1444(ra) # 800014bc <_Z15thread_dispatchv>
}
    80004a68:	01813083          	ld	ra,24(sp)
    80004a6c:	01013403          	ld	s0,16(sp)
    80004a70:	00813483          	ld	s1,8(sp)
    80004a74:	00013903          	ld	s2,0(sp)
    80004a78:	02010113          	addi	sp,sp,32
    80004a7c:	00008067          	ret

0000000080004a80 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004a80:	fe010113          	addi	sp,sp,-32
    80004a84:	00113c23          	sd	ra,24(sp)
    80004a88:	00813823          	sd	s0,16(sp)
    80004a8c:	00913423          	sd	s1,8(sp)
    80004a90:	01213023          	sd	s2,0(sp)
    80004a94:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004a98:	00000913          	li	s2,0
    80004a9c:	0380006f          	j	80004ad4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	a1c080e7          	jalr	-1508(ra) # 800014bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004aa8:	00148493          	addi	s1,s1,1
    80004aac:	000027b7          	lui	a5,0x2
    80004ab0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ab4:	0097ee63          	bltu	a5,s1,80004ad0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ab8:	00000713          	li	a4,0
    80004abc:	000077b7          	lui	a5,0x7
    80004ac0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ac4:	fce7eee3          	bltu	a5,a4,80004aa0 <_ZL11workerBodyBPv+0x20>
    80004ac8:	00170713          	addi	a4,a4,1
    80004acc:	ff1ff06f          	j	80004abc <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004ad0:	00190913          	addi	s2,s2,1
    80004ad4:	00f00793          	li	a5,15
    80004ad8:	0527e063          	bltu	a5,s2,80004b18 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004adc:	00004517          	auipc	a0,0x4
    80004ae0:	54c50513          	addi	a0,a0,1356 # 80009028 <CONSOLE_STATUS+0x18>
    80004ae4:	00001097          	auipc	ra,0x1
    80004ae8:	ac4080e7          	jalr	-1340(ra) # 800055a8 <_Z11printStringPKc>
    80004aec:	00000613          	li	a2,0
    80004af0:	00a00593          	li	a1,10
    80004af4:	0009051b          	sext.w	a0,s2
    80004af8:	00001097          	auipc	ra,0x1
    80004afc:	c60080e7          	jalr	-928(ra) # 80005758 <_Z8printIntiii>
    80004b00:	00004517          	auipc	a0,0x4
    80004b04:	7a850513          	addi	a0,a0,1960 # 800092a8 <CONSOLE_STATUS+0x298>
    80004b08:	00001097          	auipc	ra,0x1
    80004b0c:	aa0080e7          	jalr	-1376(ra) # 800055a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b10:	00000493          	li	s1,0
    80004b14:	f99ff06f          	j	80004aac <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004b18:	00005517          	auipc	a0,0x5
    80004b1c:	b8850513          	addi	a0,a0,-1144 # 800096a0 <_ZZ12printIntegermE6digits+0x108>
    80004b20:	00001097          	auipc	ra,0x1
    80004b24:	a88080e7          	jalr	-1400(ra) # 800055a8 <_Z11printStringPKc>
    finishedB = true;
    80004b28:	00100793          	li	a5,1
    80004b2c:	00007717          	auipc	a4,0x7
    80004b30:	10f70323          	sb	a5,262(a4) # 8000bc32 <_ZL9finishedB>
    thread_dispatch();
    80004b34:	ffffd097          	auipc	ra,0xffffd
    80004b38:	988080e7          	jalr	-1656(ra) # 800014bc <_Z15thread_dispatchv>
}
    80004b3c:	01813083          	ld	ra,24(sp)
    80004b40:	01013403          	ld	s0,16(sp)
    80004b44:	00813483          	ld	s1,8(sp)
    80004b48:	00013903          	ld	s2,0(sp)
    80004b4c:	02010113          	addi	sp,sp,32
    80004b50:	00008067          	ret

0000000080004b54 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004b54:	fe010113          	addi	sp,sp,-32
    80004b58:	00113c23          	sd	ra,24(sp)
    80004b5c:	00813823          	sd	s0,16(sp)
    80004b60:	00913423          	sd	s1,8(sp)
    80004b64:	01213023          	sd	s2,0(sp)
    80004b68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004b6c:	00000913          	li	s2,0
    80004b70:	0380006f          	j	80004ba8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	948080e7          	jalr	-1720(ra) # 800014bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004b7c:	00148493          	addi	s1,s1,1
    80004b80:	000027b7          	lui	a5,0x2
    80004b84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004b88:	0097ee63          	bltu	a5,s1,80004ba4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004b8c:	00000713          	li	a4,0
    80004b90:	000077b7          	lui	a5,0x7
    80004b94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004b98:	fce7eee3          	bltu	a5,a4,80004b74 <_ZL11workerBodyAPv+0x20>
    80004b9c:	00170713          	addi	a4,a4,1
    80004ba0:	ff1ff06f          	j	80004b90 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004ba4:	00190913          	addi	s2,s2,1
    80004ba8:	00900793          	li	a5,9
    80004bac:	0527e063          	bltu	a5,s2,80004bec <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004bb0:	00004517          	auipc	a0,0x4
    80004bb4:	47050513          	addi	a0,a0,1136 # 80009020 <CONSOLE_STATUS+0x10>
    80004bb8:	00001097          	auipc	ra,0x1
    80004bbc:	9f0080e7          	jalr	-1552(ra) # 800055a8 <_Z11printStringPKc>
    80004bc0:	00000613          	li	a2,0
    80004bc4:	00a00593          	li	a1,10
    80004bc8:	0009051b          	sext.w	a0,s2
    80004bcc:	00001097          	auipc	ra,0x1
    80004bd0:	b8c080e7          	jalr	-1140(ra) # 80005758 <_Z8printIntiii>
    80004bd4:	00004517          	auipc	a0,0x4
    80004bd8:	6d450513          	addi	a0,a0,1748 # 800092a8 <CONSOLE_STATUS+0x298>
    80004bdc:	00001097          	auipc	ra,0x1
    80004be0:	9cc080e7          	jalr	-1588(ra) # 800055a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004be4:	00000493          	li	s1,0
    80004be8:	f99ff06f          	j	80004b80 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004bec:	00005517          	auipc	a0,0x5
    80004bf0:	aa450513          	addi	a0,a0,-1372 # 80009690 <_ZZ12printIntegermE6digits+0xf8>
    80004bf4:	00001097          	auipc	ra,0x1
    80004bf8:	9b4080e7          	jalr	-1612(ra) # 800055a8 <_Z11printStringPKc>
    finishedA = true;
    80004bfc:	00100793          	li	a5,1
    80004c00:	00007717          	auipc	a4,0x7
    80004c04:	02f709a3          	sb	a5,51(a4) # 8000bc33 <_ZL9finishedA>
}
    80004c08:	01813083          	ld	ra,24(sp)
    80004c0c:	01013403          	ld	s0,16(sp)
    80004c10:	00813483          	ld	s1,8(sp)
    80004c14:	00013903          	ld	s2,0(sp)
    80004c18:	02010113          	addi	sp,sp,32
    80004c1c:	00008067          	ret

0000000080004c20 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004c20:	fd010113          	addi	sp,sp,-48
    80004c24:	02113423          	sd	ra,40(sp)
    80004c28:	02813023          	sd	s0,32(sp)
    80004c2c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004c30:	00000613          	li	a2,0
    80004c34:	00000597          	auipc	a1,0x0
    80004c38:	f2058593          	addi	a1,a1,-224 # 80004b54 <_ZL11workerBodyAPv>
    80004c3c:	fd040513          	addi	a0,s0,-48
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	818080e7          	jalr	-2024(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004c48:	00005517          	auipc	a0,0x5
    80004c4c:	a9850513          	addi	a0,a0,-1384 # 800096e0 <_ZZ12printIntegermE6digits+0x148>
    80004c50:	00001097          	auipc	ra,0x1
    80004c54:	958080e7          	jalr	-1704(ra) # 800055a8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004c58:	00000613          	li	a2,0
    80004c5c:	00000597          	auipc	a1,0x0
    80004c60:	e2458593          	addi	a1,a1,-476 # 80004a80 <_ZL11workerBodyBPv>
    80004c64:	fd840513          	addi	a0,s0,-40
    80004c68:	ffffc097          	auipc	ra,0xffffc
    80004c6c:	7f0080e7          	jalr	2032(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004c70:	00005517          	auipc	a0,0x5
    80004c74:	a8850513          	addi	a0,a0,-1400 # 800096f8 <_ZZ12printIntegermE6digits+0x160>
    80004c78:	00001097          	auipc	ra,0x1
    80004c7c:	930080e7          	jalr	-1744(ra) # 800055a8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004c80:	00000613          	li	a2,0
    80004c84:	00000597          	auipc	a1,0x0
    80004c88:	c7c58593          	addi	a1,a1,-900 # 80004900 <_ZL11workerBodyCPv>
    80004c8c:	fe040513          	addi	a0,s0,-32
    80004c90:	ffffc097          	auipc	ra,0xffffc
    80004c94:	7c8080e7          	jalr	1992(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004c98:	00005517          	auipc	a0,0x5
    80004c9c:	a7850513          	addi	a0,a0,-1416 # 80009710 <_ZZ12printIntegermE6digits+0x178>
    80004ca0:	00001097          	auipc	ra,0x1
    80004ca4:	908080e7          	jalr	-1784(ra) # 800055a8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004ca8:	00000613          	li	a2,0
    80004cac:	00000597          	auipc	a1,0x0
    80004cb0:	b0c58593          	addi	a1,a1,-1268 # 800047b8 <_ZL11workerBodyDPv>
    80004cb4:	fe840513          	addi	a0,s0,-24
    80004cb8:	ffffc097          	auipc	ra,0xffffc
    80004cbc:	7a0080e7          	jalr	1952(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004cc0:	00005517          	auipc	a0,0x5
    80004cc4:	a6850513          	addi	a0,a0,-1432 # 80009728 <_ZZ12printIntegermE6digits+0x190>
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	8e0080e7          	jalr	-1824(ra) # 800055a8 <_Z11printStringPKc>
    80004cd0:	00c0006f          	j	80004cdc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004cd4:	ffffc097          	auipc	ra,0xffffc
    80004cd8:	7e8080e7          	jalr	2024(ra) # 800014bc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004cdc:	00007797          	auipc	a5,0x7
    80004ce0:	f577c783          	lbu	a5,-169(a5) # 8000bc33 <_ZL9finishedA>
    80004ce4:	fe0788e3          	beqz	a5,80004cd4 <_Z18Threads_C_API_testv+0xb4>
    80004ce8:	00007797          	auipc	a5,0x7
    80004cec:	f4a7c783          	lbu	a5,-182(a5) # 8000bc32 <_ZL9finishedB>
    80004cf0:	fe0782e3          	beqz	a5,80004cd4 <_Z18Threads_C_API_testv+0xb4>
    80004cf4:	00007797          	auipc	a5,0x7
    80004cf8:	f3d7c783          	lbu	a5,-195(a5) # 8000bc31 <_ZL9finishedC>
    80004cfc:	fc078ce3          	beqz	a5,80004cd4 <_Z18Threads_C_API_testv+0xb4>
    80004d00:	00007797          	auipc	a5,0x7
    80004d04:	f307c783          	lbu	a5,-208(a5) # 8000bc30 <_ZL9finishedD>
    80004d08:	fc0786e3          	beqz	a5,80004cd4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004d0c:	02813083          	ld	ra,40(sp)
    80004d10:	02013403          	ld	s0,32(sp)
    80004d14:	03010113          	addi	sp,sp,48
    80004d18:	00008067          	ret

0000000080004d1c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004d1c:	fd010113          	addi	sp,sp,-48
    80004d20:	02113423          	sd	ra,40(sp)
    80004d24:	02813023          	sd	s0,32(sp)
    80004d28:	00913c23          	sd	s1,24(sp)
    80004d2c:	01213823          	sd	s2,16(sp)
    80004d30:	01313423          	sd	s3,8(sp)
    80004d34:	03010413          	addi	s0,sp,48
    80004d38:	00050993          	mv	s3,a0
    80004d3c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004d40:	00000913          	li	s2,0
    80004d44:	00c0006f          	j	80004d50 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004d48:	ffffd097          	auipc	ra,0xffffd
    80004d4c:	6e0080e7          	jalr	1760(ra) # 80002428 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004d50:	ffffd097          	auipc	ra,0xffffd
    80004d54:	868080e7          	jalr	-1944(ra) # 800015b8 <_Z4getcv>
    80004d58:	0005059b          	sext.w	a1,a0
    80004d5c:	01b00793          	li	a5,27
    80004d60:	02f58a63          	beq	a1,a5,80004d94 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004d64:	0084b503          	ld	a0,8(s1)
    80004d68:	00001097          	auipc	ra,0x1
    80004d6c:	c64080e7          	jalr	-924(ra) # 800059cc <_ZN9BufferCPP3putEi>
        i++;
    80004d70:	0019071b          	addiw	a4,s2,1
    80004d74:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004d78:	0004a683          	lw	a3,0(s1)
    80004d7c:	0026979b          	slliw	a5,a3,0x2
    80004d80:	00d787bb          	addw	a5,a5,a3
    80004d84:	0017979b          	slliw	a5,a5,0x1
    80004d88:	02f767bb          	remw	a5,a4,a5
    80004d8c:	fc0792e3          	bnez	a5,80004d50 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004d90:	fb9ff06f          	j	80004d48 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004d94:	00100793          	li	a5,1
    80004d98:	00007717          	auipc	a4,0x7
    80004d9c:	eaf72023          	sw	a5,-352(a4) # 8000bc38 <_ZL9threadEnd>
    td->buffer->put('!');
    80004da0:	0209b783          	ld	a5,32(s3)
    80004da4:	02100593          	li	a1,33
    80004da8:	0087b503          	ld	a0,8(a5)
    80004dac:	00001097          	auipc	ra,0x1
    80004db0:	c20080e7          	jalr	-992(ra) # 800059cc <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004db4:	0104b503          	ld	a0,16(s1)
    80004db8:	ffffd097          	auipc	ra,0xffffd
    80004dbc:	798080e7          	jalr	1944(ra) # 80002550 <_ZN9Semaphore6signalEv>
}
    80004dc0:	02813083          	ld	ra,40(sp)
    80004dc4:	02013403          	ld	s0,32(sp)
    80004dc8:	01813483          	ld	s1,24(sp)
    80004dcc:	01013903          	ld	s2,16(sp)
    80004dd0:	00813983          	ld	s3,8(sp)
    80004dd4:	03010113          	addi	sp,sp,48
    80004dd8:	00008067          	ret

0000000080004ddc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004ddc:	fe010113          	addi	sp,sp,-32
    80004de0:	00113c23          	sd	ra,24(sp)
    80004de4:	00813823          	sd	s0,16(sp)
    80004de8:	00913423          	sd	s1,8(sp)
    80004dec:	01213023          	sd	s2,0(sp)
    80004df0:	02010413          	addi	s0,sp,32
    80004df4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004df8:	00000913          	li	s2,0
    80004dfc:	00c0006f          	j	80004e08 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004e00:	ffffd097          	auipc	ra,0xffffd
    80004e04:	628080e7          	jalr	1576(ra) # 80002428 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004e08:	00007797          	auipc	a5,0x7
    80004e0c:	e307a783          	lw	a5,-464(a5) # 8000bc38 <_ZL9threadEnd>
    80004e10:	02079e63          	bnez	a5,80004e4c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004e14:	0004a583          	lw	a1,0(s1)
    80004e18:	0305859b          	addiw	a1,a1,48
    80004e1c:	0084b503          	ld	a0,8(s1)
    80004e20:	00001097          	auipc	ra,0x1
    80004e24:	bac080e7          	jalr	-1108(ra) # 800059cc <_ZN9BufferCPP3putEi>
        i++;
    80004e28:	0019071b          	addiw	a4,s2,1
    80004e2c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004e30:	0004a683          	lw	a3,0(s1)
    80004e34:	0026979b          	slliw	a5,a3,0x2
    80004e38:	00d787bb          	addw	a5,a5,a3
    80004e3c:	0017979b          	slliw	a5,a5,0x1
    80004e40:	02f767bb          	remw	a5,a4,a5
    80004e44:	fc0792e3          	bnez	a5,80004e08 <_ZN12ProducerSync8producerEPv+0x2c>
    80004e48:	fb9ff06f          	j	80004e00 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004e4c:	0104b503          	ld	a0,16(s1)
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	700080e7          	jalr	1792(ra) # 80002550 <_ZN9Semaphore6signalEv>
}
    80004e58:	01813083          	ld	ra,24(sp)
    80004e5c:	01013403          	ld	s0,16(sp)
    80004e60:	00813483          	ld	s1,8(sp)
    80004e64:	00013903          	ld	s2,0(sp)
    80004e68:	02010113          	addi	sp,sp,32
    80004e6c:	00008067          	ret

0000000080004e70 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004e70:	fd010113          	addi	sp,sp,-48
    80004e74:	02113423          	sd	ra,40(sp)
    80004e78:	02813023          	sd	s0,32(sp)
    80004e7c:	00913c23          	sd	s1,24(sp)
    80004e80:	01213823          	sd	s2,16(sp)
    80004e84:	01313423          	sd	s3,8(sp)
    80004e88:	01413023          	sd	s4,0(sp)
    80004e8c:	03010413          	addi	s0,sp,48
    80004e90:	00050993          	mv	s3,a0
    80004e94:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004e98:	00000a13          	li	s4,0
    80004e9c:	01c0006f          	j	80004eb8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004ea0:	ffffd097          	auipc	ra,0xffffd
    80004ea4:	588080e7          	jalr	1416(ra) # 80002428 <_ZN6Thread8dispatchEv>
    80004ea8:	0500006f          	j	80004ef8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004eac:	00a00513          	li	a0,10
    80004eb0:	ffffc097          	auipc	ra,0xffffc
    80004eb4:	730080e7          	jalr	1840(ra) # 800015e0 <_Z4putcc>
    while (!threadEnd) {
    80004eb8:	00007797          	auipc	a5,0x7
    80004ebc:	d807a783          	lw	a5,-640(a5) # 8000bc38 <_ZL9threadEnd>
    80004ec0:	06079263          	bnez	a5,80004f24 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004ec4:	00893503          	ld	a0,8(s2)
    80004ec8:	00001097          	auipc	ra,0x1
    80004ecc:	b94080e7          	jalr	-1132(ra) # 80005a5c <_ZN9BufferCPP3getEv>
        i++;
    80004ed0:	001a049b          	addiw	s1,s4,1
    80004ed4:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004ed8:	0ff57513          	andi	a0,a0,255
    80004edc:	ffffc097          	auipc	ra,0xffffc
    80004ee0:	704080e7          	jalr	1796(ra) # 800015e0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004ee4:	00092703          	lw	a4,0(s2)
    80004ee8:	0027179b          	slliw	a5,a4,0x2
    80004eec:	00e787bb          	addw	a5,a5,a4
    80004ef0:	02f4e7bb          	remw	a5,s1,a5
    80004ef4:	fa0786e3          	beqz	a5,80004ea0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004ef8:	05000793          	li	a5,80
    80004efc:	02f4e4bb          	remw	s1,s1,a5
    80004f00:	fa049ce3          	bnez	s1,80004eb8 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004f04:	fa9ff06f          	j	80004eac <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004f08:	0209b783          	ld	a5,32(s3)
    80004f0c:	0087b503          	ld	a0,8(a5)
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	b4c080e7          	jalr	-1204(ra) # 80005a5c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004f18:	0ff57513          	andi	a0,a0,255
    80004f1c:	ffffd097          	auipc	ra,0xffffd
    80004f20:	688080e7          	jalr	1672(ra) # 800025a4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004f24:	0209b783          	ld	a5,32(s3)
    80004f28:	0087b503          	ld	a0,8(a5)
    80004f2c:	00001097          	auipc	ra,0x1
    80004f30:	bbc080e7          	jalr	-1092(ra) # 80005ae8 <_ZN9BufferCPP6getCntEv>
    80004f34:	fca04ae3          	bgtz	a0,80004f08 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004f38:	01093503          	ld	a0,16(s2)
    80004f3c:	ffffd097          	auipc	ra,0xffffd
    80004f40:	614080e7          	jalr	1556(ra) # 80002550 <_ZN9Semaphore6signalEv>
}
    80004f44:	02813083          	ld	ra,40(sp)
    80004f48:	02013403          	ld	s0,32(sp)
    80004f4c:	01813483          	ld	s1,24(sp)
    80004f50:	01013903          	ld	s2,16(sp)
    80004f54:	00813983          	ld	s3,8(sp)
    80004f58:	00013a03          	ld	s4,0(sp)
    80004f5c:	03010113          	addi	sp,sp,48
    80004f60:	00008067          	ret

0000000080004f64 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004f64:	f8010113          	addi	sp,sp,-128
    80004f68:	06113c23          	sd	ra,120(sp)
    80004f6c:	06813823          	sd	s0,112(sp)
    80004f70:	06913423          	sd	s1,104(sp)
    80004f74:	07213023          	sd	s2,96(sp)
    80004f78:	05313c23          	sd	s3,88(sp)
    80004f7c:	05413823          	sd	s4,80(sp)
    80004f80:	05513423          	sd	s5,72(sp)
    80004f84:	05613023          	sd	s6,64(sp)
    80004f88:	03713c23          	sd	s7,56(sp)
    80004f8c:	03813823          	sd	s8,48(sp)
    80004f90:	03913423          	sd	s9,40(sp)
    80004f94:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004f98:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004f9c:	00004517          	auipc	a0,0x4
    80004fa0:	60c50513          	addi	a0,a0,1548 # 800095a8 <_ZZ12printIntegermE6digits+0x10>
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	604080e7          	jalr	1540(ra) # 800055a8 <_Z11printStringPKc>
    getString(input, 30);
    80004fac:	01e00593          	li	a1,30
    80004fb0:	f8040493          	addi	s1,s0,-128
    80004fb4:	00048513          	mv	a0,s1
    80004fb8:	00000097          	auipc	ra,0x0
    80004fbc:	678080e7          	jalr	1656(ra) # 80005630 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004fc0:	00048513          	mv	a0,s1
    80004fc4:	00000097          	auipc	ra,0x0
    80004fc8:	744080e7          	jalr	1860(ra) # 80005708 <_Z11stringToIntPKc>
    80004fcc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004fd0:	00004517          	auipc	a0,0x4
    80004fd4:	5f850513          	addi	a0,a0,1528 # 800095c8 <_ZZ12printIntegermE6digits+0x30>
    80004fd8:	00000097          	auipc	ra,0x0
    80004fdc:	5d0080e7          	jalr	1488(ra) # 800055a8 <_Z11printStringPKc>
    getString(input, 30);
    80004fe0:	01e00593          	li	a1,30
    80004fe4:	00048513          	mv	a0,s1
    80004fe8:	00000097          	auipc	ra,0x0
    80004fec:	648080e7          	jalr	1608(ra) # 80005630 <_Z9getStringPci>
    n = stringToInt(input);
    80004ff0:	00048513          	mv	a0,s1
    80004ff4:	00000097          	auipc	ra,0x0
    80004ff8:	714080e7          	jalr	1812(ra) # 80005708 <_Z11stringToIntPKc>
    80004ffc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005000:	00004517          	auipc	a0,0x4
    80005004:	5e850513          	addi	a0,a0,1512 # 800095e8 <_ZZ12printIntegermE6digits+0x50>
    80005008:	00000097          	auipc	ra,0x0
    8000500c:	5a0080e7          	jalr	1440(ra) # 800055a8 <_Z11printStringPKc>
    80005010:	00000613          	li	a2,0
    80005014:	00a00593          	li	a1,10
    80005018:	00090513          	mv	a0,s2
    8000501c:	00000097          	auipc	ra,0x0
    80005020:	73c080e7          	jalr	1852(ra) # 80005758 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005024:	00004517          	auipc	a0,0x4
    80005028:	5dc50513          	addi	a0,a0,1500 # 80009600 <_ZZ12printIntegermE6digits+0x68>
    8000502c:	00000097          	auipc	ra,0x0
    80005030:	57c080e7          	jalr	1404(ra) # 800055a8 <_Z11printStringPKc>
    80005034:	00000613          	li	a2,0
    80005038:	00a00593          	li	a1,10
    8000503c:	00048513          	mv	a0,s1
    80005040:	00000097          	auipc	ra,0x0
    80005044:	718080e7          	jalr	1816(ra) # 80005758 <_Z8printIntiii>
    printString(".\n");
    80005048:	00004517          	auipc	a0,0x4
    8000504c:	5d050513          	addi	a0,a0,1488 # 80009618 <_ZZ12printIntegermE6digits+0x80>
    80005050:	00000097          	auipc	ra,0x0
    80005054:	558080e7          	jalr	1368(ra) # 800055a8 <_Z11printStringPKc>
    if(threadNum > n) {
    80005058:	0324c463          	blt	s1,s2,80005080 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000505c:	03205c63          	blez	s2,80005094 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005060:	03800513          	li	a0,56
    80005064:	ffffd097          	auipc	ra,0xffffd
    80005068:	568080e7          	jalr	1384(ra) # 800025cc <_Znwm>
    8000506c:	00050a93          	mv	s5,a0
    80005070:	00048593          	mv	a1,s1
    80005074:	00001097          	auipc	ra,0x1
    80005078:	804080e7          	jalr	-2044(ra) # 80005878 <_ZN9BufferCPPC1Ei>
    8000507c:	0300006f          	j	800050ac <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005080:	00004517          	auipc	a0,0x4
    80005084:	5a050513          	addi	a0,a0,1440 # 80009620 <_ZZ12printIntegermE6digits+0x88>
    80005088:	00000097          	auipc	ra,0x0
    8000508c:	520080e7          	jalr	1312(ra) # 800055a8 <_Z11printStringPKc>
        return;
    80005090:	0140006f          	j	800050a4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005094:	00004517          	auipc	a0,0x4
    80005098:	5cc50513          	addi	a0,a0,1484 # 80009660 <_ZZ12printIntegermE6digits+0xc8>
    8000509c:	00000097          	auipc	ra,0x0
    800050a0:	50c080e7          	jalr	1292(ra) # 800055a8 <_Z11printStringPKc>
        return;
    800050a4:	000b8113          	mv	sp,s7
    800050a8:	2380006f          	j	800052e0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800050ac:	01000513          	li	a0,16
    800050b0:	ffffd097          	auipc	ra,0xffffd
    800050b4:	51c080e7          	jalr	1308(ra) # 800025cc <_Znwm>
    800050b8:	00050493          	mv	s1,a0
    800050bc:	00000593          	li	a1,0
    800050c0:	ffffd097          	auipc	ra,0xffffd
    800050c4:	3f0080e7          	jalr	1008(ra) # 800024b0 <_ZN9SemaphoreC1Ej>
    800050c8:	00007797          	auipc	a5,0x7
    800050cc:	b697bc23          	sd	s1,-1160(a5) # 8000bc40 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800050d0:	00391793          	slli	a5,s2,0x3
    800050d4:	00f78793          	addi	a5,a5,15
    800050d8:	ff07f793          	andi	a5,a5,-16
    800050dc:	40f10133          	sub	sp,sp,a5
    800050e0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800050e4:	0019071b          	addiw	a4,s2,1
    800050e8:	00171793          	slli	a5,a4,0x1
    800050ec:	00e787b3          	add	a5,a5,a4
    800050f0:	00379793          	slli	a5,a5,0x3
    800050f4:	00f78793          	addi	a5,a5,15
    800050f8:	ff07f793          	andi	a5,a5,-16
    800050fc:	40f10133          	sub	sp,sp,a5
    80005100:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005104:	00191c13          	slli	s8,s2,0x1
    80005108:	012c07b3          	add	a5,s8,s2
    8000510c:	00379793          	slli	a5,a5,0x3
    80005110:	00fa07b3          	add	a5,s4,a5
    80005114:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005118:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000511c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005120:	02800513          	li	a0,40
    80005124:	ffffd097          	auipc	ra,0xffffd
    80005128:	4a8080e7          	jalr	1192(ra) # 800025cc <_Znwm>
    8000512c:	00050b13          	mv	s6,a0
    80005130:	012c0c33          	add	s8,s8,s2
    80005134:	003c1c13          	slli	s8,s8,0x3
    80005138:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000513c:	ffffd097          	auipc	ra,0xffffd
    80005140:	330080e7          	jalr	816(ra) # 8000246c <_ZN6ThreadC1Ev>
    80005144:	00007797          	auipc	a5,0x7
    80005148:	9e478793          	addi	a5,a5,-1564 # 8000bb28 <_ZTV12ConsumerSync+0x10>
    8000514c:	00fb3023          	sd	a5,0(s6)
    80005150:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005154:	000b0513          	mv	a0,s6
    80005158:	ffffd097          	auipc	ra,0xffffd
    8000515c:	2a0080e7          	jalr	672(ra) # 800023f8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005160:	00000493          	li	s1,0
    80005164:	0380006f          	j	8000519c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005168:	00007797          	auipc	a5,0x7
    8000516c:	99878793          	addi	a5,a5,-1640 # 8000bb00 <_ZTV12ProducerSync+0x10>
    80005170:	00fcb023          	sd	a5,0(s9)
    80005174:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005178:	00349793          	slli	a5,s1,0x3
    8000517c:	00f987b3          	add	a5,s3,a5
    80005180:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005184:	00349793          	slli	a5,s1,0x3
    80005188:	00f987b3          	add	a5,s3,a5
    8000518c:	0007b503          	ld	a0,0(a5)
    80005190:	ffffd097          	auipc	ra,0xffffd
    80005194:	268080e7          	jalr	616(ra) # 800023f8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005198:	0014849b          	addiw	s1,s1,1
    8000519c:	0b24d063          	bge	s1,s2,8000523c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800051a0:	00149793          	slli	a5,s1,0x1
    800051a4:	009787b3          	add	a5,a5,s1
    800051a8:	00379793          	slli	a5,a5,0x3
    800051ac:	00fa07b3          	add	a5,s4,a5
    800051b0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800051b4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800051b8:	00007717          	auipc	a4,0x7
    800051bc:	a8873703          	ld	a4,-1400(a4) # 8000bc40 <_ZL10waitForAll>
    800051c0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800051c4:	02905863          	blez	s1,800051f4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800051c8:	02800513          	li	a0,40
    800051cc:	ffffd097          	auipc	ra,0xffffd
    800051d0:	400080e7          	jalr	1024(ra) # 800025cc <_Znwm>
    800051d4:	00050c93          	mv	s9,a0
    800051d8:	00149c13          	slli	s8,s1,0x1
    800051dc:	009c0c33          	add	s8,s8,s1
    800051e0:	003c1c13          	slli	s8,s8,0x3
    800051e4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800051e8:	ffffd097          	auipc	ra,0xffffd
    800051ec:	284080e7          	jalr	644(ra) # 8000246c <_ZN6ThreadC1Ev>
    800051f0:	f79ff06f          	j	80005168 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800051f4:	02800513          	li	a0,40
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	3d4080e7          	jalr	980(ra) # 800025cc <_Znwm>
    80005200:	00050c93          	mv	s9,a0
    80005204:	00149c13          	slli	s8,s1,0x1
    80005208:	009c0c33          	add	s8,s8,s1
    8000520c:	003c1c13          	slli	s8,s8,0x3
    80005210:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005214:	ffffd097          	auipc	ra,0xffffd
    80005218:	258080e7          	jalr	600(ra) # 8000246c <_ZN6ThreadC1Ev>
    8000521c:	00007797          	auipc	a5,0x7
    80005220:	8bc78793          	addi	a5,a5,-1860 # 8000bad8 <_ZTV16ProducerKeyboard+0x10>
    80005224:	00fcb023          	sd	a5,0(s9)
    80005228:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000522c:	00349793          	slli	a5,s1,0x3
    80005230:	00f987b3          	add	a5,s3,a5
    80005234:	0197b023          	sd	s9,0(a5)
    80005238:	f4dff06f          	j	80005184 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000523c:	ffffd097          	auipc	ra,0xffffd
    80005240:	1ec080e7          	jalr	492(ra) # 80002428 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005244:	00000493          	li	s1,0
    80005248:	00994e63          	blt	s2,s1,80005264 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000524c:	00007517          	auipc	a0,0x7
    80005250:	9f453503          	ld	a0,-1548(a0) # 8000bc40 <_ZL10waitForAll>
    80005254:	ffffd097          	auipc	ra,0xffffd
    80005258:	2d0080e7          	jalr	720(ra) # 80002524 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000525c:	0014849b          	addiw	s1,s1,1
    80005260:	fe9ff06f          	j	80005248 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005264:	00000493          	li	s1,0
    80005268:	0080006f          	j	80005270 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000526c:	0014849b          	addiw	s1,s1,1
    80005270:	0324d263          	bge	s1,s2,80005294 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005274:	00349793          	slli	a5,s1,0x3
    80005278:	00f987b3          	add	a5,s3,a5
    8000527c:	0007b503          	ld	a0,0(a5)
    80005280:	fe0506e3          	beqz	a0,8000526c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005284:	00053783          	ld	a5,0(a0)
    80005288:	0087b783          	ld	a5,8(a5)
    8000528c:	000780e7          	jalr	a5
    80005290:	fddff06f          	j	8000526c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005294:	000b0a63          	beqz	s6,800052a8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005298:	000b3783          	ld	a5,0(s6)
    8000529c:	0087b783          	ld	a5,8(a5)
    800052a0:	000b0513          	mv	a0,s6
    800052a4:	000780e7          	jalr	a5
    delete waitForAll;
    800052a8:	00007517          	auipc	a0,0x7
    800052ac:	99853503          	ld	a0,-1640(a0) # 8000bc40 <_ZL10waitForAll>
    800052b0:	00050863          	beqz	a0,800052c0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800052b4:	00053783          	ld	a5,0(a0)
    800052b8:	0087b783          	ld	a5,8(a5)
    800052bc:	000780e7          	jalr	a5
    delete buffer;
    800052c0:	000a8e63          	beqz	s5,800052dc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800052c4:	000a8513          	mv	a0,s5
    800052c8:	00001097          	auipc	ra,0x1
    800052cc:	8a8080e7          	jalr	-1880(ra) # 80005b70 <_ZN9BufferCPPD1Ev>
    800052d0:	000a8513          	mv	a0,s5
    800052d4:	ffffd097          	auipc	ra,0xffffd
    800052d8:	348080e7          	jalr	840(ra) # 8000261c <_ZdlPv>
    800052dc:	000b8113          	mv	sp,s7

}
    800052e0:	f8040113          	addi	sp,s0,-128
    800052e4:	07813083          	ld	ra,120(sp)
    800052e8:	07013403          	ld	s0,112(sp)
    800052ec:	06813483          	ld	s1,104(sp)
    800052f0:	06013903          	ld	s2,96(sp)
    800052f4:	05813983          	ld	s3,88(sp)
    800052f8:	05013a03          	ld	s4,80(sp)
    800052fc:	04813a83          	ld	s5,72(sp)
    80005300:	04013b03          	ld	s6,64(sp)
    80005304:	03813b83          	ld	s7,56(sp)
    80005308:	03013c03          	ld	s8,48(sp)
    8000530c:	02813c83          	ld	s9,40(sp)
    80005310:	08010113          	addi	sp,sp,128
    80005314:	00008067          	ret
    80005318:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000531c:	000a8513          	mv	a0,s5
    80005320:	ffffd097          	auipc	ra,0xffffd
    80005324:	2fc080e7          	jalr	764(ra) # 8000261c <_ZdlPv>
    80005328:	00048513          	mv	a0,s1
    8000532c:	00008097          	auipc	ra,0x8
    80005330:	9fc080e7          	jalr	-1540(ra) # 8000cd28 <_Unwind_Resume>
    80005334:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005338:	00048513          	mv	a0,s1
    8000533c:	ffffd097          	auipc	ra,0xffffd
    80005340:	2e0080e7          	jalr	736(ra) # 8000261c <_ZdlPv>
    80005344:	00090513          	mv	a0,s2
    80005348:	00008097          	auipc	ra,0x8
    8000534c:	9e0080e7          	jalr	-1568(ra) # 8000cd28 <_Unwind_Resume>
    80005350:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005354:	000b0513          	mv	a0,s6
    80005358:	ffffd097          	auipc	ra,0xffffd
    8000535c:	2c4080e7          	jalr	708(ra) # 8000261c <_ZdlPv>
    80005360:	00048513          	mv	a0,s1
    80005364:	00008097          	auipc	ra,0x8
    80005368:	9c4080e7          	jalr	-1596(ra) # 8000cd28 <_Unwind_Resume>
    8000536c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005370:	000c8513          	mv	a0,s9
    80005374:	ffffd097          	auipc	ra,0xffffd
    80005378:	2a8080e7          	jalr	680(ra) # 8000261c <_ZdlPv>
    8000537c:	00048513          	mv	a0,s1
    80005380:	00008097          	auipc	ra,0x8
    80005384:	9a8080e7          	jalr	-1624(ra) # 8000cd28 <_Unwind_Resume>
    80005388:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000538c:	000c8513          	mv	a0,s9
    80005390:	ffffd097          	auipc	ra,0xffffd
    80005394:	28c080e7          	jalr	652(ra) # 8000261c <_ZdlPv>
    80005398:	00048513          	mv	a0,s1
    8000539c:	00008097          	auipc	ra,0x8
    800053a0:	98c080e7          	jalr	-1652(ra) # 8000cd28 <_Unwind_Resume>

00000000800053a4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800053a4:	ff010113          	addi	sp,sp,-16
    800053a8:	00113423          	sd	ra,8(sp)
    800053ac:	00813023          	sd	s0,0(sp)
    800053b0:	01010413          	addi	s0,sp,16
    800053b4:	00006797          	auipc	a5,0x6
    800053b8:	77478793          	addi	a5,a5,1908 # 8000bb28 <_ZTV12ConsumerSync+0x10>
    800053bc:	00f53023          	sd	a5,0(a0)
    800053c0:	ffffd097          	auipc	ra,0xffffd
    800053c4:	2ec080e7          	jalr	748(ra) # 800026ac <_ZN6ThreadD1Ev>
    800053c8:	00813083          	ld	ra,8(sp)
    800053cc:	00013403          	ld	s0,0(sp)
    800053d0:	01010113          	addi	sp,sp,16
    800053d4:	00008067          	ret

00000000800053d8 <_ZN12ConsumerSyncD0Ev>:
    800053d8:	fe010113          	addi	sp,sp,-32
    800053dc:	00113c23          	sd	ra,24(sp)
    800053e0:	00813823          	sd	s0,16(sp)
    800053e4:	00913423          	sd	s1,8(sp)
    800053e8:	02010413          	addi	s0,sp,32
    800053ec:	00050493          	mv	s1,a0
    800053f0:	00006797          	auipc	a5,0x6
    800053f4:	73878793          	addi	a5,a5,1848 # 8000bb28 <_ZTV12ConsumerSync+0x10>
    800053f8:	00f53023          	sd	a5,0(a0)
    800053fc:	ffffd097          	auipc	ra,0xffffd
    80005400:	2b0080e7          	jalr	688(ra) # 800026ac <_ZN6ThreadD1Ev>
    80005404:	00048513          	mv	a0,s1
    80005408:	ffffd097          	auipc	ra,0xffffd
    8000540c:	214080e7          	jalr	532(ra) # 8000261c <_ZdlPv>
    80005410:	01813083          	ld	ra,24(sp)
    80005414:	01013403          	ld	s0,16(sp)
    80005418:	00813483          	ld	s1,8(sp)
    8000541c:	02010113          	addi	sp,sp,32
    80005420:	00008067          	ret

0000000080005424 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005424:	ff010113          	addi	sp,sp,-16
    80005428:	00113423          	sd	ra,8(sp)
    8000542c:	00813023          	sd	s0,0(sp)
    80005430:	01010413          	addi	s0,sp,16
    80005434:	00006797          	auipc	a5,0x6
    80005438:	6cc78793          	addi	a5,a5,1740 # 8000bb00 <_ZTV12ProducerSync+0x10>
    8000543c:	00f53023          	sd	a5,0(a0)
    80005440:	ffffd097          	auipc	ra,0xffffd
    80005444:	26c080e7          	jalr	620(ra) # 800026ac <_ZN6ThreadD1Ev>
    80005448:	00813083          	ld	ra,8(sp)
    8000544c:	00013403          	ld	s0,0(sp)
    80005450:	01010113          	addi	sp,sp,16
    80005454:	00008067          	ret

0000000080005458 <_ZN12ProducerSyncD0Ev>:
    80005458:	fe010113          	addi	sp,sp,-32
    8000545c:	00113c23          	sd	ra,24(sp)
    80005460:	00813823          	sd	s0,16(sp)
    80005464:	00913423          	sd	s1,8(sp)
    80005468:	02010413          	addi	s0,sp,32
    8000546c:	00050493          	mv	s1,a0
    80005470:	00006797          	auipc	a5,0x6
    80005474:	69078793          	addi	a5,a5,1680 # 8000bb00 <_ZTV12ProducerSync+0x10>
    80005478:	00f53023          	sd	a5,0(a0)
    8000547c:	ffffd097          	auipc	ra,0xffffd
    80005480:	230080e7          	jalr	560(ra) # 800026ac <_ZN6ThreadD1Ev>
    80005484:	00048513          	mv	a0,s1
    80005488:	ffffd097          	auipc	ra,0xffffd
    8000548c:	194080e7          	jalr	404(ra) # 8000261c <_ZdlPv>
    80005490:	01813083          	ld	ra,24(sp)
    80005494:	01013403          	ld	s0,16(sp)
    80005498:	00813483          	ld	s1,8(sp)
    8000549c:	02010113          	addi	sp,sp,32
    800054a0:	00008067          	ret

00000000800054a4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800054a4:	ff010113          	addi	sp,sp,-16
    800054a8:	00113423          	sd	ra,8(sp)
    800054ac:	00813023          	sd	s0,0(sp)
    800054b0:	01010413          	addi	s0,sp,16
    800054b4:	00006797          	auipc	a5,0x6
    800054b8:	62478793          	addi	a5,a5,1572 # 8000bad8 <_ZTV16ProducerKeyboard+0x10>
    800054bc:	00f53023          	sd	a5,0(a0)
    800054c0:	ffffd097          	auipc	ra,0xffffd
    800054c4:	1ec080e7          	jalr	492(ra) # 800026ac <_ZN6ThreadD1Ev>
    800054c8:	00813083          	ld	ra,8(sp)
    800054cc:	00013403          	ld	s0,0(sp)
    800054d0:	01010113          	addi	sp,sp,16
    800054d4:	00008067          	ret

00000000800054d8 <_ZN16ProducerKeyboardD0Ev>:
    800054d8:	fe010113          	addi	sp,sp,-32
    800054dc:	00113c23          	sd	ra,24(sp)
    800054e0:	00813823          	sd	s0,16(sp)
    800054e4:	00913423          	sd	s1,8(sp)
    800054e8:	02010413          	addi	s0,sp,32
    800054ec:	00050493          	mv	s1,a0
    800054f0:	00006797          	auipc	a5,0x6
    800054f4:	5e878793          	addi	a5,a5,1512 # 8000bad8 <_ZTV16ProducerKeyboard+0x10>
    800054f8:	00f53023          	sd	a5,0(a0)
    800054fc:	ffffd097          	auipc	ra,0xffffd
    80005500:	1b0080e7          	jalr	432(ra) # 800026ac <_ZN6ThreadD1Ev>
    80005504:	00048513          	mv	a0,s1
    80005508:	ffffd097          	auipc	ra,0xffffd
    8000550c:	114080e7          	jalr	276(ra) # 8000261c <_ZdlPv>
    80005510:	01813083          	ld	ra,24(sp)
    80005514:	01013403          	ld	s0,16(sp)
    80005518:	00813483          	ld	s1,8(sp)
    8000551c:	02010113          	addi	sp,sp,32
    80005520:	00008067          	ret

0000000080005524 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005524:	ff010113          	addi	sp,sp,-16
    80005528:	00113423          	sd	ra,8(sp)
    8000552c:	00813023          	sd	s0,0(sp)
    80005530:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005534:	02053583          	ld	a1,32(a0)
    80005538:	fffff097          	auipc	ra,0xfffff
    8000553c:	7e4080e7          	jalr	2020(ra) # 80004d1c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005540:	00813083          	ld	ra,8(sp)
    80005544:	00013403          	ld	s0,0(sp)
    80005548:	01010113          	addi	sp,sp,16
    8000554c:	00008067          	ret

0000000080005550 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005550:	ff010113          	addi	sp,sp,-16
    80005554:	00113423          	sd	ra,8(sp)
    80005558:	00813023          	sd	s0,0(sp)
    8000555c:	01010413          	addi	s0,sp,16
        producer(td);
    80005560:	02053583          	ld	a1,32(a0)
    80005564:	00000097          	auipc	ra,0x0
    80005568:	878080e7          	jalr	-1928(ra) # 80004ddc <_ZN12ProducerSync8producerEPv>
    }
    8000556c:	00813083          	ld	ra,8(sp)
    80005570:	00013403          	ld	s0,0(sp)
    80005574:	01010113          	addi	sp,sp,16
    80005578:	00008067          	ret

000000008000557c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000557c:	ff010113          	addi	sp,sp,-16
    80005580:	00113423          	sd	ra,8(sp)
    80005584:	00813023          	sd	s0,0(sp)
    80005588:	01010413          	addi	s0,sp,16
        consumer(td);
    8000558c:	02053583          	ld	a1,32(a0)
    80005590:	00000097          	auipc	ra,0x0
    80005594:	8e0080e7          	jalr	-1824(ra) # 80004e70 <_ZN12ConsumerSync8consumerEPv>
    }
    80005598:	00813083          	ld	ra,8(sp)
    8000559c:	00013403          	ld	s0,0(sp)
    800055a0:	01010113          	addi	sp,sp,16
    800055a4:	00008067          	ret

00000000800055a8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
    {
    800055a8:	fe010113          	addi	sp,sp,-32
    800055ac:	00113c23          	sd	ra,24(sp)
    800055b0:	00813823          	sd	s0,16(sp)
    800055b4:	00913423          	sd	s1,8(sp)
    800055b8:	02010413          	addi	s0,sp,32
    800055bc:	00050493          	mv	s1,a0
    LOCK();
    800055c0:	00100613          	li	a2,1
    800055c4:	00000593          	li	a1,0
    800055c8:	00006517          	auipc	a0,0x6
    800055cc:	68050513          	addi	a0,a0,1664 # 8000bc48 <lockPrint>
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	d7c080e7          	jalr	-644(ra) # 8000134c <copy_and_swap>
    800055d8:	00050863          	beqz	a0,800055e8 <_Z11printStringPKc+0x40>
    800055dc:	ffffc097          	auipc	ra,0xffffc
    800055e0:	ee0080e7          	jalr	-288(ra) # 800014bc <_Z15thread_dispatchv>
    800055e4:	fddff06f          	j	800055c0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800055e8:	0004c503          	lbu	a0,0(s1)
    800055ec:	00050a63          	beqz	a0,80005600 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800055f0:	ffffc097          	auipc	ra,0xffffc
    800055f4:	ff0080e7          	jalr	-16(ra) # 800015e0 <_Z4putcc>
        string++;
    800055f8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800055fc:	fedff06f          	j	800055e8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005600:	00000613          	li	a2,0
    80005604:	00100593          	li	a1,1
    80005608:	00006517          	auipc	a0,0x6
    8000560c:	64050513          	addi	a0,a0,1600 # 8000bc48 <lockPrint>
    80005610:	ffffc097          	auipc	ra,0xffffc
    80005614:	d3c080e7          	jalr	-708(ra) # 8000134c <copy_and_swap>
    80005618:	fe0514e3          	bnez	a0,80005600 <_Z11printStringPKc+0x58>
}
    8000561c:	01813083          	ld	ra,24(sp)
    80005620:	01013403          	ld	s0,16(sp)
    80005624:	00813483          	ld	s1,8(sp)
    80005628:	02010113          	addi	sp,sp,32
    8000562c:	00008067          	ret

0000000080005630 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005630:	fd010113          	addi	sp,sp,-48
    80005634:	02113423          	sd	ra,40(sp)
    80005638:	02813023          	sd	s0,32(sp)
    8000563c:	00913c23          	sd	s1,24(sp)
    80005640:	01213823          	sd	s2,16(sp)
    80005644:	01313423          	sd	s3,8(sp)
    80005648:	01413023          	sd	s4,0(sp)
    8000564c:	03010413          	addi	s0,sp,48
    80005650:	00050993          	mv	s3,a0
    80005654:	00058a13          	mv	s4,a1
    LOCK();
    80005658:	00100613          	li	a2,1
    8000565c:	00000593          	li	a1,0
    80005660:	00006517          	auipc	a0,0x6
    80005664:	5e850513          	addi	a0,a0,1512 # 8000bc48 <lockPrint>
    80005668:	ffffc097          	auipc	ra,0xffffc
    8000566c:	ce4080e7          	jalr	-796(ra) # 8000134c <copy_and_swap>
    80005670:	00050863          	beqz	a0,80005680 <_Z9getStringPci+0x50>
    80005674:	ffffc097          	auipc	ra,0xffffc
    80005678:	e48080e7          	jalr	-440(ra) # 800014bc <_Z15thread_dispatchv>
    8000567c:	fddff06f          	j	80005658 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005680:	00000913          	li	s2,0
    80005684:	00090493          	mv	s1,s2
    80005688:	0019091b          	addiw	s2,s2,1
    8000568c:	03495a63          	bge	s2,s4,800056c0 <_Z9getStringPci+0x90>
        cc = getc();
    80005690:	ffffc097          	auipc	ra,0xffffc
    80005694:	f28080e7          	jalr	-216(ra) # 800015b8 <_Z4getcv>
        if(cc < 1)
    80005698:	02050463          	beqz	a0,800056c0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000569c:	009984b3          	add	s1,s3,s1
    800056a0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800056a4:	00a00793          	li	a5,10
    800056a8:	00f50a63          	beq	a0,a5,800056bc <_Z9getStringPci+0x8c>
    800056ac:	00d00793          	li	a5,13
    800056b0:	fcf51ae3          	bne	a0,a5,80005684 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800056b4:	00090493          	mv	s1,s2
    800056b8:	0080006f          	j	800056c0 <_Z9getStringPci+0x90>
    800056bc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800056c0:	009984b3          	add	s1,s3,s1
    800056c4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800056c8:	00000613          	li	a2,0
    800056cc:	00100593          	li	a1,1
    800056d0:	00006517          	auipc	a0,0x6
    800056d4:	57850513          	addi	a0,a0,1400 # 8000bc48 <lockPrint>
    800056d8:	ffffc097          	auipc	ra,0xffffc
    800056dc:	c74080e7          	jalr	-908(ra) # 8000134c <copy_and_swap>
    800056e0:	fe0514e3          	bnez	a0,800056c8 <_Z9getStringPci+0x98>
    return buf;
}
    800056e4:	00098513          	mv	a0,s3
    800056e8:	02813083          	ld	ra,40(sp)
    800056ec:	02013403          	ld	s0,32(sp)
    800056f0:	01813483          	ld	s1,24(sp)
    800056f4:	01013903          	ld	s2,16(sp)
    800056f8:	00813983          	ld	s3,8(sp)
    800056fc:	00013a03          	ld	s4,0(sp)
    80005700:	03010113          	addi	sp,sp,48
    80005704:	00008067          	ret

0000000080005708 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005708:	ff010113          	addi	sp,sp,-16
    8000570c:	00813423          	sd	s0,8(sp)
    80005710:	01010413          	addi	s0,sp,16
    80005714:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005718:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000571c:	0006c603          	lbu	a2,0(a3)
    80005720:	fd06071b          	addiw	a4,a2,-48
    80005724:	0ff77713          	andi	a4,a4,255
    80005728:	00900793          	li	a5,9
    8000572c:	02e7e063          	bltu	a5,a4,8000574c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005730:	0025179b          	slliw	a5,a0,0x2
    80005734:	00a787bb          	addw	a5,a5,a0
    80005738:	0017979b          	slliw	a5,a5,0x1
    8000573c:	00168693          	addi	a3,a3,1
    80005740:	00c787bb          	addw	a5,a5,a2
    80005744:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005748:	fd5ff06f          	j	8000571c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000574c:	00813403          	ld	s0,8(sp)
    80005750:	01010113          	addi	sp,sp,16
    80005754:	00008067          	ret

0000000080005758 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005758:	fc010113          	addi	sp,sp,-64
    8000575c:	02113c23          	sd	ra,56(sp)
    80005760:	02813823          	sd	s0,48(sp)
    80005764:	02913423          	sd	s1,40(sp)
    80005768:	03213023          	sd	s2,32(sp)
    8000576c:	01313c23          	sd	s3,24(sp)
    80005770:	04010413          	addi	s0,sp,64
    80005774:	00050493          	mv	s1,a0
    80005778:	00058913          	mv	s2,a1
    8000577c:	00060993          	mv	s3,a2
    LOCK();
    80005780:	00100613          	li	a2,1
    80005784:	00000593          	li	a1,0
    80005788:	00006517          	auipc	a0,0x6
    8000578c:	4c050513          	addi	a0,a0,1216 # 8000bc48 <lockPrint>
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	bbc080e7          	jalr	-1092(ra) # 8000134c <copy_and_swap>
    80005798:	00050863          	beqz	a0,800057a8 <_Z8printIntiii+0x50>
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	d20080e7          	jalr	-736(ra) # 800014bc <_Z15thread_dispatchv>
    800057a4:	fddff06f          	j	80005780 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800057a8:	00098463          	beqz	s3,800057b0 <_Z8printIntiii+0x58>
    800057ac:	0804c463          	bltz	s1,80005834 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800057b0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800057b4:	00000593          	li	a1,0
    }

    i = 0;
    800057b8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800057bc:	0009079b          	sext.w	a5,s2
    800057c0:	0325773b          	remuw	a4,a0,s2
    800057c4:	00048613          	mv	a2,s1
    800057c8:	0014849b          	addiw	s1,s1,1
    800057cc:	02071693          	slli	a3,a4,0x20
    800057d0:	0206d693          	srli	a3,a3,0x20
    800057d4:	00006717          	auipc	a4,0x6
    800057d8:	36c70713          	addi	a4,a4,876 # 8000bb40 <digits>
    800057dc:	00d70733          	add	a4,a4,a3
    800057e0:	00074683          	lbu	a3,0(a4)
    800057e4:	fd040713          	addi	a4,s0,-48
    800057e8:	00c70733          	add	a4,a4,a2
    800057ec:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800057f0:	0005071b          	sext.w	a4,a0
    800057f4:	0325553b          	divuw	a0,a0,s2
    800057f8:	fcf772e3          	bgeu	a4,a5,800057bc <_Z8printIntiii+0x64>
    if(neg)
    800057fc:	00058c63          	beqz	a1,80005814 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005800:	fd040793          	addi	a5,s0,-48
    80005804:	009784b3          	add	s1,a5,s1
    80005808:	02d00793          	li	a5,45
    8000580c:	fef48823          	sb	a5,-16(s1)
    80005810:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005814:	fff4849b          	addiw	s1,s1,-1
    80005818:	0204c463          	bltz	s1,80005840 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000581c:	fd040793          	addi	a5,s0,-48
    80005820:	009787b3          	add	a5,a5,s1
    80005824:	ff07c503          	lbu	a0,-16(a5)
    80005828:	ffffc097          	auipc	ra,0xffffc
    8000582c:	db8080e7          	jalr	-584(ra) # 800015e0 <_Z4putcc>
    80005830:	fe5ff06f          	j	80005814 <_Z8printIntiii+0xbc>
        x = -xx;
    80005834:	4090053b          	negw	a0,s1
        neg = 1;
    80005838:	00100593          	li	a1,1
        x = -xx;
    8000583c:	f7dff06f          	j	800057b8 <_Z8printIntiii+0x60>

    UNLOCK();
    80005840:	00000613          	li	a2,0
    80005844:	00100593          	li	a1,1
    80005848:	00006517          	auipc	a0,0x6
    8000584c:	40050513          	addi	a0,a0,1024 # 8000bc48 <lockPrint>
    80005850:	ffffc097          	auipc	ra,0xffffc
    80005854:	afc080e7          	jalr	-1284(ra) # 8000134c <copy_and_swap>
    80005858:	fe0514e3          	bnez	a0,80005840 <_Z8printIntiii+0xe8>
    8000585c:	03813083          	ld	ra,56(sp)
    80005860:	03013403          	ld	s0,48(sp)
    80005864:	02813483          	ld	s1,40(sp)
    80005868:	02013903          	ld	s2,32(sp)
    8000586c:	01813983          	ld	s3,24(sp)
    80005870:	04010113          	addi	sp,sp,64
    80005874:	00008067          	ret

0000000080005878 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005878:	fd010113          	addi	sp,sp,-48
    8000587c:	02113423          	sd	ra,40(sp)
    80005880:	02813023          	sd	s0,32(sp)
    80005884:	00913c23          	sd	s1,24(sp)
    80005888:	01213823          	sd	s2,16(sp)
    8000588c:	01313423          	sd	s3,8(sp)
    80005890:	03010413          	addi	s0,sp,48
    80005894:	00050493          	mv	s1,a0
    80005898:	00058913          	mv	s2,a1
    8000589c:	0015879b          	addiw	a5,a1,1
    800058a0:	0007851b          	sext.w	a0,a5
    800058a4:	00f4a023          	sw	a5,0(s1)
    800058a8:	0004a823          	sw	zero,16(s1)
    800058ac:	0004aa23          	sw	zero,20(s1)

    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800058b0:	00251513          	slli	a0,a0,0x2
    800058b4:	ffffc097          	auipc	ra,0xffffc
    800058b8:	ab8080e7          	jalr	-1352(ra) # 8000136c <_Z9mem_allocm>
    800058bc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800058c0:	01000513          	li	a0,16
    800058c4:	ffffd097          	auipc	ra,0xffffd
    800058c8:	d08080e7          	jalr	-760(ra) # 800025cc <_Znwm>
    800058cc:	00050993          	mv	s3,a0
    800058d0:	00000593          	li	a1,0
    800058d4:	ffffd097          	auipc	ra,0xffffd
    800058d8:	bdc080e7          	jalr	-1060(ra) # 800024b0 <_ZN9SemaphoreC1Ej>
    800058dc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800058e0:	01000513          	li	a0,16
    800058e4:	ffffd097          	auipc	ra,0xffffd
    800058e8:	ce8080e7          	jalr	-792(ra) # 800025cc <_Znwm>
    800058ec:	00050993          	mv	s3,a0
    800058f0:	00090593          	mv	a1,s2
    800058f4:	ffffd097          	auipc	ra,0xffffd
    800058f8:	bbc080e7          	jalr	-1092(ra) # 800024b0 <_ZN9SemaphoreC1Ej>
    800058fc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005900:	01000513          	li	a0,16
    80005904:	ffffd097          	auipc	ra,0xffffd
    80005908:	cc8080e7          	jalr	-824(ra) # 800025cc <_Znwm>
    8000590c:	00050913          	mv	s2,a0
    80005910:	00100593          	li	a1,1
    80005914:	ffffd097          	auipc	ra,0xffffd
    80005918:	b9c080e7          	jalr	-1124(ra) # 800024b0 <_ZN9SemaphoreC1Ej>
    8000591c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005920:	01000513          	li	a0,16
    80005924:	ffffd097          	auipc	ra,0xffffd
    80005928:	ca8080e7          	jalr	-856(ra) # 800025cc <_Znwm>
    8000592c:	00050913          	mv	s2,a0
    80005930:	00100593          	li	a1,1
    80005934:	ffffd097          	auipc	ra,0xffffd
    80005938:	b7c080e7          	jalr	-1156(ra) # 800024b0 <_ZN9SemaphoreC1Ej>
    8000593c:	0324b823          	sd	s2,48(s1)
}
    80005940:	02813083          	ld	ra,40(sp)
    80005944:	02013403          	ld	s0,32(sp)
    80005948:	01813483          	ld	s1,24(sp)
    8000594c:	01013903          	ld	s2,16(sp)
    80005950:	00813983          	ld	s3,8(sp)
    80005954:	03010113          	addi	sp,sp,48
    80005958:	00008067          	ret
    8000595c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005960:	00098513          	mv	a0,s3
    80005964:	ffffd097          	auipc	ra,0xffffd
    80005968:	cb8080e7          	jalr	-840(ra) # 8000261c <_ZdlPv>
    8000596c:	00048513          	mv	a0,s1
    80005970:	00007097          	auipc	ra,0x7
    80005974:	3b8080e7          	jalr	952(ra) # 8000cd28 <_Unwind_Resume>
    80005978:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000597c:	00098513          	mv	a0,s3
    80005980:	ffffd097          	auipc	ra,0xffffd
    80005984:	c9c080e7          	jalr	-868(ra) # 8000261c <_ZdlPv>
    80005988:	00048513          	mv	a0,s1
    8000598c:	00007097          	auipc	ra,0x7
    80005990:	39c080e7          	jalr	924(ra) # 8000cd28 <_Unwind_Resume>
    80005994:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005998:	00090513          	mv	a0,s2
    8000599c:	ffffd097          	auipc	ra,0xffffd
    800059a0:	c80080e7          	jalr	-896(ra) # 8000261c <_ZdlPv>
    800059a4:	00048513          	mv	a0,s1
    800059a8:	00007097          	auipc	ra,0x7
    800059ac:	380080e7          	jalr	896(ra) # 8000cd28 <_Unwind_Resume>
    800059b0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800059b4:	00090513          	mv	a0,s2
    800059b8:	ffffd097          	auipc	ra,0xffffd
    800059bc:	c64080e7          	jalr	-924(ra) # 8000261c <_ZdlPv>
    800059c0:	00048513          	mv	a0,s1
    800059c4:	00007097          	auipc	ra,0x7
    800059c8:	364080e7          	jalr	868(ra) # 8000cd28 <_Unwind_Resume>

00000000800059cc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800059cc:	fe010113          	addi	sp,sp,-32
    800059d0:	00113c23          	sd	ra,24(sp)
    800059d4:	00813823          	sd	s0,16(sp)
    800059d8:	00913423          	sd	s1,8(sp)
    800059dc:	01213023          	sd	s2,0(sp)
    800059e0:	02010413          	addi	s0,sp,32
    800059e4:	00050493          	mv	s1,a0
    800059e8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800059ec:	01853503          	ld	a0,24(a0)
    800059f0:	ffffd097          	auipc	ra,0xffffd
    800059f4:	b34080e7          	jalr	-1228(ra) # 80002524 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800059f8:	0304b503          	ld	a0,48(s1)
    800059fc:	ffffd097          	auipc	ra,0xffffd
    80005a00:	b28080e7          	jalr	-1240(ra) # 80002524 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005a04:	0084b783          	ld	a5,8(s1)
    80005a08:	0144a703          	lw	a4,20(s1)
    80005a0c:	00271713          	slli	a4,a4,0x2
    80005a10:	00e787b3          	add	a5,a5,a4
    80005a14:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005a18:	0144a783          	lw	a5,20(s1)
    80005a1c:	0017879b          	addiw	a5,a5,1
    80005a20:	0004a703          	lw	a4,0(s1)
    80005a24:	02e7e7bb          	remw	a5,a5,a4
    80005a28:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005a2c:	0304b503          	ld	a0,48(s1)
    80005a30:	ffffd097          	auipc	ra,0xffffd
    80005a34:	b20080e7          	jalr	-1248(ra) # 80002550 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005a38:	0204b503          	ld	a0,32(s1)
    80005a3c:	ffffd097          	auipc	ra,0xffffd
    80005a40:	b14080e7          	jalr	-1260(ra) # 80002550 <_ZN9Semaphore6signalEv>

}
    80005a44:	01813083          	ld	ra,24(sp)
    80005a48:	01013403          	ld	s0,16(sp)
    80005a4c:	00813483          	ld	s1,8(sp)
    80005a50:	00013903          	ld	s2,0(sp)
    80005a54:	02010113          	addi	sp,sp,32
    80005a58:	00008067          	ret

0000000080005a5c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005a5c:	fe010113          	addi	sp,sp,-32
    80005a60:	00113c23          	sd	ra,24(sp)
    80005a64:	00813823          	sd	s0,16(sp)
    80005a68:	00913423          	sd	s1,8(sp)
    80005a6c:	01213023          	sd	s2,0(sp)
    80005a70:	02010413          	addi	s0,sp,32
    80005a74:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005a78:	02053503          	ld	a0,32(a0)
    80005a7c:	ffffd097          	auipc	ra,0xffffd
    80005a80:	aa8080e7          	jalr	-1368(ra) # 80002524 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005a84:	0284b503          	ld	a0,40(s1)
    80005a88:	ffffd097          	auipc	ra,0xffffd
    80005a8c:	a9c080e7          	jalr	-1380(ra) # 80002524 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005a90:	0084b703          	ld	a4,8(s1)
    80005a94:	0104a783          	lw	a5,16(s1)
    80005a98:	00279693          	slli	a3,a5,0x2
    80005a9c:	00d70733          	add	a4,a4,a3
    80005aa0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005aa4:	0017879b          	addiw	a5,a5,1
    80005aa8:	0004a703          	lw	a4,0(s1)
    80005aac:	02e7e7bb          	remw	a5,a5,a4
    80005ab0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005ab4:	0284b503          	ld	a0,40(s1)
    80005ab8:	ffffd097          	auipc	ra,0xffffd
    80005abc:	a98080e7          	jalr	-1384(ra) # 80002550 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005ac0:	0184b503          	ld	a0,24(s1)
    80005ac4:	ffffd097          	auipc	ra,0xffffd
    80005ac8:	a8c080e7          	jalr	-1396(ra) # 80002550 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005acc:	00090513          	mv	a0,s2
    80005ad0:	01813083          	ld	ra,24(sp)
    80005ad4:	01013403          	ld	s0,16(sp)
    80005ad8:	00813483          	ld	s1,8(sp)
    80005adc:	00013903          	ld	s2,0(sp)
    80005ae0:	02010113          	addi	sp,sp,32
    80005ae4:	00008067          	ret

0000000080005ae8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005ae8:	fe010113          	addi	sp,sp,-32
    80005aec:	00113c23          	sd	ra,24(sp)
    80005af0:	00813823          	sd	s0,16(sp)
    80005af4:	00913423          	sd	s1,8(sp)
    80005af8:	01213023          	sd	s2,0(sp)
    80005afc:	02010413          	addi	s0,sp,32
    80005b00:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005b04:	02853503          	ld	a0,40(a0)
    80005b08:	ffffd097          	auipc	ra,0xffffd
    80005b0c:	a1c080e7          	jalr	-1508(ra) # 80002524 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005b10:	0304b503          	ld	a0,48(s1)
    80005b14:	ffffd097          	auipc	ra,0xffffd
    80005b18:	a10080e7          	jalr	-1520(ra) # 80002524 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005b1c:	0144a783          	lw	a5,20(s1)
    80005b20:	0104a903          	lw	s2,16(s1)
    80005b24:	0327ce63          	blt	a5,s2,80005b60 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005b28:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005b2c:	0304b503          	ld	a0,48(s1)
    80005b30:	ffffd097          	auipc	ra,0xffffd
    80005b34:	a20080e7          	jalr	-1504(ra) # 80002550 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005b38:	0284b503          	ld	a0,40(s1)
    80005b3c:	ffffd097          	auipc	ra,0xffffd
    80005b40:	a14080e7          	jalr	-1516(ra) # 80002550 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005b44:	00090513          	mv	a0,s2
    80005b48:	01813083          	ld	ra,24(sp)
    80005b4c:	01013403          	ld	s0,16(sp)
    80005b50:	00813483          	ld	s1,8(sp)
    80005b54:	00013903          	ld	s2,0(sp)
    80005b58:	02010113          	addi	sp,sp,32
    80005b5c:	00008067          	ret
        ret = cap - head + tail;
    80005b60:	0004a703          	lw	a4,0(s1)
    80005b64:	4127093b          	subw	s2,a4,s2
    80005b68:	00f9093b          	addw	s2,s2,a5
    80005b6c:	fc1ff06f          	j	80005b2c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005b70 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005b70:	fe010113          	addi	sp,sp,-32
    80005b74:	00113c23          	sd	ra,24(sp)
    80005b78:	00813823          	sd	s0,16(sp)
    80005b7c:	00913423          	sd	s1,8(sp)
    80005b80:	02010413          	addi	s0,sp,32
    80005b84:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005b88:	00a00513          	li	a0,10
    80005b8c:	ffffd097          	auipc	ra,0xffffd
    80005b90:	a18080e7          	jalr	-1512(ra) # 800025a4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005b94:	00004517          	auipc	a0,0x4
    80005b98:	c2c50513          	addi	a0,a0,-980 # 800097c0 <_ZZ12printIntegermE6digits+0x228>
    80005b9c:	00000097          	auipc	ra,0x0
    80005ba0:	a0c080e7          	jalr	-1524(ra) # 800055a8 <_Z11printStringPKc>
    while (getCnt()) {
    80005ba4:	00048513          	mv	a0,s1
    80005ba8:	00000097          	auipc	ra,0x0
    80005bac:	f40080e7          	jalr	-192(ra) # 80005ae8 <_ZN9BufferCPP6getCntEv>
    80005bb0:	02050c63          	beqz	a0,80005be8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005bb4:	0084b783          	ld	a5,8(s1)
    80005bb8:	0104a703          	lw	a4,16(s1)
    80005bbc:	00271713          	slli	a4,a4,0x2
    80005bc0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005bc4:	0007c503          	lbu	a0,0(a5)
    80005bc8:	ffffd097          	auipc	ra,0xffffd
    80005bcc:	9dc080e7          	jalr	-1572(ra) # 800025a4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005bd0:	0104a783          	lw	a5,16(s1)
    80005bd4:	0017879b          	addiw	a5,a5,1
    80005bd8:	0004a703          	lw	a4,0(s1)
    80005bdc:	02e7e7bb          	remw	a5,a5,a4
    80005be0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005be4:	fc1ff06f          	j	80005ba4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005be8:	02100513          	li	a0,33
    80005bec:	ffffd097          	auipc	ra,0xffffd
    80005bf0:	9b8080e7          	jalr	-1608(ra) # 800025a4 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005bf4:	00a00513          	li	a0,10
    80005bf8:	ffffd097          	auipc	ra,0xffffd
    80005bfc:	9ac080e7          	jalr	-1620(ra) # 800025a4 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005c00:	0084b503          	ld	a0,8(s1)
    80005c04:	ffffb097          	auipc	ra,0xffffb
    80005c08:	7a0080e7          	jalr	1952(ra) # 800013a4 <_Z8mem_freePv>
    delete itemAvailable;
    80005c0c:	0204b503          	ld	a0,32(s1)
    80005c10:	00050863          	beqz	a0,80005c20 <_ZN9BufferCPPD1Ev+0xb0>
    80005c14:	00053783          	ld	a5,0(a0)
    80005c18:	0087b783          	ld	a5,8(a5)
    80005c1c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005c20:	0184b503          	ld	a0,24(s1)
    80005c24:	00050863          	beqz	a0,80005c34 <_ZN9BufferCPPD1Ev+0xc4>
    80005c28:	00053783          	ld	a5,0(a0)
    80005c2c:	0087b783          	ld	a5,8(a5)
    80005c30:	000780e7          	jalr	a5
    delete mutexTail;
    80005c34:	0304b503          	ld	a0,48(s1)
    80005c38:	00050863          	beqz	a0,80005c48 <_ZN9BufferCPPD1Ev+0xd8>
    80005c3c:	00053783          	ld	a5,0(a0)
    80005c40:	0087b783          	ld	a5,8(a5)
    80005c44:	000780e7          	jalr	a5
    delete mutexHead;
    80005c48:	0284b503          	ld	a0,40(s1)
    80005c4c:	00050863          	beqz	a0,80005c5c <_ZN9BufferCPPD1Ev+0xec>
    80005c50:	00053783          	ld	a5,0(a0)
    80005c54:	0087b783          	ld	a5,8(a5)
    80005c58:	000780e7          	jalr	a5
}
    80005c5c:	01813083          	ld	ra,24(sp)
    80005c60:	01013403          	ld	s0,16(sp)
    80005c64:	00813483          	ld	s1,8(sp)
    80005c68:	02010113          	addi	sp,sp,32
    80005c6c:	00008067          	ret

0000000080005c70 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005c70:	fe010113          	addi	sp,sp,-32
    80005c74:	00113c23          	sd	ra,24(sp)
    80005c78:	00813823          	sd	s0,16(sp)
    80005c7c:	00913423          	sd	s1,8(sp)
    80005c80:	01213023          	sd	s2,0(sp)
    80005c84:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005c88:	00004517          	auipc	a0,0x4
    80005c8c:	b5050513          	addi	a0,a0,-1200 # 800097d8 <_ZZ12printIntegermE6digits+0x240>
    80005c90:	00000097          	auipc	ra,0x0
    80005c94:	918080e7          	jalr	-1768(ra) # 800055a8 <_Z11printStringPKc>
    int test = getc() - '0';
    80005c98:	ffffc097          	auipc	ra,0xffffc
    80005c9c:	920080e7          	jalr	-1760(ra) # 800015b8 <_Z4getcv>
    80005ca0:	00050913          	mv	s2,a0
    80005ca4:	fd05049b          	addiw	s1,a0,-48
    getc();
    80005ca8:	ffffc097          	auipc	ra,0xffffc
    80005cac:	910080e7          	jalr	-1776(ra) # 800015b8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005cb0:	fcb9091b          	addiw	s2,s2,-53
    80005cb4:	00100793          	li	a5,1
    80005cb8:	0327f463          	bgeu	a5,s2,80005ce0 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005cbc:	00700793          	li	a5,7
    80005cc0:	0e97e263          	bltu	a5,s1,80005da4 <_Z8userMainv+0x134>
    80005cc4:	00249493          	slli	s1,s1,0x2
    80005cc8:	00004717          	auipc	a4,0x4
    80005ccc:	d2870713          	addi	a4,a4,-728 # 800099f0 <_ZZ12printIntegermE6digits+0x458>
    80005cd0:	00e484b3          	add	s1,s1,a4
    80005cd4:	0004a783          	lw	a5,0(s1)
    80005cd8:	00e787b3          	add	a5,a5,a4
    80005cdc:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005ce0:	00004517          	auipc	a0,0x4
    80005ce4:	b1850513          	addi	a0,a0,-1256 # 800097f8 <_ZZ12printIntegermE6digits+0x260>
    80005ce8:	00000097          	auipc	ra,0x0
    80005cec:	8c0080e7          	jalr	-1856(ra) # 800055a8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    80005cf0:	01813083          	ld	ra,24(sp)
    80005cf4:	01013403          	ld	s0,16(sp)
    80005cf8:	00813483          	ld	s1,8(sp)
    80005cfc:	00013903          	ld	s2,0(sp)
    80005d00:	02010113          	addi	sp,sp,32
    80005d04:	00008067          	ret
            Threads_C_API_test();
    80005d08:	fffff097          	auipc	ra,0xfffff
    80005d0c:	f18080e7          	jalr	-232(ra) # 80004c20 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005d10:	00004517          	auipc	a0,0x4
    80005d14:	b1850513          	addi	a0,a0,-1256 # 80009828 <_ZZ12printIntegermE6digits+0x290>
    80005d18:	00000097          	auipc	ra,0x0
    80005d1c:	890080e7          	jalr	-1904(ra) # 800055a8 <_Z11printStringPKc>
            break;
    80005d20:	fd1ff06f          	j	80005cf0 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005d24:	ffffe097          	auipc	ra,0xffffe
    80005d28:	d7c080e7          	jalr	-644(ra) # 80003aa0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005d2c:	00004517          	auipc	a0,0x4
    80005d30:	b3c50513          	addi	a0,a0,-1220 # 80009868 <_ZZ12printIntegermE6digits+0x2d0>
    80005d34:	00000097          	auipc	ra,0x0
    80005d38:	874080e7          	jalr	-1932(ra) # 800055a8 <_Z11printStringPKc>
            break;
    80005d3c:	fb5ff06f          	j	80005cf0 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005d40:	ffffd097          	auipc	ra,0xffffd
    80005d44:	5b4080e7          	jalr	1460(ra) # 800032f4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005d48:	00004517          	auipc	a0,0x4
    80005d4c:	b6050513          	addi	a0,a0,-1184 # 800098a8 <_ZZ12printIntegermE6digits+0x310>
    80005d50:	00000097          	auipc	ra,0x0
    80005d54:	858080e7          	jalr	-1960(ra) # 800055a8 <_Z11printStringPKc>
            break;
    80005d58:	f99ff06f          	j	80005cf0 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005d5c:	fffff097          	auipc	ra,0xfffff
    80005d60:	208080e7          	jalr	520(ra) # 80004f64 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005d64:	00004517          	auipc	a0,0x4
    80005d68:	b9450513          	addi	a0,a0,-1132 # 800098f8 <_ZZ12printIntegermE6digits+0x360>
    80005d6c:	00000097          	auipc	ra,0x0
    80005d70:	83c080e7          	jalr	-1988(ra) # 800055a8 <_Z11printStringPKc>
            break;
    80005d74:	f7dff06f          	j	80005cf0 <_Z8userMainv+0x80>
            System_Mode_test();
    80005d78:	00000097          	auipc	ra,0x0
    80005d7c:	658080e7          	jalr	1624(ra) # 800063d0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005d80:	00004517          	auipc	a0,0x4
    80005d84:	bd050513          	addi	a0,a0,-1072 # 80009950 <_ZZ12printIntegermE6digits+0x3b8>
    80005d88:	00000097          	auipc	ra,0x0
    80005d8c:	820080e7          	jalr	-2016(ra) # 800055a8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005d90:	00004517          	auipc	a0,0x4
    80005d94:	be050513          	addi	a0,a0,-1056 # 80009970 <_ZZ12printIntegermE6digits+0x3d8>
    80005d98:	00000097          	auipc	ra,0x0
    80005d9c:	810080e7          	jalr	-2032(ra) # 800055a8 <_Z11printStringPKc>
            break;
    80005da0:	f51ff06f          	j	80005cf0 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005da4:	00004517          	auipc	a0,0x4
    80005da8:	c2450513          	addi	a0,a0,-988 # 800099c8 <_ZZ12printIntegermE6digits+0x430>
    80005dac:	fffff097          	auipc	ra,0xfffff
    80005db0:	7fc080e7          	jalr	2044(ra) # 800055a8 <_Z11printStringPKc>
    80005db4:	f3dff06f          	j	80005cf0 <_Z8userMainv+0x80>

0000000080005db8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005db8:	fe010113          	addi	sp,sp,-32
    80005dbc:	00113c23          	sd	ra,24(sp)
    80005dc0:	00813823          	sd	s0,16(sp)
    80005dc4:	00913423          	sd	s1,8(sp)
    80005dc8:	01213023          	sd	s2,0(sp)
    80005dcc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005dd0:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005dd4:	00600493          	li	s1,6
    while (--i > 0) {
    80005dd8:	fff4849b          	addiw	s1,s1,-1
    80005ddc:	04905463          	blez	s1,80005e24 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005de0:	00004517          	auipc	a0,0x4
    80005de4:	c3050513          	addi	a0,a0,-976 # 80009a10 <_ZZ12printIntegermE6digits+0x478>
    80005de8:	fffff097          	auipc	ra,0xfffff
    80005dec:	7c0080e7          	jalr	1984(ra) # 800055a8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005df0:	00000613          	li	a2,0
    80005df4:	00a00593          	li	a1,10
    80005df8:	0009051b          	sext.w	a0,s2
    80005dfc:	00000097          	auipc	ra,0x0
    80005e00:	95c080e7          	jalr	-1700(ra) # 80005758 <_Z8printIntiii>
        printString(" !\n");
    80005e04:	00004517          	auipc	a0,0x4
    80005e08:	c1450513          	addi	a0,a0,-1004 # 80009a18 <_ZZ12printIntegermE6digits+0x480>
    80005e0c:	fffff097          	auipc	ra,0xfffff
    80005e10:	79c080e7          	jalr	1948(ra) # 800055a8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005e14:	00090513          	mv	a0,s2
    80005e18:	ffffb097          	auipc	ra,0xffffb
    80005e1c:	7ec080e7          	jalr	2028(ra) # 80001604 <_Z10time_sleepm>
    while (--i > 0) {
    80005e20:	fb9ff06f          	j	80005dd8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005e24:	00a00793          	li	a5,10
    80005e28:	02f95933          	divu	s2,s2,a5
    80005e2c:	fff90913          	addi	s2,s2,-1
    80005e30:	00006797          	auipc	a5,0x6
    80005e34:	e2078793          	addi	a5,a5,-480 # 8000bc50 <_ZL8finished>
    80005e38:	01278933          	add	s2,a5,s2
    80005e3c:	00100793          	li	a5,1
    80005e40:	00f90023          	sb	a5,0(s2)
}
    80005e44:	01813083          	ld	ra,24(sp)
    80005e48:	01013403          	ld	s0,16(sp)
    80005e4c:	00813483          	ld	s1,8(sp)
    80005e50:	00013903          	ld	s2,0(sp)
    80005e54:	02010113          	addi	sp,sp,32
    80005e58:	00008067          	ret

0000000080005e5c <_Z12testSleepingv>:

void testSleeping() {
    80005e5c:	fc010113          	addi	sp,sp,-64
    80005e60:	02113c23          	sd	ra,56(sp)
    80005e64:	02813823          	sd	s0,48(sp)
    80005e68:	02913423          	sd	s1,40(sp)
    80005e6c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005e70:	00a00793          	li	a5,10
    80005e74:	fcf43823          	sd	a5,-48(s0)
    80005e78:	01400793          	li	a5,20
    80005e7c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005e80:	00000493          	li	s1,0
    80005e84:	02c0006f          	j	80005eb0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005e88:	00349793          	slli	a5,s1,0x3
    80005e8c:	fd040613          	addi	a2,s0,-48
    80005e90:	00f60633          	add	a2,a2,a5
    80005e94:	00000597          	auipc	a1,0x0
    80005e98:	f2458593          	addi	a1,a1,-220 # 80005db8 <_ZL9sleepyRunPv>
    80005e9c:	fc040513          	addi	a0,s0,-64
    80005ea0:	00f50533          	add	a0,a0,a5
    80005ea4:	ffffb097          	auipc	ra,0xffffb
    80005ea8:	5b4080e7          	jalr	1460(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005eac:	0014849b          	addiw	s1,s1,1
    80005eb0:	00100793          	li	a5,1
    80005eb4:	fc97dae3          	bge	a5,s1,80005e88 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005eb8:	00006797          	auipc	a5,0x6
    80005ebc:	d987c783          	lbu	a5,-616(a5) # 8000bc50 <_ZL8finished>
    80005ec0:	fe078ce3          	beqz	a5,80005eb8 <_Z12testSleepingv+0x5c>
    80005ec4:	00006797          	auipc	a5,0x6
    80005ec8:	d8d7c783          	lbu	a5,-627(a5) # 8000bc51 <_ZL8finished+0x1>
    80005ecc:	fe0786e3          	beqz	a5,80005eb8 <_Z12testSleepingv+0x5c>
}
    80005ed0:	03813083          	ld	ra,56(sp)
    80005ed4:	03013403          	ld	s0,48(sp)
    80005ed8:	02813483          	ld	s1,40(sp)
    80005edc:	04010113          	addi	sp,sp,64
    80005ee0:	00008067          	ret

0000000080005ee4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005ee4:	fe010113          	addi	sp,sp,-32
    80005ee8:	00113c23          	sd	ra,24(sp)
    80005eec:	00813823          	sd	s0,16(sp)
    80005ef0:	00913423          	sd	s1,8(sp)
    80005ef4:	01213023          	sd	s2,0(sp)
    80005ef8:	02010413          	addi	s0,sp,32
    80005efc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005f00:	00100793          	li	a5,1
    80005f04:	02a7f863          	bgeu	a5,a0,80005f34 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005f08:	00a00793          	li	a5,10
    80005f0c:	02f577b3          	remu	a5,a0,a5
    80005f10:	02078e63          	beqz	a5,80005f4c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005f14:	fff48513          	addi	a0,s1,-1
    80005f18:	00000097          	auipc	ra,0x0
    80005f1c:	fcc080e7          	jalr	-52(ra) # 80005ee4 <_ZL9fibonaccim>
    80005f20:	00050913          	mv	s2,a0
    80005f24:	ffe48513          	addi	a0,s1,-2
    80005f28:	00000097          	auipc	ra,0x0
    80005f2c:	fbc080e7          	jalr	-68(ra) # 80005ee4 <_ZL9fibonaccim>
    80005f30:	00a90533          	add	a0,s2,a0
}
    80005f34:	01813083          	ld	ra,24(sp)
    80005f38:	01013403          	ld	s0,16(sp)
    80005f3c:	00813483          	ld	s1,8(sp)
    80005f40:	00013903          	ld	s2,0(sp)
    80005f44:	02010113          	addi	sp,sp,32
    80005f48:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005f4c:	ffffb097          	auipc	ra,0xffffb
    80005f50:	570080e7          	jalr	1392(ra) # 800014bc <_Z15thread_dispatchv>
    80005f54:	fc1ff06f          	j	80005f14 <_ZL9fibonaccim+0x30>

0000000080005f58 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005f58:	fe010113          	addi	sp,sp,-32
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	00813823          	sd	s0,16(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	01213023          	sd	s2,0(sp)
    80005f6c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005f70:	00a00493          	li	s1,10
    80005f74:	0400006f          	j	80005fb4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005f78:	00003517          	auipc	a0,0x3
    80005f7c:	0e850513          	addi	a0,a0,232 # 80009060 <CONSOLE_STATUS+0x50>
    80005f80:	fffff097          	auipc	ra,0xfffff
    80005f84:	628080e7          	jalr	1576(ra) # 800055a8 <_Z11printStringPKc>
    80005f88:	00000613          	li	a2,0
    80005f8c:	00a00593          	li	a1,10
    80005f90:	00048513          	mv	a0,s1
    80005f94:	fffff097          	auipc	ra,0xfffff
    80005f98:	7c4080e7          	jalr	1988(ra) # 80005758 <_Z8printIntiii>
    80005f9c:	00003517          	auipc	a0,0x3
    80005fa0:	30c50513          	addi	a0,a0,780 # 800092a8 <CONSOLE_STATUS+0x298>
    80005fa4:	fffff097          	auipc	ra,0xfffff
    80005fa8:	604080e7          	jalr	1540(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005fac:	0014849b          	addiw	s1,s1,1
    80005fb0:	0ff4f493          	andi	s1,s1,255
    80005fb4:	00c00793          	li	a5,12
    80005fb8:	fc97f0e3          	bgeu	a5,s1,80005f78 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005fbc:	00003517          	auipc	a0,0x3
    80005fc0:	70450513          	addi	a0,a0,1796 # 800096c0 <_ZZ12printIntegermE6digits+0x128>
    80005fc4:	fffff097          	auipc	ra,0xfffff
    80005fc8:	5e4080e7          	jalr	1508(ra) # 800055a8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005fcc:	00500313          	li	t1,5
    thread_dispatch();
    80005fd0:	ffffb097          	auipc	ra,0xffffb
    80005fd4:	4ec080e7          	jalr	1260(ra) # 800014bc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005fd8:	01000513          	li	a0,16
    80005fdc:	00000097          	auipc	ra,0x0
    80005fe0:	f08080e7          	jalr	-248(ra) # 80005ee4 <_ZL9fibonaccim>
    80005fe4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005fe8:	00003517          	auipc	a0,0x3
    80005fec:	09050513          	addi	a0,a0,144 # 80009078 <CONSOLE_STATUS+0x68>
    80005ff0:	fffff097          	auipc	ra,0xfffff
    80005ff4:	5b8080e7          	jalr	1464(ra) # 800055a8 <_Z11printStringPKc>
    80005ff8:	00000613          	li	a2,0
    80005ffc:	00a00593          	li	a1,10
    80006000:	0009051b          	sext.w	a0,s2
    80006004:	fffff097          	auipc	ra,0xfffff
    80006008:	754080e7          	jalr	1876(ra) # 80005758 <_Z8printIntiii>
    8000600c:	00003517          	auipc	a0,0x3
    80006010:	29c50513          	addi	a0,a0,668 # 800092a8 <CONSOLE_STATUS+0x298>
    80006014:	fffff097          	auipc	ra,0xfffff
    80006018:	594080e7          	jalr	1428(ra) # 800055a8 <_Z11printStringPKc>
    8000601c:	0400006f          	j	8000605c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006020:	00003517          	auipc	a0,0x3
    80006024:	04050513          	addi	a0,a0,64 # 80009060 <CONSOLE_STATUS+0x50>
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	580080e7          	jalr	1408(ra) # 800055a8 <_Z11printStringPKc>
    80006030:	00000613          	li	a2,0
    80006034:	00a00593          	li	a1,10
    80006038:	00048513          	mv	a0,s1
    8000603c:	fffff097          	auipc	ra,0xfffff
    80006040:	71c080e7          	jalr	1820(ra) # 80005758 <_Z8printIntiii>
    80006044:	00003517          	auipc	a0,0x3
    80006048:	26450513          	addi	a0,a0,612 # 800092a8 <CONSOLE_STATUS+0x298>
    8000604c:	fffff097          	auipc	ra,0xfffff
    80006050:	55c080e7          	jalr	1372(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006054:	0014849b          	addiw	s1,s1,1
    80006058:	0ff4f493          	andi	s1,s1,255
    8000605c:	00f00793          	li	a5,15
    80006060:	fc97f0e3          	bgeu	a5,s1,80006020 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006064:	00003517          	auipc	a0,0x3
    80006068:	66c50513          	addi	a0,a0,1644 # 800096d0 <_ZZ12printIntegermE6digits+0x138>
    8000606c:	fffff097          	auipc	ra,0xfffff
    80006070:	53c080e7          	jalr	1340(ra) # 800055a8 <_Z11printStringPKc>
    finishedD = true;
    80006074:	00100793          	li	a5,1
    80006078:	00006717          	auipc	a4,0x6
    8000607c:	bcf70d23          	sb	a5,-1062(a4) # 8000bc52 <_ZL9finishedD>
    thread_dispatch();
    80006080:	ffffb097          	auipc	ra,0xffffb
    80006084:	43c080e7          	jalr	1084(ra) # 800014bc <_Z15thread_dispatchv>
}
    80006088:	01813083          	ld	ra,24(sp)
    8000608c:	01013403          	ld	s0,16(sp)
    80006090:	00813483          	ld	s1,8(sp)
    80006094:	00013903          	ld	s2,0(sp)
    80006098:	02010113          	addi	sp,sp,32
    8000609c:	00008067          	ret

00000000800060a0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800060a0:	fe010113          	addi	sp,sp,-32
    800060a4:	00113c23          	sd	ra,24(sp)
    800060a8:	00813823          	sd	s0,16(sp)
    800060ac:	00913423          	sd	s1,8(sp)
    800060b0:	01213023          	sd	s2,0(sp)
    800060b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800060b8:	00000493          	li	s1,0
    800060bc:	0400006f          	j	800060fc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800060c0:	00003517          	auipc	a0,0x3
    800060c4:	f7050513          	addi	a0,a0,-144 # 80009030 <CONSOLE_STATUS+0x20>
    800060c8:	fffff097          	auipc	ra,0xfffff
    800060cc:	4e0080e7          	jalr	1248(ra) # 800055a8 <_Z11printStringPKc>
    800060d0:	00000613          	li	a2,0
    800060d4:	00a00593          	li	a1,10
    800060d8:	00048513          	mv	a0,s1
    800060dc:	fffff097          	auipc	ra,0xfffff
    800060e0:	67c080e7          	jalr	1660(ra) # 80005758 <_Z8printIntiii>
    800060e4:	00003517          	auipc	a0,0x3
    800060e8:	1c450513          	addi	a0,a0,452 # 800092a8 <CONSOLE_STATUS+0x298>
    800060ec:	fffff097          	auipc	ra,0xfffff
    800060f0:	4bc080e7          	jalr	1212(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800060f4:	0014849b          	addiw	s1,s1,1
    800060f8:	0ff4f493          	andi	s1,s1,255
    800060fc:	00200793          	li	a5,2
    80006100:	fc97f0e3          	bgeu	a5,s1,800060c0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006104:	00003517          	auipc	a0,0x3
    80006108:	5ac50513          	addi	a0,a0,1452 # 800096b0 <_ZZ12printIntegermE6digits+0x118>
    8000610c:	fffff097          	auipc	ra,0xfffff
    80006110:	49c080e7          	jalr	1180(ra) # 800055a8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006114:	00700313          	li	t1,7
    thread_dispatch();
    80006118:	ffffb097          	auipc	ra,0xffffb
    8000611c:	3a4080e7          	jalr	932(ra) # 800014bc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006120:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006124:	00003517          	auipc	a0,0x3
    80006128:	f2450513          	addi	a0,a0,-220 # 80009048 <CONSOLE_STATUS+0x38>
    8000612c:	fffff097          	auipc	ra,0xfffff
    80006130:	47c080e7          	jalr	1148(ra) # 800055a8 <_Z11printStringPKc>
    80006134:	00000613          	li	a2,0
    80006138:	00a00593          	li	a1,10
    8000613c:	0009051b          	sext.w	a0,s2
    80006140:	fffff097          	auipc	ra,0xfffff
    80006144:	618080e7          	jalr	1560(ra) # 80005758 <_Z8printIntiii>
    80006148:	00003517          	auipc	a0,0x3
    8000614c:	16050513          	addi	a0,a0,352 # 800092a8 <CONSOLE_STATUS+0x298>
    80006150:	fffff097          	auipc	ra,0xfffff
    80006154:	458080e7          	jalr	1112(ra) # 800055a8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006158:	00c00513          	li	a0,12
    8000615c:	00000097          	auipc	ra,0x0
    80006160:	d88080e7          	jalr	-632(ra) # 80005ee4 <_ZL9fibonaccim>
    80006164:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006168:	00003517          	auipc	a0,0x3
    8000616c:	ee850513          	addi	a0,a0,-280 # 80009050 <CONSOLE_STATUS+0x40>
    80006170:	fffff097          	auipc	ra,0xfffff
    80006174:	438080e7          	jalr	1080(ra) # 800055a8 <_Z11printStringPKc>
    80006178:	00000613          	li	a2,0
    8000617c:	00a00593          	li	a1,10
    80006180:	0009051b          	sext.w	a0,s2
    80006184:	fffff097          	auipc	ra,0xfffff
    80006188:	5d4080e7          	jalr	1492(ra) # 80005758 <_Z8printIntiii>
    8000618c:	00003517          	auipc	a0,0x3
    80006190:	11c50513          	addi	a0,a0,284 # 800092a8 <CONSOLE_STATUS+0x298>
    80006194:	fffff097          	auipc	ra,0xfffff
    80006198:	414080e7          	jalr	1044(ra) # 800055a8 <_Z11printStringPKc>
    8000619c:	0400006f          	j	800061dc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800061a0:	00003517          	auipc	a0,0x3
    800061a4:	e9050513          	addi	a0,a0,-368 # 80009030 <CONSOLE_STATUS+0x20>
    800061a8:	fffff097          	auipc	ra,0xfffff
    800061ac:	400080e7          	jalr	1024(ra) # 800055a8 <_Z11printStringPKc>
    800061b0:	00000613          	li	a2,0
    800061b4:	00a00593          	li	a1,10
    800061b8:	00048513          	mv	a0,s1
    800061bc:	fffff097          	auipc	ra,0xfffff
    800061c0:	59c080e7          	jalr	1436(ra) # 80005758 <_Z8printIntiii>
    800061c4:	00003517          	auipc	a0,0x3
    800061c8:	0e450513          	addi	a0,a0,228 # 800092a8 <CONSOLE_STATUS+0x298>
    800061cc:	fffff097          	auipc	ra,0xfffff
    800061d0:	3dc080e7          	jalr	988(ra) # 800055a8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800061d4:	0014849b          	addiw	s1,s1,1
    800061d8:	0ff4f493          	andi	s1,s1,255
    800061dc:	00500793          	li	a5,5
    800061e0:	fc97f0e3          	bgeu	a5,s1,800061a0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	4ac50513          	addi	a0,a0,1196 # 80009690 <_ZZ12printIntegermE6digits+0xf8>
    800061ec:	fffff097          	auipc	ra,0xfffff
    800061f0:	3bc080e7          	jalr	956(ra) # 800055a8 <_Z11printStringPKc>
    finishedC = true;
    800061f4:	00100793          	li	a5,1
    800061f8:	00006717          	auipc	a4,0x6
    800061fc:	a4f70da3          	sb	a5,-1445(a4) # 8000bc53 <_ZL9finishedC>
    thread_dispatch();
    80006200:	ffffb097          	auipc	ra,0xffffb
    80006204:	2bc080e7          	jalr	700(ra) # 800014bc <_Z15thread_dispatchv>
}
    80006208:	01813083          	ld	ra,24(sp)
    8000620c:	01013403          	ld	s0,16(sp)
    80006210:	00813483          	ld	s1,8(sp)
    80006214:	00013903          	ld	s2,0(sp)
    80006218:	02010113          	addi	sp,sp,32
    8000621c:	00008067          	ret

0000000080006220 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006220:	fe010113          	addi	sp,sp,-32
    80006224:	00113c23          	sd	ra,24(sp)
    80006228:	00813823          	sd	s0,16(sp)
    8000622c:	00913423          	sd	s1,8(sp)
    80006230:	01213023          	sd	s2,0(sp)
    80006234:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006238:	00000913          	li	s2,0
    8000623c:	0400006f          	j	8000627c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006240:	ffffb097          	auipc	ra,0xffffb
    80006244:	27c080e7          	jalr	636(ra) # 800014bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006248:	00148493          	addi	s1,s1,1
    8000624c:	000027b7          	lui	a5,0x2
    80006250:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006254:	0097ee63          	bltu	a5,s1,80006270 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006258:	00000713          	li	a4,0
    8000625c:	000077b7          	lui	a5,0x7
    80006260:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006264:	fce7eee3          	bltu	a5,a4,80006240 <_ZL11workerBodyBPv+0x20>
    80006268:	00170713          	addi	a4,a4,1
    8000626c:	ff1ff06f          	j	8000625c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006270:	00a00793          	li	a5,10
    80006274:	04f90663          	beq	s2,a5,800062c0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006278:	00190913          	addi	s2,s2,1
    8000627c:	00f00793          	li	a5,15
    80006280:	0527e463          	bltu	a5,s2,800062c8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006284:	00003517          	auipc	a0,0x3
    80006288:	da450513          	addi	a0,a0,-604 # 80009028 <CONSOLE_STATUS+0x18>
    8000628c:	fffff097          	auipc	ra,0xfffff
    80006290:	31c080e7          	jalr	796(ra) # 800055a8 <_Z11printStringPKc>
    80006294:	00000613          	li	a2,0
    80006298:	00a00593          	li	a1,10
    8000629c:	0009051b          	sext.w	a0,s2
    800062a0:	fffff097          	auipc	ra,0xfffff
    800062a4:	4b8080e7          	jalr	1208(ra) # 80005758 <_Z8printIntiii>
    800062a8:	00003517          	auipc	a0,0x3
    800062ac:	00050513          	mv	a0,a0
    800062b0:	fffff097          	auipc	ra,0xfffff
    800062b4:	2f8080e7          	jalr	760(ra) # 800055a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800062b8:	00000493          	li	s1,0
    800062bc:	f91ff06f          	j	8000624c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800062c0:	14102ff3          	csrr	t6,sepc
    800062c4:	fb5ff06f          	j	80006278 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800062c8:	00003517          	auipc	a0,0x3
    800062cc:	3d850513          	addi	a0,a0,984 # 800096a0 <_ZZ12printIntegermE6digits+0x108>
    800062d0:	fffff097          	auipc	ra,0xfffff
    800062d4:	2d8080e7          	jalr	728(ra) # 800055a8 <_Z11printStringPKc>
    finishedB = true;
    800062d8:	00100793          	li	a5,1
    800062dc:	00006717          	auipc	a4,0x6
    800062e0:	96f70c23          	sb	a5,-1672(a4) # 8000bc54 <_ZL9finishedB>
    thread_dispatch();
    800062e4:	ffffb097          	auipc	ra,0xffffb
    800062e8:	1d8080e7          	jalr	472(ra) # 800014bc <_Z15thread_dispatchv>
}
    800062ec:	01813083          	ld	ra,24(sp)
    800062f0:	01013403          	ld	s0,16(sp)
    800062f4:	00813483          	ld	s1,8(sp)
    800062f8:	00013903          	ld	s2,0(sp)
    800062fc:	02010113          	addi	sp,sp,32
    80006300:	00008067          	ret

0000000080006304 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006304:	fe010113          	addi	sp,sp,-32
    80006308:	00113c23          	sd	ra,24(sp)
    8000630c:	00813823          	sd	s0,16(sp)
    80006310:	00913423          	sd	s1,8(sp)
    80006314:	01213023          	sd	s2,0(sp)
    80006318:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000631c:	00000913          	li	s2,0
    80006320:	0380006f          	j	80006358 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006324:	ffffb097          	auipc	ra,0xffffb
    80006328:	198080e7          	jalr	408(ra) # 800014bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000632c:	00148493          	addi	s1,s1,1
    80006330:	000027b7          	lui	a5,0x2
    80006334:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006338:	0097ee63          	bltu	a5,s1,80006354 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000633c:	00000713          	li	a4,0
    80006340:	000077b7          	lui	a5,0x7
    80006344:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006348:	fce7eee3          	bltu	a5,a4,80006324 <_ZL11workerBodyAPv+0x20>
    8000634c:	00170713          	addi	a4,a4,1
    80006350:	ff1ff06f          	j	80006340 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006354:	00190913          	addi	s2,s2,1
    80006358:	00900793          	li	a5,9
    8000635c:	0527e063          	bltu	a5,s2,8000639c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006360:	00003517          	auipc	a0,0x3
    80006364:	cc050513          	addi	a0,a0,-832 # 80009020 <CONSOLE_STATUS+0x10>
    80006368:	fffff097          	auipc	ra,0xfffff
    8000636c:	240080e7          	jalr	576(ra) # 800055a8 <_Z11printStringPKc>
    80006370:	00000613          	li	a2,0
    80006374:	00a00593          	li	a1,10
    80006378:	0009051b          	sext.w	a0,s2
    8000637c:	fffff097          	auipc	ra,0xfffff
    80006380:	3dc080e7          	jalr	988(ra) # 80005758 <_Z8printIntiii>
    80006384:	00003517          	auipc	a0,0x3
    80006388:	f2450513          	addi	a0,a0,-220 # 800092a8 <CONSOLE_STATUS+0x298>
    8000638c:	fffff097          	auipc	ra,0xfffff
    80006390:	21c080e7          	jalr	540(ra) # 800055a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006394:	00000493          	li	s1,0
    80006398:	f99ff06f          	j	80006330 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000639c:	00003517          	auipc	a0,0x3
    800063a0:	2f450513          	addi	a0,a0,756 # 80009690 <_ZZ12printIntegermE6digits+0xf8>
    800063a4:	fffff097          	auipc	ra,0xfffff
    800063a8:	204080e7          	jalr	516(ra) # 800055a8 <_Z11printStringPKc>
    finishedA = true;
    800063ac:	00100793          	li	a5,1
    800063b0:	00006717          	auipc	a4,0x6
    800063b4:	8af702a3          	sb	a5,-1883(a4) # 8000bc55 <_ZL9finishedA>
}
    800063b8:	01813083          	ld	ra,24(sp)
    800063bc:	01013403          	ld	s0,16(sp)
    800063c0:	00813483          	ld	s1,8(sp)
    800063c4:	00013903          	ld	s2,0(sp)
    800063c8:	02010113          	addi	sp,sp,32
    800063cc:	00008067          	ret

00000000800063d0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800063d0:	fd010113          	addi	sp,sp,-48
    800063d4:	02113423          	sd	ra,40(sp)
    800063d8:	02813023          	sd	s0,32(sp)
    800063dc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800063e0:	00000613          	li	a2,0
    800063e4:	00000597          	auipc	a1,0x0
    800063e8:	f2058593          	addi	a1,a1,-224 # 80006304 <_ZL11workerBodyAPv>
    800063ec:	fd040513          	addi	a0,s0,-48
    800063f0:	ffffb097          	auipc	ra,0xffffb
    800063f4:	068080e7          	jalr	104(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800063f8:	00003517          	auipc	a0,0x3
    800063fc:	2e850513          	addi	a0,a0,744 # 800096e0 <_ZZ12printIntegermE6digits+0x148>
    80006400:	fffff097          	auipc	ra,0xfffff
    80006404:	1a8080e7          	jalr	424(ra) # 800055a8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006408:	00000613          	li	a2,0
    8000640c:	00000597          	auipc	a1,0x0
    80006410:	e1458593          	addi	a1,a1,-492 # 80006220 <_ZL11workerBodyBPv>
    80006414:	fd840513          	addi	a0,s0,-40
    80006418:	ffffb097          	auipc	ra,0xffffb
    8000641c:	040080e7          	jalr	64(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006420:	00003517          	auipc	a0,0x3
    80006424:	2d850513          	addi	a0,a0,728 # 800096f8 <_ZZ12printIntegermE6digits+0x160>
    80006428:	fffff097          	auipc	ra,0xfffff
    8000642c:	180080e7          	jalr	384(ra) # 800055a8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006430:	00000613          	li	a2,0
    80006434:	00000597          	auipc	a1,0x0
    80006438:	c6c58593          	addi	a1,a1,-916 # 800060a0 <_ZL11workerBodyCPv>
    8000643c:	fe040513          	addi	a0,s0,-32
    80006440:	ffffb097          	auipc	ra,0xffffb
    80006444:	018080e7          	jalr	24(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006448:	00003517          	auipc	a0,0x3
    8000644c:	2c850513          	addi	a0,a0,712 # 80009710 <_ZZ12printIntegermE6digits+0x178>
    80006450:	fffff097          	auipc	ra,0xfffff
    80006454:	158080e7          	jalr	344(ra) # 800055a8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006458:	00000613          	li	a2,0
    8000645c:	00000597          	auipc	a1,0x0
    80006460:	afc58593          	addi	a1,a1,-1284 # 80005f58 <_ZL11workerBodyDPv>
    80006464:	fe840513          	addi	a0,s0,-24
    80006468:	ffffb097          	auipc	ra,0xffffb
    8000646c:	ff0080e7          	jalr	-16(ra) # 80001458 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006470:	00003517          	auipc	a0,0x3
    80006474:	2b850513          	addi	a0,a0,696 # 80009728 <_ZZ12printIntegermE6digits+0x190>
    80006478:	fffff097          	auipc	ra,0xfffff
    8000647c:	130080e7          	jalr	304(ra) # 800055a8 <_Z11printStringPKc>
    80006480:	00c0006f          	j	8000648c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006484:	ffffb097          	auipc	ra,0xffffb
    80006488:	038080e7          	jalr	56(ra) # 800014bc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000648c:	00005797          	auipc	a5,0x5
    80006490:	7c97c783          	lbu	a5,1993(a5) # 8000bc55 <_ZL9finishedA>
    80006494:	fe0788e3          	beqz	a5,80006484 <_Z16System_Mode_testv+0xb4>
    80006498:	00005797          	auipc	a5,0x5
    8000649c:	7bc7c783          	lbu	a5,1980(a5) # 8000bc54 <_ZL9finishedB>
    800064a0:	fe0782e3          	beqz	a5,80006484 <_Z16System_Mode_testv+0xb4>
    800064a4:	00005797          	auipc	a5,0x5
    800064a8:	7af7c783          	lbu	a5,1967(a5) # 8000bc53 <_ZL9finishedC>
    800064ac:	fc078ce3          	beqz	a5,80006484 <_Z16System_Mode_testv+0xb4>
    800064b0:	00005797          	auipc	a5,0x5
    800064b4:	7a27c783          	lbu	a5,1954(a5) # 8000bc52 <_ZL9finishedD>
    800064b8:	fc0786e3          	beqz	a5,80006484 <_Z16System_Mode_testv+0xb4>
    }

}
    800064bc:	02813083          	ld	ra,40(sp)
    800064c0:	02013403          	ld	s0,32(sp)
    800064c4:	03010113          	addi	sp,sp,48
    800064c8:	00008067          	ret

00000000800064cc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800064cc:	fe010113          	addi	sp,sp,-32
    800064d0:	00113c23          	sd	ra,24(sp)
    800064d4:	00813823          	sd	s0,16(sp)
    800064d8:	00913423          	sd	s1,8(sp)
    800064dc:	01213023          	sd	s2,0(sp)
    800064e0:	02010413          	addi	s0,sp,32
    800064e4:	00050493          	mv	s1,a0
    800064e8:	00058913          	mv	s2,a1
    800064ec:	0015879b          	addiw	a5,a1,1
    800064f0:	0007851b          	sext.w	a0,a5
    800064f4:	00f4a023          	sw	a5,0(s1)
    800064f8:	0004a823          	sw	zero,16(s1)
    800064fc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006500:	00251513          	slli	a0,a0,0x2
    80006504:	ffffb097          	auipc	ra,0xffffb
    80006508:	e68080e7          	jalr	-408(ra) # 8000136c <_Z9mem_allocm>
    8000650c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006510:	00000593          	li	a1,0
    80006514:	02048513          	addi	a0,s1,32
    80006518:	ffffb097          	auipc	ra,0xffffb
    8000651c:	fe8080e7          	jalr	-24(ra) # 80001500 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006520:	00090593          	mv	a1,s2
    80006524:	01848513          	addi	a0,s1,24
    80006528:	ffffb097          	auipc	ra,0xffffb
    8000652c:	fd8080e7          	jalr	-40(ra) # 80001500 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006530:	00100593          	li	a1,1
    80006534:	02848513          	addi	a0,s1,40
    80006538:	ffffb097          	auipc	ra,0xffffb
    8000653c:	fc8080e7          	jalr	-56(ra) # 80001500 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006540:	00100593          	li	a1,1
    80006544:	03048513          	addi	a0,s1,48
    80006548:	ffffb097          	auipc	ra,0xffffb
    8000654c:	fb8080e7          	jalr	-72(ra) # 80001500 <_Z8sem_openPP4_semj>
}
    80006550:	01813083          	ld	ra,24(sp)
    80006554:	01013403          	ld	s0,16(sp)
    80006558:	00813483          	ld	s1,8(sp)
    8000655c:	00013903          	ld	s2,0(sp)
    80006560:	02010113          	addi	sp,sp,32
    80006564:	00008067          	ret

0000000080006568 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006568:	fe010113          	addi	sp,sp,-32
    8000656c:	00113c23          	sd	ra,24(sp)
    80006570:	00813823          	sd	s0,16(sp)
    80006574:	00913423          	sd	s1,8(sp)
    80006578:	01213023          	sd	s2,0(sp)
    8000657c:	02010413          	addi	s0,sp,32
    80006580:	00050493          	mv	s1,a0
    80006584:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006588:	01853503          	ld	a0,24(a0)
    8000658c:	ffffb097          	auipc	ra,0xffffb
    80006590:	fd4080e7          	jalr	-44(ra) # 80001560 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006594:	0304b503          	ld	a0,48(s1)
    80006598:	ffffb097          	auipc	ra,0xffffb
    8000659c:	fc8080e7          	jalr	-56(ra) # 80001560 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800065a0:	0084b783          	ld	a5,8(s1)
    800065a4:	0144a703          	lw	a4,20(s1)
    800065a8:	00271713          	slli	a4,a4,0x2
    800065ac:	00e787b3          	add	a5,a5,a4
    800065b0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800065b4:	0144a783          	lw	a5,20(s1)
    800065b8:	0017879b          	addiw	a5,a5,1
    800065bc:	0004a703          	lw	a4,0(s1)
    800065c0:	02e7e7bb          	remw	a5,a5,a4
    800065c4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800065c8:	0304b503          	ld	a0,48(s1)
    800065cc:	ffffb097          	auipc	ra,0xffffb
    800065d0:	fc0080e7          	jalr	-64(ra) # 8000158c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800065d4:	0204b503          	ld	a0,32(s1)
    800065d8:	ffffb097          	auipc	ra,0xffffb
    800065dc:	fb4080e7          	jalr	-76(ra) # 8000158c <_Z10sem_signalP4_sem>

}
    800065e0:	01813083          	ld	ra,24(sp)
    800065e4:	01013403          	ld	s0,16(sp)
    800065e8:	00813483          	ld	s1,8(sp)
    800065ec:	00013903          	ld	s2,0(sp)
    800065f0:	02010113          	addi	sp,sp,32
    800065f4:	00008067          	ret

00000000800065f8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800065f8:	fe010113          	addi	sp,sp,-32
    800065fc:	00113c23          	sd	ra,24(sp)
    80006600:	00813823          	sd	s0,16(sp)
    80006604:	00913423          	sd	s1,8(sp)
    80006608:	01213023          	sd	s2,0(sp)
    8000660c:	02010413          	addi	s0,sp,32
    80006610:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006614:	02053503          	ld	a0,32(a0)
    80006618:	ffffb097          	auipc	ra,0xffffb
    8000661c:	f48080e7          	jalr	-184(ra) # 80001560 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006620:	0284b503          	ld	a0,40(s1)
    80006624:	ffffb097          	auipc	ra,0xffffb
    80006628:	f3c080e7          	jalr	-196(ra) # 80001560 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000662c:	0084b703          	ld	a4,8(s1)
    80006630:	0104a783          	lw	a5,16(s1)
    80006634:	00279693          	slli	a3,a5,0x2
    80006638:	00d70733          	add	a4,a4,a3
    8000663c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006640:	0017879b          	addiw	a5,a5,1
    80006644:	0004a703          	lw	a4,0(s1)
    80006648:	02e7e7bb          	remw	a5,a5,a4
    8000664c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006650:	0284b503          	ld	a0,40(s1)
    80006654:	ffffb097          	auipc	ra,0xffffb
    80006658:	f38080e7          	jalr	-200(ra) # 8000158c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000665c:	0184b503          	ld	a0,24(s1)
    80006660:	ffffb097          	auipc	ra,0xffffb
    80006664:	f2c080e7          	jalr	-212(ra) # 8000158c <_Z10sem_signalP4_sem>

    return ret;
}
    80006668:	00090513          	mv	a0,s2
    8000666c:	01813083          	ld	ra,24(sp)
    80006670:	01013403          	ld	s0,16(sp)
    80006674:	00813483          	ld	s1,8(sp)
    80006678:	00013903          	ld	s2,0(sp)
    8000667c:	02010113          	addi	sp,sp,32
    80006680:	00008067          	ret

0000000080006684 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006684:	fe010113          	addi	sp,sp,-32
    80006688:	00113c23          	sd	ra,24(sp)
    8000668c:	00813823          	sd	s0,16(sp)
    80006690:	00913423          	sd	s1,8(sp)
    80006694:	01213023          	sd	s2,0(sp)
    80006698:	02010413          	addi	s0,sp,32
    8000669c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800066a0:	02853503          	ld	a0,40(a0)
    800066a4:	ffffb097          	auipc	ra,0xffffb
    800066a8:	ebc080e7          	jalr	-324(ra) # 80001560 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800066ac:	0304b503          	ld	a0,48(s1)
    800066b0:	ffffb097          	auipc	ra,0xffffb
    800066b4:	eb0080e7          	jalr	-336(ra) # 80001560 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800066b8:	0144a783          	lw	a5,20(s1)
    800066bc:	0104a903          	lw	s2,16(s1)
    800066c0:	0327ce63          	blt	a5,s2,800066fc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800066c4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800066c8:	0304b503          	ld	a0,48(s1)
    800066cc:	ffffb097          	auipc	ra,0xffffb
    800066d0:	ec0080e7          	jalr	-320(ra) # 8000158c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800066d4:	0284b503          	ld	a0,40(s1)
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	eb4080e7          	jalr	-332(ra) # 8000158c <_Z10sem_signalP4_sem>

    return ret;
}
    800066e0:	00090513          	mv	a0,s2
    800066e4:	01813083          	ld	ra,24(sp)
    800066e8:	01013403          	ld	s0,16(sp)
    800066ec:	00813483          	ld	s1,8(sp)
    800066f0:	00013903          	ld	s2,0(sp)
    800066f4:	02010113          	addi	sp,sp,32
    800066f8:	00008067          	ret
        ret = cap - head + tail;
    800066fc:	0004a703          	lw	a4,0(s1)
    80006700:	4127093b          	subw	s2,a4,s2
    80006704:	00f9093b          	addw	s2,s2,a5
    80006708:	fc1ff06f          	j	800066c8 <_ZN6Buffer6getCntEv+0x44>

000000008000670c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000670c:	fe010113          	addi	sp,sp,-32
    80006710:	00113c23          	sd	ra,24(sp)
    80006714:	00813823          	sd	s0,16(sp)
    80006718:	00913423          	sd	s1,8(sp)
    8000671c:	02010413          	addi	s0,sp,32
    80006720:	00050493          	mv	s1,a0
    putc('\n');
    80006724:	00a00513          	li	a0,10
    80006728:	ffffb097          	auipc	ra,0xffffb
    8000672c:	eb8080e7          	jalr	-328(ra) # 800015e0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006730:	00003517          	auipc	a0,0x3
    80006734:	09050513          	addi	a0,a0,144 # 800097c0 <_ZZ12printIntegermE6digits+0x228>
    80006738:	fffff097          	auipc	ra,0xfffff
    8000673c:	e70080e7          	jalr	-400(ra) # 800055a8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006740:	00048513          	mv	a0,s1
    80006744:	00000097          	auipc	ra,0x0
    80006748:	f40080e7          	jalr	-192(ra) # 80006684 <_ZN6Buffer6getCntEv>
    8000674c:	02a05c63          	blez	a0,80006784 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006750:	0084b783          	ld	a5,8(s1)
    80006754:	0104a703          	lw	a4,16(s1)
    80006758:	00271713          	slli	a4,a4,0x2
    8000675c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006760:	0007c503          	lbu	a0,0(a5)
    80006764:	ffffb097          	auipc	ra,0xffffb
    80006768:	e7c080e7          	jalr	-388(ra) # 800015e0 <_Z4putcc>
        head = (head + 1) % cap;
    8000676c:	0104a783          	lw	a5,16(s1)
    80006770:	0017879b          	addiw	a5,a5,1
    80006774:	0004a703          	lw	a4,0(s1)
    80006778:	02e7e7bb          	remw	a5,a5,a4
    8000677c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006780:	fc1ff06f          	j	80006740 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006784:	02100513          	li	a0,33
    80006788:	ffffb097          	auipc	ra,0xffffb
    8000678c:	e58080e7          	jalr	-424(ra) # 800015e0 <_Z4putcc>
    putc('\n');
    80006790:	00a00513          	li	a0,10
    80006794:	ffffb097          	auipc	ra,0xffffb
    80006798:	e4c080e7          	jalr	-436(ra) # 800015e0 <_Z4putcc>
    mem_free(buffer);
    8000679c:	0084b503          	ld	a0,8(s1)
    800067a0:	ffffb097          	auipc	ra,0xffffb
    800067a4:	c04080e7          	jalr	-1020(ra) # 800013a4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800067a8:	0204b503          	ld	a0,32(s1)
    800067ac:	ffffb097          	auipc	ra,0xffffb
    800067b0:	d88080e7          	jalr	-632(ra) # 80001534 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800067b4:	0184b503          	ld	a0,24(s1)
    800067b8:	ffffb097          	auipc	ra,0xffffb
    800067bc:	d7c080e7          	jalr	-644(ra) # 80001534 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800067c0:	0304b503          	ld	a0,48(s1)
    800067c4:	ffffb097          	auipc	ra,0xffffb
    800067c8:	d70080e7          	jalr	-656(ra) # 80001534 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800067cc:	0284b503          	ld	a0,40(s1)
    800067d0:	ffffb097          	auipc	ra,0xffffb
    800067d4:	d64080e7          	jalr	-668(ra) # 80001534 <_Z9sem_closeP4_sem>
}
    800067d8:	01813083          	ld	ra,24(sp)
    800067dc:	01013403          	ld	s0,16(sp)
    800067e0:	00813483          	ld	s1,8(sp)
    800067e4:	02010113          	addi	sp,sp,32
    800067e8:	00008067          	ret

00000000800067ec <start>:
    800067ec:	ff010113          	addi	sp,sp,-16
    800067f0:	00813423          	sd	s0,8(sp)
    800067f4:	01010413          	addi	s0,sp,16
    800067f8:	300027f3          	csrr	a5,mstatus
    800067fc:	ffffe737          	lui	a4,0xffffe
    80006800:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff193f>
    80006804:	00e7f7b3          	and	a5,a5,a4
    80006808:	00001737          	lui	a4,0x1
    8000680c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006810:	00e7e7b3          	or	a5,a5,a4
    80006814:	30079073          	csrw	mstatus,a5
    80006818:	00000797          	auipc	a5,0x0
    8000681c:	16078793          	addi	a5,a5,352 # 80006978 <system_main>
    80006820:	34179073          	csrw	mepc,a5
    80006824:	00000793          	li	a5,0
    80006828:	18079073          	csrw	satp,a5
    8000682c:	000107b7          	lui	a5,0x10
    80006830:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006834:	30279073          	csrw	medeleg,a5
    80006838:	30379073          	csrw	mideleg,a5
    8000683c:	104027f3          	csrr	a5,sie
    80006840:	2227e793          	ori	a5,a5,546
    80006844:	10479073          	csrw	sie,a5
    80006848:	fff00793          	li	a5,-1
    8000684c:	00a7d793          	srli	a5,a5,0xa
    80006850:	3b079073          	csrw	pmpaddr0,a5
    80006854:	00f00793          	li	a5,15
    80006858:	3a079073          	csrw	pmpcfg0,a5
    8000685c:	f14027f3          	csrr	a5,mhartid
    80006860:	0200c737          	lui	a4,0x200c
    80006864:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006868:	0007869b          	sext.w	a3,a5
    8000686c:	00269713          	slli	a4,a3,0x2
    80006870:	000f4637          	lui	a2,0xf4
    80006874:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006878:	00d70733          	add	a4,a4,a3
    8000687c:	0037979b          	slliw	a5,a5,0x3
    80006880:	020046b7          	lui	a3,0x2004
    80006884:	00d787b3          	add	a5,a5,a3
    80006888:	00c585b3          	add	a1,a1,a2
    8000688c:	00371693          	slli	a3,a4,0x3
    80006890:	00005717          	auipc	a4,0x5
    80006894:	3d070713          	addi	a4,a4,976 # 8000bc60 <timer_scratch>
    80006898:	00b7b023          	sd	a1,0(a5)
    8000689c:	00d70733          	add	a4,a4,a3
    800068a0:	00f73c23          	sd	a5,24(a4)
    800068a4:	02c73023          	sd	a2,32(a4)
    800068a8:	34071073          	csrw	mscratch,a4
    800068ac:	00000797          	auipc	a5,0x0
    800068b0:	6e478793          	addi	a5,a5,1764 # 80006f90 <timervec>
    800068b4:	30579073          	csrw	mtvec,a5
    800068b8:	300027f3          	csrr	a5,mstatus
    800068bc:	0087e793          	ori	a5,a5,8
    800068c0:	30079073          	csrw	mstatus,a5
    800068c4:	304027f3          	csrr	a5,mie
    800068c8:	0807e793          	ori	a5,a5,128
    800068cc:	30479073          	csrw	mie,a5
    800068d0:	f14027f3          	csrr	a5,mhartid
    800068d4:	0007879b          	sext.w	a5,a5
    800068d8:	00078213          	mv	tp,a5
    800068dc:	30200073          	mret
    800068e0:	00813403          	ld	s0,8(sp)
    800068e4:	01010113          	addi	sp,sp,16
    800068e8:	00008067          	ret

00000000800068ec <timerinit>:
    800068ec:	ff010113          	addi	sp,sp,-16
    800068f0:	00813423          	sd	s0,8(sp)
    800068f4:	01010413          	addi	s0,sp,16
    800068f8:	f14027f3          	csrr	a5,mhartid
    800068fc:	0200c737          	lui	a4,0x200c
    80006900:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006904:	0007869b          	sext.w	a3,a5
    80006908:	00269713          	slli	a4,a3,0x2
    8000690c:	000f4637          	lui	a2,0xf4
    80006910:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006914:	00d70733          	add	a4,a4,a3
    80006918:	0037979b          	slliw	a5,a5,0x3
    8000691c:	020046b7          	lui	a3,0x2004
    80006920:	00d787b3          	add	a5,a5,a3
    80006924:	00c585b3          	add	a1,a1,a2
    80006928:	00371693          	slli	a3,a4,0x3
    8000692c:	00005717          	auipc	a4,0x5
    80006930:	33470713          	addi	a4,a4,820 # 8000bc60 <timer_scratch>
    80006934:	00b7b023          	sd	a1,0(a5)
    80006938:	00d70733          	add	a4,a4,a3
    8000693c:	00f73c23          	sd	a5,24(a4)
    80006940:	02c73023          	sd	a2,32(a4)
    80006944:	34071073          	csrw	mscratch,a4
    80006948:	00000797          	auipc	a5,0x0
    8000694c:	64878793          	addi	a5,a5,1608 # 80006f90 <timervec>
    80006950:	30579073          	csrw	mtvec,a5
    80006954:	300027f3          	csrr	a5,mstatus
    80006958:	0087e793          	ori	a5,a5,8
    8000695c:	30079073          	csrw	mstatus,a5
    80006960:	304027f3          	csrr	a5,mie
    80006964:	0807e793          	ori	a5,a5,128
    80006968:	30479073          	csrw	mie,a5
    8000696c:	00813403          	ld	s0,8(sp)
    80006970:	01010113          	addi	sp,sp,16
    80006974:	00008067          	ret

0000000080006978 <system_main>:
    80006978:	fe010113          	addi	sp,sp,-32
    8000697c:	00813823          	sd	s0,16(sp)
    80006980:	00913423          	sd	s1,8(sp)
    80006984:	00113c23          	sd	ra,24(sp)
    80006988:	02010413          	addi	s0,sp,32
    8000698c:	00000097          	auipc	ra,0x0
    80006990:	0c4080e7          	jalr	196(ra) # 80006a50 <cpuid>
    80006994:	00005497          	auipc	s1,0x5
    80006998:	20c48493          	addi	s1,s1,524 # 8000bba0 <started>
    8000699c:	02050263          	beqz	a0,800069c0 <system_main+0x48>
    800069a0:	0004a783          	lw	a5,0(s1)
    800069a4:	0007879b          	sext.w	a5,a5
    800069a8:	fe078ce3          	beqz	a5,800069a0 <system_main+0x28>
    800069ac:	0ff0000f          	fence
    800069b0:	00003517          	auipc	a0,0x3
    800069b4:	0a050513          	addi	a0,a0,160 # 80009a50 <_ZZ12printIntegermE6digits+0x4b8>
    800069b8:	00001097          	auipc	ra,0x1
    800069bc:	a74080e7          	jalr	-1420(ra) # 8000742c <panic>
    800069c0:	00001097          	auipc	ra,0x1
    800069c4:	9c8080e7          	jalr	-1592(ra) # 80007388 <consoleinit>
    800069c8:	00001097          	auipc	ra,0x1
    800069cc:	154080e7          	jalr	340(ra) # 80007b1c <printfinit>
    800069d0:	00003517          	auipc	a0,0x3
    800069d4:	8d850513          	addi	a0,a0,-1832 # 800092a8 <CONSOLE_STATUS+0x298>
    800069d8:	00001097          	auipc	ra,0x1
    800069dc:	ab0080e7          	jalr	-1360(ra) # 80007488 <__printf>
    800069e0:	00003517          	auipc	a0,0x3
    800069e4:	04050513          	addi	a0,a0,64 # 80009a20 <_ZZ12printIntegermE6digits+0x488>
    800069e8:	00001097          	auipc	ra,0x1
    800069ec:	aa0080e7          	jalr	-1376(ra) # 80007488 <__printf>
    800069f0:	00003517          	auipc	a0,0x3
    800069f4:	8b850513          	addi	a0,a0,-1864 # 800092a8 <CONSOLE_STATUS+0x298>
    800069f8:	00001097          	auipc	ra,0x1
    800069fc:	a90080e7          	jalr	-1392(ra) # 80007488 <__printf>
    80006a00:	00001097          	auipc	ra,0x1
    80006a04:	4a8080e7          	jalr	1192(ra) # 80007ea8 <kinit>
    80006a08:	00000097          	auipc	ra,0x0
    80006a0c:	148080e7          	jalr	328(ra) # 80006b50 <trapinit>
    80006a10:	00000097          	auipc	ra,0x0
    80006a14:	16c080e7          	jalr	364(ra) # 80006b7c <trapinithart>
    80006a18:	00000097          	auipc	ra,0x0
    80006a1c:	5b8080e7          	jalr	1464(ra) # 80006fd0 <plicinit>
    80006a20:	00000097          	auipc	ra,0x0
    80006a24:	5d8080e7          	jalr	1496(ra) # 80006ff8 <plicinithart>
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	078080e7          	jalr	120(ra) # 80006aa0 <userinit>
    80006a30:	0ff0000f          	fence
    80006a34:	00100793          	li	a5,1
    80006a38:	00003517          	auipc	a0,0x3
    80006a3c:	00050513          	mv	a0,a0
    80006a40:	00f4a023          	sw	a5,0(s1)
    80006a44:	00001097          	auipc	ra,0x1
    80006a48:	a44080e7          	jalr	-1468(ra) # 80007488 <__printf>
    80006a4c:	0000006f          	j	80006a4c <system_main+0xd4>

0000000080006a50 <cpuid>:
    80006a50:	ff010113          	addi	sp,sp,-16
    80006a54:	00813423          	sd	s0,8(sp)
    80006a58:	01010413          	addi	s0,sp,16
    80006a5c:	00020513          	mv	a0,tp
    80006a60:	00813403          	ld	s0,8(sp)
    80006a64:	0005051b          	sext.w	a0,a0
    80006a68:	01010113          	addi	sp,sp,16
    80006a6c:	00008067          	ret

0000000080006a70 <mycpu>:
    80006a70:	ff010113          	addi	sp,sp,-16
    80006a74:	00813423          	sd	s0,8(sp)
    80006a78:	01010413          	addi	s0,sp,16
    80006a7c:	00020793          	mv	a5,tp
    80006a80:	00813403          	ld	s0,8(sp)
    80006a84:	0007879b          	sext.w	a5,a5
    80006a88:	00779793          	slli	a5,a5,0x7
    80006a8c:	00006517          	auipc	a0,0x6
    80006a90:	20450513          	addi	a0,a0,516 # 8000cc90 <cpus>
    80006a94:	00f50533          	add	a0,a0,a5
    80006a98:	01010113          	addi	sp,sp,16
    80006a9c:	00008067          	ret

0000000080006aa0 <userinit>:
    80006aa0:	ff010113          	addi	sp,sp,-16
    80006aa4:	00813423          	sd	s0,8(sp)
    80006aa8:	01010413          	addi	s0,sp,16
    80006aac:	00813403          	ld	s0,8(sp)
    80006ab0:	01010113          	addi	sp,sp,16
    80006ab4:	ffffb317          	auipc	t1,0xffffb
    80006ab8:	56430067          	jr	1380(t1) # 80002018 <main>

0000000080006abc <either_copyout>:
    80006abc:	ff010113          	addi	sp,sp,-16
    80006ac0:	00813023          	sd	s0,0(sp)
    80006ac4:	00113423          	sd	ra,8(sp)
    80006ac8:	01010413          	addi	s0,sp,16
    80006acc:	02051663          	bnez	a0,80006af8 <either_copyout+0x3c>
    80006ad0:	00058513          	mv	a0,a1
    80006ad4:	00060593          	mv	a1,a2
    80006ad8:	0006861b          	sext.w	a2,a3
    80006adc:	00002097          	auipc	ra,0x2
    80006ae0:	c58080e7          	jalr	-936(ra) # 80008734 <__memmove>
    80006ae4:	00813083          	ld	ra,8(sp)
    80006ae8:	00013403          	ld	s0,0(sp)
    80006aec:	00000513          	li	a0,0
    80006af0:	01010113          	addi	sp,sp,16
    80006af4:	00008067          	ret
    80006af8:	00003517          	auipc	a0,0x3
    80006afc:	f8050513          	addi	a0,a0,-128 # 80009a78 <_ZZ12printIntegermE6digits+0x4e0>
    80006b00:	00001097          	auipc	ra,0x1
    80006b04:	92c080e7          	jalr	-1748(ra) # 8000742c <panic>

0000000080006b08 <either_copyin>:
    80006b08:	ff010113          	addi	sp,sp,-16
    80006b0c:	00813023          	sd	s0,0(sp)
    80006b10:	00113423          	sd	ra,8(sp)
    80006b14:	01010413          	addi	s0,sp,16
    80006b18:	02059463          	bnez	a1,80006b40 <either_copyin+0x38>
    80006b1c:	00060593          	mv	a1,a2
    80006b20:	0006861b          	sext.w	a2,a3
    80006b24:	00002097          	auipc	ra,0x2
    80006b28:	c10080e7          	jalr	-1008(ra) # 80008734 <__memmove>
    80006b2c:	00813083          	ld	ra,8(sp)
    80006b30:	00013403          	ld	s0,0(sp)
    80006b34:	00000513          	li	a0,0
    80006b38:	01010113          	addi	sp,sp,16
    80006b3c:	00008067          	ret
    80006b40:	00003517          	auipc	a0,0x3
    80006b44:	f6050513          	addi	a0,a0,-160 # 80009aa0 <_ZZ12printIntegermE6digits+0x508>
    80006b48:	00001097          	auipc	ra,0x1
    80006b4c:	8e4080e7          	jalr	-1820(ra) # 8000742c <panic>

0000000080006b50 <trapinit>:
    80006b50:	ff010113          	addi	sp,sp,-16
    80006b54:	00813423          	sd	s0,8(sp)
    80006b58:	01010413          	addi	s0,sp,16
    80006b5c:	00813403          	ld	s0,8(sp)
    80006b60:	00003597          	auipc	a1,0x3
    80006b64:	f6858593          	addi	a1,a1,-152 # 80009ac8 <_ZZ12printIntegermE6digits+0x530>
    80006b68:	00006517          	auipc	a0,0x6
    80006b6c:	1a850513          	addi	a0,a0,424 # 8000cd10 <tickslock>
    80006b70:	01010113          	addi	sp,sp,16
    80006b74:	00001317          	auipc	t1,0x1
    80006b78:	5c430067          	jr	1476(t1) # 80008138 <initlock>

0000000080006b7c <trapinithart>:
    80006b7c:	ff010113          	addi	sp,sp,-16
    80006b80:	00813423          	sd	s0,8(sp)
    80006b84:	01010413          	addi	s0,sp,16
    80006b88:	00000797          	auipc	a5,0x0
    80006b8c:	2f878793          	addi	a5,a5,760 # 80006e80 <kernelvec>
    80006b90:	10579073          	csrw	stvec,a5
    80006b94:	00813403          	ld	s0,8(sp)
    80006b98:	01010113          	addi	sp,sp,16
    80006b9c:	00008067          	ret

0000000080006ba0 <usertrap>:
    80006ba0:	ff010113          	addi	sp,sp,-16
    80006ba4:	00813423          	sd	s0,8(sp)
    80006ba8:	01010413          	addi	s0,sp,16
    80006bac:	00813403          	ld	s0,8(sp)
    80006bb0:	01010113          	addi	sp,sp,16
    80006bb4:	00008067          	ret

0000000080006bb8 <usertrapret>:
    80006bb8:	ff010113          	addi	sp,sp,-16
    80006bbc:	00813423          	sd	s0,8(sp)
    80006bc0:	01010413          	addi	s0,sp,16
    80006bc4:	00813403          	ld	s0,8(sp)
    80006bc8:	01010113          	addi	sp,sp,16
    80006bcc:	00008067          	ret

0000000080006bd0 <kerneltrap>:
    80006bd0:	fe010113          	addi	sp,sp,-32
    80006bd4:	00813823          	sd	s0,16(sp)
    80006bd8:	00113c23          	sd	ra,24(sp)
    80006bdc:	00913423          	sd	s1,8(sp)
    80006be0:	02010413          	addi	s0,sp,32
    80006be4:	142025f3          	csrr	a1,scause
    80006be8:	100027f3          	csrr	a5,sstatus
    80006bec:	0027f793          	andi	a5,a5,2
    80006bf0:	10079c63          	bnez	a5,80006d08 <kerneltrap+0x138>
    80006bf4:	142027f3          	csrr	a5,scause
    80006bf8:	0207ce63          	bltz	a5,80006c34 <kerneltrap+0x64>
    80006bfc:	00003517          	auipc	a0,0x3
    80006c00:	f1450513          	addi	a0,a0,-236 # 80009b10 <_ZZ12printIntegermE6digits+0x578>
    80006c04:	00001097          	auipc	ra,0x1
    80006c08:	884080e7          	jalr	-1916(ra) # 80007488 <__printf>
    80006c0c:	141025f3          	csrr	a1,sepc
    80006c10:	14302673          	csrr	a2,stval
    80006c14:	00003517          	auipc	a0,0x3
    80006c18:	f0c50513          	addi	a0,a0,-244 # 80009b20 <_ZZ12printIntegermE6digits+0x588>
    80006c1c:	00001097          	auipc	ra,0x1
    80006c20:	86c080e7          	jalr	-1940(ra) # 80007488 <__printf>
    80006c24:	00003517          	auipc	a0,0x3
    80006c28:	f1450513          	addi	a0,a0,-236 # 80009b38 <_ZZ12printIntegermE6digits+0x5a0>
    80006c2c:	00001097          	auipc	ra,0x1
    80006c30:	800080e7          	jalr	-2048(ra) # 8000742c <panic>
    80006c34:	0ff7f713          	andi	a4,a5,255
    80006c38:	00900693          	li	a3,9
    80006c3c:	04d70063          	beq	a4,a3,80006c7c <kerneltrap+0xac>
    80006c40:	fff00713          	li	a4,-1
    80006c44:	03f71713          	slli	a4,a4,0x3f
    80006c48:	00170713          	addi	a4,a4,1
    80006c4c:	fae798e3          	bne	a5,a4,80006bfc <kerneltrap+0x2c>
    80006c50:	00000097          	auipc	ra,0x0
    80006c54:	e00080e7          	jalr	-512(ra) # 80006a50 <cpuid>
    80006c58:	06050663          	beqz	a0,80006cc4 <kerneltrap+0xf4>
    80006c5c:	144027f3          	csrr	a5,sip
    80006c60:	ffd7f793          	andi	a5,a5,-3
    80006c64:	14479073          	csrw	sip,a5
    80006c68:	01813083          	ld	ra,24(sp)
    80006c6c:	01013403          	ld	s0,16(sp)
    80006c70:	00813483          	ld	s1,8(sp)
    80006c74:	02010113          	addi	sp,sp,32
    80006c78:	00008067          	ret
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	3c8080e7          	jalr	968(ra) # 80007044 <plic_claim>
    80006c84:	00a00793          	li	a5,10
    80006c88:	00050493          	mv	s1,a0
    80006c8c:	06f50863          	beq	a0,a5,80006cfc <kerneltrap+0x12c>
    80006c90:	fc050ce3          	beqz	a0,80006c68 <kerneltrap+0x98>
    80006c94:	00050593          	mv	a1,a0
    80006c98:	00003517          	auipc	a0,0x3
    80006c9c:	e5850513          	addi	a0,a0,-424 # 80009af0 <_ZZ12printIntegermE6digits+0x558>
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	7e8080e7          	jalr	2024(ra) # 80007488 <__printf>
    80006ca8:	01013403          	ld	s0,16(sp)
    80006cac:	01813083          	ld	ra,24(sp)
    80006cb0:	00048513          	mv	a0,s1
    80006cb4:	00813483          	ld	s1,8(sp)
    80006cb8:	02010113          	addi	sp,sp,32
    80006cbc:	00000317          	auipc	t1,0x0
    80006cc0:	3c030067          	jr	960(t1) # 8000707c <plic_complete>
    80006cc4:	00006517          	auipc	a0,0x6
    80006cc8:	04c50513          	addi	a0,a0,76 # 8000cd10 <tickslock>
    80006ccc:	00001097          	auipc	ra,0x1
    80006cd0:	490080e7          	jalr	1168(ra) # 8000815c <acquire>
    80006cd4:	00005717          	auipc	a4,0x5
    80006cd8:	ed070713          	addi	a4,a4,-304 # 8000bba4 <ticks>
    80006cdc:	00072783          	lw	a5,0(a4)
    80006ce0:	00006517          	auipc	a0,0x6
    80006ce4:	03050513          	addi	a0,a0,48 # 8000cd10 <tickslock>
    80006ce8:	0017879b          	addiw	a5,a5,1
    80006cec:	00f72023          	sw	a5,0(a4)
    80006cf0:	00001097          	auipc	ra,0x1
    80006cf4:	538080e7          	jalr	1336(ra) # 80008228 <release>
    80006cf8:	f65ff06f          	j	80006c5c <kerneltrap+0x8c>
    80006cfc:	00001097          	auipc	ra,0x1
    80006d00:	094080e7          	jalr	148(ra) # 80007d90 <uartintr>
    80006d04:	fa5ff06f          	j	80006ca8 <kerneltrap+0xd8>
    80006d08:	00003517          	auipc	a0,0x3
    80006d0c:	dc850513          	addi	a0,a0,-568 # 80009ad0 <_ZZ12printIntegermE6digits+0x538>
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	71c080e7          	jalr	1820(ra) # 8000742c <panic>

0000000080006d18 <clockintr>:
    80006d18:	fe010113          	addi	sp,sp,-32
    80006d1c:	00813823          	sd	s0,16(sp)
    80006d20:	00913423          	sd	s1,8(sp)
    80006d24:	00113c23          	sd	ra,24(sp)
    80006d28:	02010413          	addi	s0,sp,32
    80006d2c:	00006497          	auipc	s1,0x6
    80006d30:	fe448493          	addi	s1,s1,-28 # 8000cd10 <tickslock>
    80006d34:	00048513          	mv	a0,s1
    80006d38:	00001097          	auipc	ra,0x1
    80006d3c:	424080e7          	jalr	1060(ra) # 8000815c <acquire>
    80006d40:	00005717          	auipc	a4,0x5
    80006d44:	e6470713          	addi	a4,a4,-412 # 8000bba4 <ticks>
    80006d48:	00072783          	lw	a5,0(a4)
    80006d4c:	01013403          	ld	s0,16(sp)
    80006d50:	01813083          	ld	ra,24(sp)
    80006d54:	00048513          	mv	a0,s1
    80006d58:	0017879b          	addiw	a5,a5,1
    80006d5c:	00813483          	ld	s1,8(sp)
    80006d60:	00f72023          	sw	a5,0(a4)
    80006d64:	02010113          	addi	sp,sp,32
    80006d68:	00001317          	auipc	t1,0x1
    80006d6c:	4c030067          	jr	1216(t1) # 80008228 <release>

0000000080006d70 <devintr>:
    80006d70:	142027f3          	csrr	a5,scause
    80006d74:	00000513          	li	a0,0
    80006d78:	0007c463          	bltz	a5,80006d80 <devintr+0x10>
    80006d7c:	00008067          	ret
    80006d80:	fe010113          	addi	sp,sp,-32
    80006d84:	00813823          	sd	s0,16(sp)
    80006d88:	00113c23          	sd	ra,24(sp)
    80006d8c:	00913423          	sd	s1,8(sp)
    80006d90:	02010413          	addi	s0,sp,32
    80006d94:	0ff7f713          	andi	a4,a5,255
    80006d98:	00900693          	li	a3,9
    80006d9c:	04d70c63          	beq	a4,a3,80006df4 <devintr+0x84>
    80006da0:	fff00713          	li	a4,-1
    80006da4:	03f71713          	slli	a4,a4,0x3f
    80006da8:	00170713          	addi	a4,a4,1
    80006dac:	00e78c63          	beq	a5,a4,80006dc4 <devintr+0x54>
    80006db0:	01813083          	ld	ra,24(sp)
    80006db4:	01013403          	ld	s0,16(sp)
    80006db8:	00813483          	ld	s1,8(sp)
    80006dbc:	02010113          	addi	sp,sp,32
    80006dc0:	00008067          	ret
    80006dc4:	00000097          	auipc	ra,0x0
    80006dc8:	c8c080e7          	jalr	-884(ra) # 80006a50 <cpuid>
    80006dcc:	06050663          	beqz	a0,80006e38 <devintr+0xc8>
    80006dd0:	144027f3          	csrr	a5,sip
    80006dd4:	ffd7f793          	andi	a5,a5,-3
    80006dd8:	14479073          	csrw	sip,a5
    80006ddc:	01813083          	ld	ra,24(sp)
    80006de0:	01013403          	ld	s0,16(sp)
    80006de4:	00813483          	ld	s1,8(sp)
    80006de8:	00200513          	li	a0,2
    80006dec:	02010113          	addi	sp,sp,32
    80006df0:	00008067          	ret
    80006df4:	00000097          	auipc	ra,0x0
    80006df8:	250080e7          	jalr	592(ra) # 80007044 <plic_claim>
    80006dfc:	00a00793          	li	a5,10
    80006e00:	00050493          	mv	s1,a0
    80006e04:	06f50663          	beq	a0,a5,80006e70 <devintr+0x100>
    80006e08:	00100513          	li	a0,1
    80006e0c:	fa0482e3          	beqz	s1,80006db0 <devintr+0x40>
    80006e10:	00048593          	mv	a1,s1
    80006e14:	00003517          	auipc	a0,0x3
    80006e18:	cdc50513          	addi	a0,a0,-804 # 80009af0 <_ZZ12printIntegermE6digits+0x558>
    80006e1c:	00000097          	auipc	ra,0x0
    80006e20:	66c080e7          	jalr	1644(ra) # 80007488 <__printf>
    80006e24:	00048513          	mv	a0,s1
    80006e28:	00000097          	auipc	ra,0x0
    80006e2c:	254080e7          	jalr	596(ra) # 8000707c <plic_complete>
    80006e30:	00100513          	li	a0,1
    80006e34:	f7dff06f          	j	80006db0 <devintr+0x40>
    80006e38:	00006517          	auipc	a0,0x6
    80006e3c:	ed850513          	addi	a0,a0,-296 # 8000cd10 <tickslock>
    80006e40:	00001097          	auipc	ra,0x1
    80006e44:	31c080e7          	jalr	796(ra) # 8000815c <acquire>
    80006e48:	00005717          	auipc	a4,0x5
    80006e4c:	d5c70713          	addi	a4,a4,-676 # 8000bba4 <ticks>
    80006e50:	00072783          	lw	a5,0(a4)
    80006e54:	00006517          	auipc	a0,0x6
    80006e58:	ebc50513          	addi	a0,a0,-324 # 8000cd10 <tickslock>
    80006e5c:	0017879b          	addiw	a5,a5,1
    80006e60:	00f72023          	sw	a5,0(a4)
    80006e64:	00001097          	auipc	ra,0x1
    80006e68:	3c4080e7          	jalr	964(ra) # 80008228 <release>
    80006e6c:	f65ff06f          	j	80006dd0 <devintr+0x60>
    80006e70:	00001097          	auipc	ra,0x1
    80006e74:	f20080e7          	jalr	-224(ra) # 80007d90 <uartintr>
    80006e78:	fadff06f          	j	80006e24 <devintr+0xb4>
    80006e7c:	0000                	unimp
	...

0000000080006e80 <kernelvec>:
    80006e80:	f0010113          	addi	sp,sp,-256
    80006e84:	00113023          	sd	ra,0(sp)
    80006e88:	00213423          	sd	sp,8(sp)
    80006e8c:	00313823          	sd	gp,16(sp)
    80006e90:	00413c23          	sd	tp,24(sp)
    80006e94:	02513023          	sd	t0,32(sp)
    80006e98:	02613423          	sd	t1,40(sp)
    80006e9c:	02713823          	sd	t2,48(sp)
    80006ea0:	02813c23          	sd	s0,56(sp)
    80006ea4:	04913023          	sd	s1,64(sp)
    80006ea8:	04a13423          	sd	a0,72(sp)
    80006eac:	04b13823          	sd	a1,80(sp)
    80006eb0:	04c13c23          	sd	a2,88(sp)
    80006eb4:	06d13023          	sd	a3,96(sp)
    80006eb8:	06e13423          	sd	a4,104(sp)
    80006ebc:	06f13823          	sd	a5,112(sp)
    80006ec0:	07013c23          	sd	a6,120(sp)
    80006ec4:	09113023          	sd	a7,128(sp)
    80006ec8:	09213423          	sd	s2,136(sp)
    80006ecc:	09313823          	sd	s3,144(sp)
    80006ed0:	09413c23          	sd	s4,152(sp)
    80006ed4:	0b513023          	sd	s5,160(sp)
    80006ed8:	0b613423          	sd	s6,168(sp)
    80006edc:	0b713823          	sd	s7,176(sp)
    80006ee0:	0b813c23          	sd	s8,184(sp)
    80006ee4:	0d913023          	sd	s9,192(sp)
    80006ee8:	0da13423          	sd	s10,200(sp)
    80006eec:	0db13823          	sd	s11,208(sp)
    80006ef0:	0dc13c23          	sd	t3,216(sp)
    80006ef4:	0fd13023          	sd	t4,224(sp)
    80006ef8:	0fe13423          	sd	t5,232(sp)
    80006efc:	0ff13823          	sd	t6,240(sp)
    80006f00:	cd1ff0ef          	jal	ra,80006bd0 <kerneltrap>
    80006f04:	00013083          	ld	ra,0(sp)
    80006f08:	00813103          	ld	sp,8(sp)
    80006f0c:	01013183          	ld	gp,16(sp)
    80006f10:	02013283          	ld	t0,32(sp)
    80006f14:	02813303          	ld	t1,40(sp)
    80006f18:	03013383          	ld	t2,48(sp)
    80006f1c:	03813403          	ld	s0,56(sp)
    80006f20:	04013483          	ld	s1,64(sp)
    80006f24:	04813503          	ld	a0,72(sp)
    80006f28:	05013583          	ld	a1,80(sp)
    80006f2c:	05813603          	ld	a2,88(sp)
    80006f30:	06013683          	ld	a3,96(sp)
    80006f34:	06813703          	ld	a4,104(sp)
    80006f38:	07013783          	ld	a5,112(sp)
    80006f3c:	07813803          	ld	a6,120(sp)
    80006f40:	08013883          	ld	a7,128(sp)
    80006f44:	08813903          	ld	s2,136(sp)
    80006f48:	09013983          	ld	s3,144(sp)
    80006f4c:	09813a03          	ld	s4,152(sp)
    80006f50:	0a013a83          	ld	s5,160(sp)
    80006f54:	0a813b03          	ld	s6,168(sp)
    80006f58:	0b013b83          	ld	s7,176(sp)
    80006f5c:	0b813c03          	ld	s8,184(sp)
    80006f60:	0c013c83          	ld	s9,192(sp)
    80006f64:	0c813d03          	ld	s10,200(sp)
    80006f68:	0d013d83          	ld	s11,208(sp)
    80006f6c:	0d813e03          	ld	t3,216(sp)
    80006f70:	0e013e83          	ld	t4,224(sp)
    80006f74:	0e813f03          	ld	t5,232(sp)
    80006f78:	0f013f83          	ld	t6,240(sp)
    80006f7c:	10010113          	addi	sp,sp,256
    80006f80:	10200073          	sret
    80006f84:	00000013          	nop
    80006f88:	00000013          	nop
    80006f8c:	00000013          	nop

0000000080006f90 <timervec>:
    80006f90:	34051573          	csrrw	a0,mscratch,a0
    80006f94:	00b53023          	sd	a1,0(a0)
    80006f98:	00c53423          	sd	a2,8(a0)
    80006f9c:	00d53823          	sd	a3,16(a0)
    80006fa0:	01853583          	ld	a1,24(a0)
    80006fa4:	02053603          	ld	a2,32(a0)
    80006fa8:	0005b683          	ld	a3,0(a1)
    80006fac:	00c686b3          	add	a3,a3,a2
    80006fb0:	00d5b023          	sd	a3,0(a1)
    80006fb4:	00200593          	li	a1,2
    80006fb8:	14459073          	csrw	sip,a1
    80006fbc:	01053683          	ld	a3,16(a0)
    80006fc0:	00853603          	ld	a2,8(a0)
    80006fc4:	00053583          	ld	a1,0(a0)
    80006fc8:	34051573          	csrrw	a0,mscratch,a0
    80006fcc:	30200073          	mret

0000000080006fd0 <plicinit>:
    80006fd0:	ff010113          	addi	sp,sp,-16
    80006fd4:	00813423          	sd	s0,8(sp)
    80006fd8:	01010413          	addi	s0,sp,16
    80006fdc:	00813403          	ld	s0,8(sp)
    80006fe0:	0c0007b7          	lui	a5,0xc000
    80006fe4:	00100713          	li	a4,1
    80006fe8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006fec:	00e7a223          	sw	a4,4(a5)
    80006ff0:	01010113          	addi	sp,sp,16
    80006ff4:	00008067          	ret

0000000080006ff8 <plicinithart>:
    80006ff8:	ff010113          	addi	sp,sp,-16
    80006ffc:	00813023          	sd	s0,0(sp)
    80007000:	00113423          	sd	ra,8(sp)
    80007004:	01010413          	addi	s0,sp,16
    80007008:	00000097          	auipc	ra,0x0
    8000700c:	a48080e7          	jalr	-1464(ra) # 80006a50 <cpuid>
    80007010:	0085171b          	slliw	a4,a0,0x8
    80007014:	0c0027b7          	lui	a5,0xc002
    80007018:	00e787b3          	add	a5,a5,a4
    8000701c:	40200713          	li	a4,1026
    80007020:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007024:	00813083          	ld	ra,8(sp)
    80007028:	00013403          	ld	s0,0(sp)
    8000702c:	00d5151b          	slliw	a0,a0,0xd
    80007030:	0c2017b7          	lui	a5,0xc201
    80007034:	00a78533          	add	a0,a5,a0
    80007038:	00052023          	sw	zero,0(a0)
    8000703c:	01010113          	addi	sp,sp,16
    80007040:	00008067          	ret

0000000080007044 <plic_claim>:
    80007044:	ff010113          	addi	sp,sp,-16
    80007048:	00813023          	sd	s0,0(sp)
    8000704c:	00113423          	sd	ra,8(sp)
    80007050:	01010413          	addi	s0,sp,16
    80007054:	00000097          	auipc	ra,0x0
    80007058:	9fc080e7          	jalr	-1540(ra) # 80006a50 <cpuid>
    8000705c:	00813083          	ld	ra,8(sp)
    80007060:	00013403          	ld	s0,0(sp)
    80007064:	00d5151b          	slliw	a0,a0,0xd
    80007068:	0c2017b7          	lui	a5,0xc201
    8000706c:	00a78533          	add	a0,a5,a0
    80007070:	00452503          	lw	a0,4(a0)
    80007074:	01010113          	addi	sp,sp,16
    80007078:	00008067          	ret

000000008000707c <plic_complete>:
    8000707c:	fe010113          	addi	sp,sp,-32
    80007080:	00813823          	sd	s0,16(sp)
    80007084:	00913423          	sd	s1,8(sp)
    80007088:	00113c23          	sd	ra,24(sp)
    8000708c:	02010413          	addi	s0,sp,32
    80007090:	00050493          	mv	s1,a0
    80007094:	00000097          	auipc	ra,0x0
    80007098:	9bc080e7          	jalr	-1604(ra) # 80006a50 <cpuid>
    8000709c:	01813083          	ld	ra,24(sp)
    800070a0:	01013403          	ld	s0,16(sp)
    800070a4:	00d5179b          	slliw	a5,a0,0xd
    800070a8:	0c201737          	lui	a4,0xc201
    800070ac:	00f707b3          	add	a5,a4,a5
    800070b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800070b4:	00813483          	ld	s1,8(sp)
    800070b8:	02010113          	addi	sp,sp,32
    800070bc:	00008067          	ret

00000000800070c0 <consolewrite>:
    800070c0:	fb010113          	addi	sp,sp,-80
    800070c4:	04813023          	sd	s0,64(sp)
    800070c8:	04113423          	sd	ra,72(sp)
    800070cc:	02913c23          	sd	s1,56(sp)
    800070d0:	03213823          	sd	s2,48(sp)
    800070d4:	03313423          	sd	s3,40(sp)
    800070d8:	03413023          	sd	s4,32(sp)
    800070dc:	01513c23          	sd	s5,24(sp)
    800070e0:	05010413          	addi	s0,sp,80
    800070e4:	06c05c63          	blez	a2,8000715c <consolewrite+0x9c>
    800070e8:	00060993          	mv	s3,a2
    800070ec:	00050a13          	mv	s4,a0
    800070f0:	00058493          	mv	s1,a1
    800070f4:	00000913          	li	s2,0
    800070f8:	fff00a93          	li	s5,-1
    800070fc:	01c0006f          	j	80007118 <consolewrite+0x58>
    80007100:	fbf44503          	lbu	a0,-65(s0)
    80007104:	0019091b          	addiw	s2,s2,1
    80007108:	00148493          	addi	s1,s1,1
    8000710c:	00001097          	auipc	ra,0x1
    80007110:	a9c080e7          	jalr	-1380(ra) # 80007ba8 <uartputc>
    80007114:	03298063          	beq	s3,s2,80007134 <consolewrite+0x74>
    80007118:	00048613          	mv	a2,s1
    8000711c:	00100693          	li	a3,1
    80007120:	000a0593          	mv	a1,s4
    80007124:	fbf40513          	addi	a0,s0,-65
    80007128:	00000097          	auipc	ra,0x0
    8000712c:	9e0080e7          	jalr	-1568(ra) # 80006b08 <either_copyin>
    80007130:	fd5518e3          	bne	a0,s5,80007100 <consolewrite+0x40>
    80007134:	04813083          	ld	ra,72(sp)
    80007138:	04013403          	ld	s0,64(sp)
    8000713c:	03813483          	ld	s1,56(sp)
    80007140:	02813983          	ld	s3,40(sp)
    80007144:	02013a03          	ld	s4,32(sp)
    80007148:	01813a83          	ld	s5,24(sp)
    8000714c:	00090513          	mv	a0,s2
    80007150:	03013903          	ld	s2,48(sp)
    80007154:	05010113          	addi	sp,sp,80
    80007158:	00008067          	ret
    8000715c:	00000913          	li	s2,0
    80007160:	fd5ff06f          	j	80007134 <consolewrite+0x74>

0000000080007164 <consoleread>:
    80007164:	f9010113          	addi	sp,sp,-112
    80007168:	06813023          	sd	s0,96(sp)
    8000716c:	04913c23          	sd	s1,88(sp)
    80007170:	05213823          	sd	s2,80(sp)
    80007174:	05313423          	sd	s3,72(sp)
    80007178:	05413023          	sd	s4,64(sp)
    8000717c:	03513c23          	sd	s5,56(sp)
    80007180:	03613823          	sd	s6,48(sp)
    80007184:	03713423          	sd	s7,40(sp)
    80007188:	03813023          	sd	s8,32(sp)
    8000718c:	06113423          	sd	ra,104(sp)
    80007190:	01913c23          	sd	s9,24(sp)
    80007194:	07010413          	addi	s0,sp,112
    80007198:	00060b93          	mv	s7,a2
    8000719c:	00050913          	mv	s2,a0
    800071a0:	00058c13          	mv	s8,a1
    800071a4:	00060b1b          	sext.w	s6,a2
    800071a8:	00006497          	auipc	s1,0x6
    800071ac:	b9048493          	addi	s1,s1,-1136 # 8000cd38 <cons>
    800071b0:	00400993          	li	s3,4
    800071b4:	fff00a13          	li	s4,-1
    800071b8:	00a00a93          	li	s5,10
    800071bc:	05705e63          	blez	s7,80007218 <consoleread+0xb4>
    800071c0:	09c4a703          	lw	a4,156(s1)
    800071c4:	0984a783          	lw	a5,152(s1)
    800071c8:	0007071b          	sext.w	a4,a4
    800071cc:	08e78463          	beq	a5,a4,80007254 <consoleread+0xf0>
    800071d0:	07f7f713          	andi	a4,a5,127
    800071d4:	00e48733          	add	a4,s1,a4
    800071d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800071dc:	0017869b          	addiw	a3,a5,1
    800071e0:	08d4ac23          	sw	a3,152(s1)
    800071e4:	00070c9b          	sext.w	s9,a4
    800071e8:	0b370663          	beq	a4,s3,80007294 <consoleread+0x130>
    800071ec:	00100693          	li	a3,1
    800071f0:	f9f40613          	addi	a2,s0,-97
    800071f4:	000c0593          	mv	a1,s8
    800071f8:	00090513          	mv	a0,s2
    800071fc:	f8e40fa3          	sb	a4,-97(s0)
    80007200:	00000097          	auipc	ra,0x0
    80007204:	8bc080e7          	jalr	-1860(ra) # 80006abc <either_copyout>
    80007208:	01450863          	beq	a0,s4,80007218 <consoleread+0xb4>
    8000720c:	001c0c13          	addi	s8,s8,1
    80007210:	fffb8b9b          	addiw	s7,s7,-1
    80007214:	fb5c94e3          	bne	s9,s5,800071bc <consoleread+0x58>
    80007218:	000b851b          	sext.w	a0,s7
    8000721c:	06813083          	ld	ra,104(sp)
    80007220:	06013403          	ld	s0,96(sp)
    80007224:	05813483          	ld	s1,88(sp)
    80007228:	05013903          	ld	s2,80(sp)
    8000722c:	04813983          	ld	s3,72(sp)
    80007230:	04013a03          	ld	s4,64(sp)
    80007234:	03813a83          	ld	s5,56(sp)
    80007238:	02813b83          	ld	s7,40(sp)
    8000723c:	02013c03          	ld	s8,32(sp)
    80007240:	01813c83          	ld	s9,24(sp)
    80007244:	40ab053b          	subw	a0,s6,a0
    80007248:	03013b03          	ld	s6,48(sp)
    8000724c:	07010113          	addi	sp,sp,112
    80007250:	00008067          	ret
    80007254:	00001097          	auipc	ra,0x1
    80007258:	1d8080e7          	jalr	472(ra) # 8000842c <push_on>
    8000725c:	0984a703          	lw	a4,152(s1)
    80007260:	09c4a783          	lw	a5,156(s1)
    80007264:	0007879b          	sext.w	a5,a5
    80007268:	fef70ce3          	beq	a4,a5,80007260 <consoleread+0xfc>
    8000726c:	00001097          	auipc	ra,0x1
    80007270:	234080e7          	jalr	564(ra) # 800084a0 <pop_on>
    80007274:	0984a783          	lw	a5,152(s1)
    80007278:	07f7f713          	andi	a4,a5,127
    8000727c:	00e48733          	add	a4,s1,a4
    80007280:	01874703          	lbu	a4,24(a4)
    80007284:	0017869b          	addiw	a3,a5,1
    80007288:	08d4ac23          	sw	a3,152(s1)
    8000728c:	00070c9b          	sext.w	s9,a4
    80007290:	f5371ee3          	bne	a4,s3,800071ec <consoleread+0x88>
    80007294:	000b851b          	sext.w	a0,s7
    80007298:	f96bf2e3          	bgeu	s7,s6,8000721c <consoleread+0xb8>
    8000729c:	08f4ac23          	sw	a5,152(s1)
    800072a0:	f7dff06f          	j	8000721c <consoleread+0xb8>

00000000800072a4 <consputc>:
    800072a4:	10000793          	li	a5,256
    800072a8:	00f50663          	beq	a0,a5,800072b4 <consputc+0x10>
    800072ac:	00001317          	auipc	t1,0x1
    800072b0:	9f430067          	jr	-1548(t1) # 80007ca0 <uartputc_sync>
    800072b4:	ff010113          	addi	sp,sp,-16
    800072b8:	00113423          	sd	ra,8(sp)
    800072bc:	00813023          	sd	s0,0(sp)
    800072c0:	01010413          	addi	s0,sp,16
    800072c4:	00800513          	li	a0,8
    800072c8:	00001097          	auipc	ra,0x1
    800072cc:	9d8080e7          	jalr	-1576(ra) # 80007ca0 <uartputc_sync>
    800072d0:	02000513          	li	a0,32
    800072d4:	00001097          	auipc	ra,0x1
    800072d8:	9cc080e7          	jalr	-1588(ra) # 80007ca0 <uartputc_sync>
    800072dc:	00013403          	ld	s0,0(sp)
    800072e0:	00813083          	ld	ra,8(sp)
    800072e4:	00800513          	li	a0,8
    800072e8:	01010113          	addi	sp,sp,16
    800072ec:	00001317          	auipc	t1,0x1
    800072f0:	9b430067          	jr	-1612(t1) # 80007ca0 <uartputc_sync>

00000000800072f4 <consoleintr>:
    800072f4:	fe010113          	addi	sp,sp,-32
    800072f8:	00813823          	sd	s0,16(sp)
    800072fc:	00913423          	sd	s1,8(sp)
    80007300:	01213023          	sd	s2,0(sp)
    80007304:	00113c23          	sd	ra,24(sp)
    80007308:	02010413          	addi	s0,sp,32
    8000730c:	00006917          	auipc	s2,0x6
    80007310:	a2c90913          	addi	s2,s2,-1492 # 8000cd38 <cons>
    80007314:	00050493          	mv	s1,a0
    80007318:	00090513          	mv	a0,s2
    8000731c:	00001097          	auipc	ra,0x1
    80007320:	e40080e7          	jalr	-448(ra) # 8000815c <acquire>
    80007324:	02048c63          	beqz	s1,8000735c <consoleintr+0x68>
    80007328:	0a092783          	lw	a5,160(s2)
    8000732c:	09892703          	lw	a4,152(s2)
    80007330:	07f00693          	li	a3,127
    80007334:	40e7873b          	subw	a4,a5,a4
    80007338:	02e6e263          	bltu	a3,a4,8000735c <consoleintr+0x68>
    8000733c:	00d00713          	li	a4,13
    80007340:	04e48063          	beq	s1,a4,80007380 <consoleintr+0x8c>
    80007344:	07f7f713          	andi	a4,a5,127
    80007348:	00e90733          	add	a4,s2,a4
    8000734c:	0017879b          	addiw	a5,a5,1
    80007350:	0af92023          	sw	a5,160(s2)
    80007354:	00970c23          	sb	s1,24(a4)
    80007358:	08f92e23          	sw	a5,156(s2)
    8000735c:	01013403          	ld	s0,16(sp)
    80007360:	01813083          	ld	ra,24(sp)
    80007364:	00813483          	ld	s1,8(sp)
    80007368:	00013903          	ld	s2,0(sp)
    8000736c:	00006517          	auipc	a0,0x6
    80007370:	9cc50513          	addi	a0,a0,-1588 # 8000cd38 <cons>
    80007374:	02010113          	addi	sp,sp,32
    80007378:	00001317          	auipc	t1,0x1
    8000737c:	eb030067          	jr	-336(t1) # 80008228 <release>
    80007380:	00a00493          	li	s1,10
    80007384:	fc1ff06f          	j	80007344 <consoleintr+0x50>

0000000080007388 <consoleinit>:
    80007388:	fe010113          	addi	sp,sp,-32
    8000738c:	00113c23          	sd	ra,24(sp)
    80007390:	00813823          	sd	s0,16(sp)
    80007394:	00913423          	sd	s1,8(sp)
    80007398:	02010413          	addi	s0,sp,32
    8000739c:	00006497          	auipc	s1,0x6
    800073a0:	99c48493          	addi	s1,s1,-1636 # 8000cd38 <cons>
    800073a4:	00048513          	mv	a0,s1
    800073a8:	00002597          	auipc	a1,0x2
    800073ac:	7a058593          	addi	a1,a1,1952 # 80009b48 <_ZZ12printIntegermE6digits+0x5b0>
    800073b0:	00001097          	auipc	ra,0x1
    800073b4:	d88080e7          	jalr	-632(ra) # 80008138 <initlock>
    800073b8:	00000097          	auipc	ra,0x0
    800073bc:	7ac080e7          	jalr	1964(ra) # 80007b64 <uartinit>
    800073c0:	01813083          	ld	ra,24(sp)
    800073c4:	01013403          	ld	s0,16(sp)
    800073c8:	00000797          	auipc	a5,0x0
    800073cc:	d9c78793          	addi	a5,a5,-612 # 80007164 <consoleread>
    800073d0:	0af4bc23          	sd	a5,184(s1)
    800073d4:	00000797          	auipc	a5,0x0
    800073d8:	cec78793          	addi	a5,a5,-788 # 800070c0 <consolewrite>
    800073dc:	0cf4b023          	sd	a5,192(s1)
    800073e0:	00813483          	ld	s1,8(sp)
    800073e4:	02010113          	addi	sp,sp,32
    800073e8:	00008067          	ret

00000000800073ec <console_read>:
    800073ec:	ff010113          	addi	sp,sp,-16
    800073f0:	00813423          	sd	s0,8(sp)
    800073f4:	01010413          	addi	s0,sp,16
    800073f8:	00813403          	ld	s0,8(sp)
    800073fc:	00006317          	auipc	t1,0x6
    80007400:	9f433303          	ld	t1,-1548(t1) # 8000cdf0 <devsw+0x10>
    80007404:	01010113          	addi	sp,sp,16
    80007408:	00030067          	jr	t1

000000008000740c <console_write>:
    8000740c:	ff010113          	addi	sp,sp,-16
    80007410:	00813423          	sd	s0,8(sp)
    80007414:	01010413          	addi	s0,sp,16
    80007418:	00813403          	ld	s0,8(sp)
    8000741c:	00006317          	auipc	t1,0x6
    80007420:	9dc33303          	ld	t1,-1572(t1) # 8000cdf8 <devsw+0x18>
    80007424:	01010113          	addi	sp,sp,16
    80007428:	00030067          	jr	t1

000000008000742c <panic>:
    8000742c:	fe010113          	addi	sp,sp,-32
    80007430:	00113c23          	sd	ra,24(sp)
    80007434:	00813823          	sd	s0,16(sp)
    80007438:	00913423          	sd	s1,8(sp)
    8000743c:	02010413          	addi	s0,sp,32
    80007440:	00050493          	mv	s1,a0
    80007444:	00002517          	auipc	a0,0x2
    80007448:	70c50513          	addi	a0,a0,1804 # 80009b50 <_ZZ12printIntegermE6digits+0x5b8>
    8000744c:	00006797          	auipc	a5,0x6
    80007450:	a407a623          	sw	zero,-1460(a5) # 8000ce98 <pr+0x18>
    80007454:	00000097          	auipc	ra,0x0
    80007458:	034080e7          	jalr	52(ra) # 80007488 <__printf>
    8000745c:	00048513          	mv	a0,s1
    80007460:	00000097          	auipc	ra,0x0
    80007464:	028080e7          	jalr	40(ra) # 80007488 <__printf>
    80007468:	00002517          	auipc	a0,0x2
    8000746c:	e4050513          	addi	a0,a0,-448 # 800092a8 <CONSOLE_STATUS+0x298>
    80007470:	00000097          	auipc	ra,0x0
    80007474:	018080e7          	jalr	24(ra) # 80007488 <__printf>
    80007478:	00100793          	li	a5,1
    8000747c:	00004717          	auipc	a4,0x4
    80007480:	72f72623          	sw	a5,1836(a4) # 8000bba8 <panicked>
    80007484:	0000006f          	j	80007484 <panic+0x58>

0000000080007488 <__printf>:
    80007488:	f3010113          	addi	sp,sp,-208
    8000748c:	08813023          	sd	s0,128(sp)
    80007490:	07313423          	sd	s3,104(sp)
    80007494:	09010413          	addi	s0,sp,144
    80007498:	05813023          	sd	s8,64(sp)
    8000749c:	08113423          	sd	ra,136(sp)
    800074a0:	06913c23          	sd	s1,120(sp)
    800074a4:	07213823          	sd	s2,112(sp)
    800074a8:	07413023          	sd	s4,96(sp)
    800074ac:	05513c23          	sd	s5,88(sp)
    800074b0:	05613823          	sd	s6,80(sp)
    800074b4:	05713423          	sd	s7,72(sp)
    800074b8:	03913c23          	sd	s9,56(sp)
    800074bc:	03a13823          	sd	s10,48(sp)
    800074c0:	03b13423          	sd	s11,40(sp)
    800074c4:	00006317          	auipc	t1,0x6
    800074c8:	9bc30313          	addi	t1,t1,-1604 # 8000ce80 <pr>
    800074cc:	01832c03          	lw	s8,24(t1)
    800074d0:	00b43423          	sd	a1,8(s0)
    800074d4:	00c43823          	sd	a2,16(s0)
    800074d8:	00d43c23          	sd	a3,24(s0)
    800074dc:	02e43023          	sd	a4,32(s0)
    800074e0:	02f43423          	sd	a5,40(s0)
    800074e4:	03043823          	sd	a6,48(s0)
    800074e8:	03143c23          	sd	a7,56(s0)
    800074ec:	00050993          	mv	s3,a0
    800074f0:	4a0c1663          	bnez	s8,8000799c <__printf+0x514>
    800074f4:	60098c63          	beqz	s3,80007b0c <__printf+0x684>
    800074f8:	0009c503          	lbu	a0,0(s3)
    800074fc:	00840793          	addi	a5,s0,8
    80007500:	f6f43c23          	sd	a5,-136(s0)
    80007504:	00000493          	li	s1,0
    80007508:	22050063          	beqz	a0,80007728 <__printf+0x2a0>
    8000750c:	00002a37          	lui	s4,0x2
    80007510:	00018ab7          	lui	s5,0x18
    80007514:	000f4b37          	lui	s6,0xf4
    80007518:	00989bb7          	lui	s7,0x989
    8000751c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007520:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007524:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007528:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000752c:	00148c9b          	addiw	s9,s1,1
    80007530:	02500793          	li	a5,37
    80007534:	01998933          	add	s2,s3,s9
    80007538:	38f51263          	bne	a0,a5,800078bc <__printf+0x434>
    8000753c:	00094783          	lbu	a5,0(s2)
    80007540:	00078c9b          	sext.w	s9,a5
    80007544:	1e078263          	beqz	a5,80007728 <__printf+0x2a0>
    80007548:	0024849b          	addiw	s1,s1,2
    8000754c:	07000713          	li	a4,112
    80007550:	00998933          	add	s2,s3,s1
    80007554:	38e78a63          	beq	a5,a4,800078e8 <__printf+0x460>
    80007558:	20f76863          	bltu	a4,a5,80007768 <__printf+0x2e0>
    8000755c:	42a78863          	beq	a5,a0,8000798c <__printf+0x504>
    80007560:	06400713          	li	a4,100
    80007564:	40e79663          	bne	a5,a4,80007970 <__printf+0x4e8>
    80007568:	f7843783          	ld	a5,-136(s0)
    8000756c:	0007a603          	lw	a2,0(a5)
    80007570:	00878793          	addi	a5,a5,8
    80007574:	f6f43c23          	sd	a5,-136(s0)
    80007578:	42064a63          	bltz	a2,800079ac <__printf+0x524>
    8000757c:	00a00713          	li	a4,10
    80007580:	02e677bb          	remuw	a5,a2,a4
    80007584:	00002d97          	auipc	s11,0x2
    80007588:	5f4d8d93          	addi	s11,s11,1524 # 80009b78 <digits>
    8000758c:	00900593          	li	a1,9
    80007590:	0006051b          	sext.w	a0,a2
    80007594:	00000c93          	li	s9,0
    80007598:	02079793          	slli	a5,a5,0x20
    8000759c:	0207d793          	srli	a5,a5,0x20
    800075a0:	00fd87b3          	add	a5,s11,a5
    800075a4:	0007c783          	lbu	a5,0(a5)
    800075a8:	02e656bb          	divuw	a3,a2,a4
    800075ac:	f8f40023          	sb	a5,-128(s0)
    800075b0:	14c5d863          	bge	a1,a2,80007700 <__printf+0x278>
    800075b4:	06300593          	li	a1,99
    800075b8:	00100c93          	li	s9,1
    800075bc:	02e6f7bb          	remuw	a5,a3,a4
    800075c0:	02079793          	slli	a5,a5,0x20
    800075c4:	0207d793          	srli	a5,a5,0x20
    800075c8:	00fd87b3          	add	a5,s11,a5
    800075cc:	0007c783          	lbu	a5,0(a5)
    800075d0:	02e6d73b          	divuw	a4,a3,a4
    800075d4:	f8f400a3          	sb	a5,-127(s0)
    800075d8:	12a5f463          	bgeu	a1,a0,80007700 <__printf+0x278>
    800075dc:	00a00693          	li	a3,10
    800075e0:	00900593          	li	a1,9
    800075e4:	02d777bb          	remuw	a5,a4,a3
    800075e8:	02079793          	slli	a5,a5,0x20
    800075ec:	0207d793          	srli	a5,a5,0x20
    800075f0:	00fd87b3          	add	a5,s11,a5
    800075f4:	0007c503          	lbu	a0,0(a5)
    800075f8:	02d757bb          	divuw	a5,a4,a3
    800075fc:	f8a40123          	sb	a0,-126(s0)
    80007600:	48e5f263          	bgeu	a1,a4,80007a84 <__printf+0x5fc>
    80007604:	06300513          	li	a0,99
    80007608:	02d7f5bb          	remuw	a1,a5,a3
    8000760c:	02059593          	slli	a1,a1,0x20
    80007610:	0205d593          	srli	a1,a1,0x20
    80007614:	00bd85b3          	add	a1,s11,a1
    80007618:	0005c583          	lbu	a1,0(a1)
    8000761c:	02d7d7bb          	divuw	a5,a5,a3
    80007620:	f8b401a3          	sb	a1,-125(s0)
    80007624:	48e57263          	bgeu	a0,a4,80007aa8 <__printf+0x620>
    80007628:	3e700513          	li	a0,999
    8000762c:	02d7f5bb          	remuw	a1,a5,a3
    80007630:	02059593          	slli	a1,a1,0x20
    80007634:	0205d593          	srli	a1,a1,0x20
    80007638:	00bd85b3          	add	a1,s11,a1
    8000763c:	0005c583          	lbu	a1,0(a1)
    80007640:	02d7d7bb          	divuw	a5,a5,a3
    80007644:	f8b40223          	sb	a1,-124(s0)
    80007648:	46e57663          	bgeu	a0,a4,80007ab4 <__printf+0x62c>
    8000764c:	02d7f5bb          	remuw	a1,a5,a3
    80007650:	02059593          	slli	a1,a1,0x20
    80007654:	0205d593          	srli	a1,a1,0x20
    80007658:	00bd85b3          	add	a1,s11,a1
    8000765c:	0005c583          	lbu	a1,0(a1)
    80007660:	02d7d7bb          	divuw	a5,a5,a3
    80007664:	f8b402a3          	sb	a1,-123(s0)
    80007668:	46ea7863          	bgeu	s4,a4,80007ad8 <__printf+0x650>
    8000766c:	02d7f5bb          	remuw	a1,a5,a3
    80007670:	02059593          	slli	a1,a1,0x20
    80007674:	0205d593          	srli	a1,a1,0x20
    80007678:	00bd85b3          	add	a1,s11,a1
    8000767c:	0005c583          	lbu	a1,0(a1)
    80007680:	02d7d7bb          	divuw	a5,a5,a3
    80007684:	f8b40323          	sb	a1,-122(s0)
    80007688:	3eeaf863          	bgeu	s5,a4,80007a78 <__printf+0x5f0>
    8000768c:	02d7f5bb          	remuw	a1,a5,a3
    80007690:	02059593          	slli	a1,a1,0x20
    80007694:	0205d593          	srli	a1,a1,0x20
    80007698:	00bd85b3          	add	a1,s11,a1
    8000769c:	0005c583          	lbu	a1,0(a1)
    800076a0:	02d7d7bb          	divuw	a5,a5,a3
    800076a4:	f8b403a3          	sb	a1,-121(s0)
    800076a8:	42eb7e63          	bgeu	s6,a4,80007ae4 <__printf+0x65c>
    800076ac:	02d7f5bb          	remuw	a1,a5,a3
    800076b0:	02059593          	slli	a1,a1,0x20
    800076b4:	0205d593          	srli	a1,a1,0x20
    800076b8:	00bd85b3          	add	a1,s11,a1
    800076bc:	0005c583          	lbu	a1,0(a1)
    800076c0:	02d7d7bb          	divuw	a5,a5,a3
    800076c4:	f8b40423          	sb	a1,-120(s0)
    800076c8:	42ebfc63          	bgeu	s7,a4,80007b00 <__printf+0x678>
    800076cc:	02079793          	slli	a5,a5,0x20
    800076d0:	0207d793          	srli	a5,a5,0x20
    800076d4:	00fd8db3          	add	s11,s11,a5
    800076d8:	000dc703          	lbu	a4,0(s11)
    800076dc:	00a00793          	li	a5,10
    800076e0:	00900c93          	li	s9,9
    800076e4:	f8e404a3          	sb	a4,-119(s0)
    800076e8:	00065c63          	bgez	a2,80007700 <__printf+0x278>
    800076ec:	f9040713          	addi	a4,s0,-112
    800076f0:	00f70733          	add	a4,a4,a5
    800076f4:	02d00693          	li	a3,45
    800076f8:	fed70823          	sb	a3,-16(a4)
    800076fc:	00078c93          	mv	s9,a5
    80007700:	f8040793          	addi	a5,s0,-128
    80007704:	01978cb3          	add	s9,a5,s9
    80007708:	f7f40d13          	addi	s10,s0,-129
    8000770c:	000cc503          	lbu	a0,0(s9)
    80007710:	fffc8c93          	addi	s9,s9,-1
    80007714:	00000097          	auipc	ra,0x0
    80007718:	b90080e7          	jalr	-1136(ra) # 800072a4 <consputc>
    8000771c:	ffac98e3          	bne	s9,s10,8000770c <__printf+0x284>
    80007720:	00094503          	lbu	a0,0(s2)
    80007724:	e00514e3          	bnez	a0,8000752c <__printf+0xa4>
    80007728:	1a0c1663          	bnez	s8,800078d4 <__printf+0x44c>
    8000772c:	08813083          	ld	ra,136(sp)
    80007730:	08013403          	ld	s0,128(sp)
    80007734:	07813483          	ld	s1,120(sp)
    80007738:	07013903          	ld	s2,112(sp)
    8000773c:	06813983          	ld	s3,104(sp)
    80007740:	06013a03          	ld	s4,96(sp)
    80007744:	05813a83          	ld	s5,88(sp)
    80007748:	05013b03          	ld	s6,80(sp)
    8000774c:	04813b83          	ld	s7,72(sp)
    80007750:	04013c03          	ld	s8,64(sp)
    80007754:	03813c83          	ld	s9,56(sp)
    80007758:	03013d03          	ld	s10,48(sp)
    8000775c:	02813d83          	ld	s11,40(sp)
    80007760:	0d010113          	addi	sp,sp,208
    80007764:	00008067          	ret
    80007768:	07300713          	li	a4,115
    8000776c:	1ce78a63          	beq	a5,a4,80007940 <__printf+0x4b8>
    80007770:	07800713          	li	a4,120
    80007774:	1ee79e63          	bne	a5,a4,80007970 <__printf+0x4e8>
    80007778:	f7843783          	ld	a5,-136(s0)
    8000777c:	0007a703          	lw	a4,0(a5)
    80007780:	00878793          	addi	a5,a5,8
    80007784:	f6f43c23          	sd	a5,-136(s0)
    80007788:	28074263          	bltz	a4,80007a0c <__printf+0x584>
    8000778c:	00002d97          	auipc	s11,0x2
    80007790:	3ecd8d93          	addi	s11,s11,1004 # 80009b78 <digits>
    80007794:	00f77793          	andi	a5,a4,15
    80007798:	00fd87b3          	add	a5,s11,a5
    8000779c:	0007c683          	lbu	a3,0(a5)
    800077a0:	00f00613          	li	a2,15
    800077a4:	0007079b          	sext.w	a5,a4
    800077a8:	f8d40023          	sb	a3,-128(s0)
    800077ac:	0047559b          	srliw	a1,a4,0x4
    800077b0:	0047569b          	srliw	a3,a4,0x4
    800077b4:	00000c93          	li	s9,0
    800077b8:	0ee65063          	bge	a2,a4,80007898 <__printf+0x410>
    800077bc:	00f6f693          	andi	a3,a3,15
    800077c0:	00dd86b3          	add	a3,s11,a3
    800077c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800077c8:	0087d79b          	srliw	a5,a5,0x8
    800077cc:	00100c93          	li	s9,1
    800077d0:	f8d400a3          	sb	a3,-127(s0)
    800077d4:	0cb67263          	bgeu	a2,a1,80007898 <__printf+0x410>
    800077d8:	00f7f693          	andi	a3,a5,15
    800077dc:	00dd86b3          	add	a3,s11,a3
    800077e0:	0006c583          	lbu	a1,0(a3)
    800077e4:	00f00613          	li	a2,15
    800077e8:	0047d69b          	srliw	a3,a5,0x4
    800077ec:	f8b40123          	sb	a1,-126(s0)
    800077f0:	0047d593          	srli	a1,a5,0x4
    800077f4:	28f67e63          	bgeu	a2,a5,80007a90 <__printf+0x608>
    800077f8:	00f6f693          	andi	a3,a3,15
    800077fc:	00dd86b3          	add	a3,s11,a3
    80007800:	0006c503          	lbu	a0,0(a3)
    80007804:	0087d813          	srli	a6,a5,0x8
    80007808:	0087d69b          	srliw	a3,a5,0x8
    8000780c:	f8a401a3          	sb	a0,-125(s0)
    80007810:	28b67663          	bgeu	a2,a1,80007a9c <__printf+0x614>
    80007814:	00f6f693          	andi	a3,a3,15
    80007818:	00dd86b3          	add	a3,s11,a3
    8000781c:	0006c583          	lbu	a1,0(a3)
    80007820:	00c7d513          	srli	a0,a5,0xc
    80007824:	00c7d69b          	srliw	a3,a5,0xc
    80007828:	f8b40223          	sb	a1,-124(s0)
    8000782c:	29067a63          	bgeu	a2,a6,80007ac0 <__printf+0x638>
    80007830:	00f6f693          	andi	a3,a3,15
    80007834:	00dd86b3          	add	a3,s11,a3
    80007838:	0006c583          	lbu	a1,0(a3)
    8000783c:	0107d813          	srli	a6,a5,0x10
    80007840:	0107d69b          	srliw	a3,a5,0x10
    80007844:	f8b402a3          	sb	a1,-123(s0)
    80007848:	28a67263          	bgeu	a2,a0,80007acc <__printf+0x644>
    8000784c:	00f6f693          	andi	a3,a3,15
    80007850:	00dd86b3          	add	a3,s11,a3
    80007854:	0006c683          	lbu	a3,0(a3)
    80007858:	0147d79b          	srliw	a5,a5,0x14
    8000785c:	f8d40323          	sb	a3,-122(s0)
    80007860:	21067663          	bgeu	a2,a6,80007a6c <__printf+0x5e4>
    80007864:	02079793          	slli	a5,a5,0x20
    80007868:	0207d793          	srli	a5,a5,0x20
    8000786c:	00fd8db3          	add	s11,s11,a5
    80007870:	000dc683          	lbu	a3,0(s11)
    80007874:	00800793          	li	a5,8
    80007878:	00700c93          	li	s9,7
    8000787c:	f8d403a3          	sb	a3,-121(s0)
    80007880:	00075c63          	bgez	a4,80007898 <__printf+0x410>
    80007884:	f9040713          	addi	a4,s0,-112
    80007888:	00f70733          	add	a4,a4,a5
    8000788c:	02d00693          	li	a3,45
    80007890:	fed70823          	sb	a3,-16(a4)
    80007894:	00078c93          	mv	s9,a5
    80007898:	f8040793          	addi	a5,s0,-128
    8000789c:	01978cb3          	add	s9,a5,s9
    800078a0:	f7f40d13          	addi	s10,s0,-129
    800078a4:	000cc503          	lbu	a0,0(s9)
    800078a8:	fffc8c93          	addi	s9,s9,-1
    800078ac:	00000097          	auipc	ra,0x0
    800078b0:	9f8080e7          	jalr	-1544(ra) # 800072a4 <consputc>
    800078b4:	ff9d18e3          	bne	s10,s9,800078a4 <__printf+0x41c>
    800078b8:	0100006f          	j	800078c8 <__printf+0x440>
    800078bc:	00000097          	auipc	ra,0x0
    800078c0:	9e8080e7          	jalr	-1560(ra) # 800072a4 <consputc>
    800078c4:	000c8493          	mv	s1,s9
    800078c8:	00094503          	lbu	a0,0(s2)
    800078cc:	c60510e3          	bnez	a0,8000752c <__printf+0xa4>
    800078d0:	e40c0ee3          	beqz	s8,8000772c <__printf+0x2a4>
    800078d4:	00005517          	auipc	a0,0x5
    800078d8:	5ac50513          	addi	a0,a0,1452 # 8000ce80 <pr>
    800078dc:	00001097          	auipc	ra,0x1
    800078e0:	94c080e7          	jalr	-1716(ra) # 80008228 <release>
    800078e4:	e49ff06f          	j	8000772c <__printf+0x2a4>
    800078e8:	f7843783          	ld	a5,-136(s0)
    800078ec:	03000513          	li	a0,48
    800078f0:	01000d13          	li	s10,16
    800078f4:	00878713          	addi	a4,a5,8
    800078f8:	0007bc83          	ld	s9,0(a5)
    800078fc:	f6e43c23          	sd	a4,-136(s0)
    80007900:	00000097          	auipc	ra,0x0
    80007904:	9a4080e7          	jalr	-1628(ra) # 800072a4 <consputc>
    80007908:	07800513          	li	a0,120
    8000790c:	00000097          	auipc	ra,0x0
    80007910:	998080e7          	jalr	-1640(ra) # 800072a4 <consputc>
    80007914:	00002d97          	auipc	s11,0x2
    80007918:	264d8d93          	addi	s11,s11,612 # 80009b78 <digits>
    8000791c:	03ccd793          	srli	a5,s9,0x3c
    80007920:	00fd87b3          	add	a5,s11,a5
    80007924:	0007c503          	lbu	a0,0(a5)
    80007928:	fffd0d1b          	addiw	s10,s10,-1
    8000792c:	004c9c93          	slli	s9,s9,0x4
    80007930:	00000097          	auipc	ra,0x0
    80007934:	974080e7          	jalr	-1676(ra) # 800072a4 <consputc>
    80007938:	fe0d12e3          	bnez	s10,8000791c <__printf+0x494>
    8000793c:	f8dff06f          	j	800078c8 <__printf+0x440>
    80007940:	f7843783          	ld	a5,-136(s0)
    80007944:	0007bc83          	ld	s9,0(a5)
    80007948:	00878793          	addi	a5,a5,8
    8000794c:	f6f43c23          	sd	a5,-136(s0)
    80007950:	000c9a63          	bnez	s9,80007964 <__printf+0x4dc>
    80007954:	1080006f          	j	80007a5c <__printf+0x5d4>
    80007958:	001c8c93          	addi	s9,s9,1
    8000795c:	00000097          	auipc	ra,0x0
    80007960:	948080e7          	jalr	-1720(ra) # 800072a4 <consputc>
    80007964:	000cc503          	lbu	a0,0(s9)
    80007968:	fe0518e3          	bnez	a0,80007958 <__printf+0x4d0>
    8000796c:	f5dff06f          	j	800078c8 <__printf+0x440>
    80007970:	02500513          	li	a0,37
    80007974:	00000097          	auipc	ra,0x0
    80007978:	930080e7          	jalr	-1744(ra) # 800072a4 <consputc>
    8000797c:	000c8513          	mv	a0,s9
    80007980:	00000097          	auipc	ra,0x0
    80007984:	924080e7          	jalr	-1756(ra) # 800072a4 <consputc>
    80007988:	f41ff06f          	j	800078c8 <__printf+0x440>
    8000798c:	02500513          	li	a0,37
    80007990:	00000097          	auipc	ra,0x0
    80007994:	914080e7          	jalr	-1772(ra) # 800072a4 <consputc>
    80007998:	f31ff06f          	j	800078c8 <__printf+0x440>
    8000799c:	00030513          	mv	a0,t1
    800079a0:	00000097          	auipc	ra,0x0
    800079a4:	7bc080e7          	jalr	1980(ra) # 8000815c <acquire>
    800079a8:	b4dff06f          	j	800074f4 <__printf+0x6c>
    800079ac:	40c0053b          	negw	a0,a2
    800079b0:	00a00713          	li	a4,10
    800079b4:	02e576bb          	remuw	a3,a0,a4
    800079b8:	00002d97          	auipc	s11,0x2
    800079bc:	1c0d8d93          	addi	s11,s11,448 # 80009b78 <digits>
    800079c0:	ff700593          	li	a1,-9
    800079c4:	02069693          	slli	a3,a3,0x20
    800079c8:	0206d693          	srli	a3,a3,0x20
    800079cc:	00dd86b3          	add	a3,s11,a3
    800079d0:	0006c683          	lbu	a3,0(a3)
    800079d4:	02e557bb          	divuw	a5,a0,a4
    800079d8:	f8d40023          	sb	a3,-128(s0)
    800079dc:	10b65e63          	bge	a2,a1,80007af8 <__printf+0x670>
    800079e0:	06300593          	li	a1,99
    800079e4:	02e7f6bb          	remuw	a3,a5,a4
    800079e8:	02069693          	slli	a3,a3,0x20
    800079ec:	0206d693          	srli	a3,a3,0x20
    800079f0:	00dd86b3          	add	a3,s11,a3
    800079f4:	0006c683          	lbu	a3,0(a3)
    800079f8:	02e7d73b          	divuw	a4,a5,a4
    800079fc:	00200793          	li	a5,2
    80007a00:	f8d400a3          	sb	a3,-127(s0)
    80007a04:	bca5ece3          	bltu	a1,a0,800075dc <__printf+0x154>
    80007a08:	ce5ff06f          	j	800076ec <__printf+0x264>
    80007a0c:	40e007bb          	negw	a5,a4
    80007a10:	00002d97          	auipc	s11,0x2
    80007a14:	168d8d93          	addi	s11,s11,360 # 80009b78 <digits>
    80007a18:	00f7f693          	andi	a3,a5,15
    80007a1c:	00dd86b3          	add	a3,s11,a3
    80007a20:	0006c583          	lbu	a1,0(a3)
    80007a24:	ff100613          	li	a2,-15
    80007a28:	0047d69b          	srliw	a3,a5,0x4
    80007a2c:	f8b40023          	sb	a1,-128(s0)
    80007a30:	0047d59b          	srliw	a1,a5,0x4
    80007a34:	0ac75e63          	bge	a4,a2,80007af0 <__printf+0x668>
    80007a38:	00f6f693          	andi	a3,a3,15
    80007a3c:	00dd86b3          	add	a3,s11,a3
    80007a40:	0006c603          	lbu	a2,0(a3)
    80007a44:	00f00693          	li	a3,15
    80007a48:	0087d79b          	srliw	a5,a5,0x8
    80007a4c:	f8c400a3          	sb	a2,-127(s0)
    80007a50:	d8b6e4e3          	bltu	a3,a1,800077d8 <__printf+0x350>
    80007a54:	00200793          	li	a5,2
    80007a58:	e2dff06f          	j	80007884 <__printf+0x3fc>
    80007a5c:	00002c97          	auipc	s9,0x2
    80007a60:	0fcc8c93          	addi	s9,s9,252 # 80009b58 <_ZZ12printIntegermE6digits+0x5c0>
    80007a64:	02800513          	li	a0,40
    80007a68:	ef1ff06f          	j	80007958 <__printf+0x4d0>
    80007a6c:	00700793          	li	a5,7
    80007a70:	00600c93          	li	s9,6
    80007a74:	e0dff06f          	j	80007880 <__printf+0x3f8>
    80007a78:	00700793          	li	a5,7
    80007a7c:	00600c93          	li	s9,6
    80007a80:	c69ff06f          	j	800076e8 <__printf+0x260>
    80007a84:	00300793          	li	a5,3
    80007a88:	00200c93          	li	s9,2
    80007a8c:	c5dff06f          	j	800076e8 <__printf+0x260>
    80007a90:	00300793          	li	a5,3
    80007a94:	00200c93          	li	s9,2
    80007a98:	de9ff06f          	j	80007880 <__printf+0x3f8>
    80007a9c:	00400793          	li	a5,4
    80007aa0:	00300c93          	li	s9,3
    80007aa4:	dddff06f          	j	80007880 <__printf+0x3f8>
    80007aa8:	00400793          	li	a5,4
    80007aac:	00300c93          	li	s9,3
    80007ab0:	c39ff06f          	j	800076e8 <__printf+0x260>
    80007ab4:	00500793          	li	a5,5
    80007ab8:	00400c93          	li	s9,4
    80007abc:	c2dff06f          	j	800076e8 <__printf+0x260>
    80007ac0:	00500793          	li	a5,5
    80007ac4:	00400c93          	li	s9,4
    80007ac8:	db9ff06f          	j	80007880 <__printf+0x3f8>
    80007acc:	00600793          	li	a5,6
    80007ad0:	00500c93          	li	s9,5
    80007ad4:	dadff06f          	j	80007880 <__printf+0x3f8>
    80007ad8:	00600793          	li	a5,6
    80007adc:	00500c93          	li	s9,5
    80007ae0:	c09ff06f          	j	800076e8 <__printf+0x260>
    80007ae4:	00800793          	li	a5,8
    80007ae8:	00700c93          	li	s9,7
    80007aec:	bfdff06f          	j	800076e8 <__printf+0x260>
    80007af0:	00100793          	li	a5,1
    80007af4:	d91ff06f          	j	80007884 <__printf+0x3fc>
    80007af8:	00100793          	li	a5,1
    80007afc:	bf1ff06f          	j	800076ec <__printf+0x264>
    80007b00:	00900793          	li	a5,9
    80007b04:	00800c93          	li	s9,8
    80007b08:	be1ff06f          	j	800076e8 <__printf+0x260>
    80007b0c:	00002517          	auipc	a0,0x2
    80007b10:	05450513          	addi	a0,a0,84 # 80009b60 <_ZZ12printIntegermE6digits+0x5c8>
    80007b14:	00000097          	auipc	ra,0x0
    80007b18:	918080e7          	jalr	-1768(ra) # 8000742c <panic>

0000000080007b1c <printfinit>:
    80007b1c:	fe010113          	addi	sp,sp,-32
    80007b20:	00813823          	sd	s0,16(sp)
    80007b24:	00913423          	sd	s1,8(sp)
    80007b28:	00113c23          	sd	ra,24(sp)
    80007b2c:	02010413          	addi	s0,sp,32
    80007b30:	00005497          	auipc	s1,0x5
    80007b34:	35048493          	addi	s1,s1,848 # 8000ce80 <pr>
    80007b38:	00048513          	mv	a0,s1
    80007b3c:	00002597          	auipc	a1,0x2
    80007b40:	03458593          	addi	a1,a1,52 # 80009b70 <_ZZ12printIntegermE6digits+0x5d8>
    80007b44:	00000097          	auipc	ra,0x0
    80007b48:	5f4080e7          	jalr	1524(ra) # 80008138 <initlock>
    80007b4c:	01813083          	ld	ra,24(sp)
    80007b50:	01013403          	ld	s0,16(sp)
    80007b54:	0004ac23          	sw	zero,24(s1)
    80007b58:	00813483          	ld	s1,8(sp)
    80007b5c:	02010113          	addi	sp,sp,32
    80007b60:	00008067          	ret

0000000080007b64 <uartinit>:
    80007b64:	ff010113          	addi	sp,sp,-16
    80007b68:	00813423          	sd	s0,8(sp)
    80007b6c:	01010413          	addi	s0,sp,16
    80007b70:	100007b7          	lui	a5,0x10000
    80007b74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007b78:	f8000713          	li	a4,-128
    80007b7c:	00e781a3          	sb	a4,3(a5)
    80007b80:	00300713          	li	a4,3
    80007b84:	00e78023          	sb	a4,0(a5)
    80007b88:	000780a3          	sb	zero,1(a5)
    80007b8c:	00e781a3          	sb	a4,3(a5)
    80007b90:	00700693          	li	a3,7
    80007b94:	00d78123          	sb	a3,2(a5)
    80007b98:	00e780a3          	sb	a4,1(a5)
    80007b9c:	00813403          	ld	s0,8(sp)
    80007ba0:	01010113          	addi	sp,sp,16
    80007ba4:	00008067          	ret

0000000080007ba8 <uartputc>:
    80007ba8:	00004797          	auipc	a5,0x4
    80007bac:	0007a783          	lw	a5,0(a5) # 8000bba8 <panicked>
    80007bb0:	00078463          	beqz	a5,80007bb8 <uartputc+0x10>
    80007bb4:	0000006f          	j	80007bb4 <uartputc+0xc>
    80007bb8:	fd010113          	addi	sp,sp,-48
    80007bbc:	02813023          	sd	s0,32(sp)
    80007bc0:	00913c23          	sd	s1,24(sp)
    80007bc4:	01213823          	sd	s2,16(sp)
    80007bc8:	01313423          	sd	s3,8(sp)
    80007bcc:	02113423          	sd	ra,40(sp)
    80007bd0:	03010413          	addi	s0,sp,48
    80007bd4:	00004917          	auipc	s2,0x4
    80007bd8:	fdc90913          	addi	s2,s2,-36 # 8000bbb0 <uart_tx_r>
    80007bdc:	00093783          	ld	a5,0(s2)
    80007be0:	00004497          	auipc	s1,0x4
    80007be4:	fd848493          	addi	s1,s1,-40 # 8000bbb8 <uart_tx_w>
    80007be8:	0004b703          	ld	a4,0(s1)
    80007bec:	02078693          	addi	a3,a5,32
    80007bf0:	00050993          	mv	s3,a0
    80007bf4:	02e69c63          	bne	a3,a4,80007c2c <uartputc+0x84>
    80007bf8:	00001097          	auipc	ra,0x1
    80007bfc:	834080e7          	jalr	-1996(ra) # 8000842c <push_on>
    80007c00:	00093783          	ld	a5,0(s2)
    80007c04:	0004b703          	ld	a4,0(s1)
    80007c08:	02078793          	addi	a5,a5,32
    80007c0c:	00e79463          	bne	a5,a4,80007c14 <uartputc+0x6c>
    80007c10:	0000006f          	j	80007c10 <uartputc+0x68>
    80007c14:	00001097          	auipc	ra,0x1
    80007c18:	88c080e7          	jalr	-1908(ra) # 800084a0 <pop_on>
    80007c1c:	00093783          	ld	a5,0(s2)
    80007c20:	0004b703          	ld	a4,0(s1)
    80007c24:	02078693          	addi	a3,a5,32
    80007c28:	fce688e3          	beq	a3,a4,80007bf8 <uartputc+0x50>
    80007c2c:	01f77693          	andi	a3,a4,31
    80007c30:	00005597          	auipc	a1,0x5
    80007c34:	27058593          	addi	a1,a1,624 # 8000cea0 <uart_tx_buf>
    80007c38:	00d586b3          	add	a3,a1,a3
    80007c3c:	00170713          	addi	a4,a4,1
    80007c40:	01368023          	sb	s3,0(a3)
    80007c44:	00e4b023          	sd	a4,0(s1)
    80007c48:	10000637          	lui	a2,0x10000
    80007c4c:	02f71063          	bne	a4,a5,80007c6c <uartputc+0xc4>
    80007c50:	0340006f          	j	80007c84 <uartputc+0xdc>
    80007c54:	00074703          	lbu	a4,0(a4)
    80007c58:	00f93023          	sd	a5,0(s2)
    80007c5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007c60:	00093783          	ld	a5,0(s2)
    80007c64:	0004b703          	ld	a4,0(s1)
    80007c68:	00f70e63          	beq	a4,a5,80007c84 <uartputc+0xdc>
    80007c6c:	00564683          	lbu	a3,5(a2)
    80007c70:	01f7f713          	andi	a4,a5,31
    80007c74:	00e58733          	add	a4,a1,a4
    80007c78:	0206f693          	andi	a3,a3,32
    80007c7c:	00178793          	addi	a5,a5,1
    80007c80:	fc069ae3          	bnez	a3,80007c54 <uartputc+0xac>
    80007c84:	02813083          	ld	ra,40(sp)
    80007c88:	02013403          	ld	s0,32(sp)
    80007c8c:	01813483          	ld	s1,24(sp)
    80007c90:	01013903          	ld	s2,16(sp)
    80007c94:	00813983          	ld	s3,8(sp)
    80007c98:	03010113          	addi	sp,sp,48
    80007c9c:	00008067          	ret

0000000080007ca0 <uartputc_sync>:
    80007ca0:	ff010113          	addi	sp,sp,-16
    80007ca4:	00813423          	sd	s0,8(sp)
    80007ca8:	01010413          	addi	s0,sp,16
    80007cac:	00004717          	auipc	a4,0x4
    80007cb0:	efc72703          	lw	a4,-260(a4) # 8000bba8 <panicked>
    80007cb4:	02071663          	bnez	a4,80007ce0 <uartputc_sync+0x40>
    80007cb8:	00050793          	mv	a5,a0
    80007cbc:	100006b7          	lui	a3,0x10000
    80007cc0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007cc4:	02077713          	andi	a4,a4,32
    80007cc8:	fe070ce3          	beqz	a4,80007cc0 <uartputc_sync+0x20>
    80007ccc:	0ff7f793          	andi	a5,a5,255
    80007cd0:	00f68023          	sb	a5,0(a3)
    80007cd4:	00813403          	ld	s0,8(sp)
    80007cd8:	01010113          	addi	sp,sp,16
    80007cdc:	00008067          	ret
    80007ce0:	0000006f          	j	80007ce0 <uartputc_sync+0x40>

0000000080007ce4 <uartstart>:
    80007ce4:	ff010113          	addi	sp,sp,-16
    80007ce8:	00813423          	sd	s0,8(sp)
    80007cec:	01010413          	addi	s0,sp,16
    80007cf0:	00004617          	auipc	a2,0x4
    80007cf4:	ec060613          	addi	a2,a2,-320 # 8000bbb0 <uart_tx_r>
    80007cf8:	00004517          	auipc	a0,0x4
    80007cfc:	ec050513          	addi	a0,a0,-320 # 8000bbb8 <uart_tx_w>
    80007d00:	00063783          	ld	a5,0(a2)
    80007d04:	00053703          	ld	a4,0(a0)
    80007d08:	04f70263          	beq	a4,a5,80007d4c <uartstart+0x68>
    80007d0c:	100005b7          	lui	a1,0x10000
    80007d10:	00005817          	auipc	a6,0x5
    80007d14:	19080813          	addi	a6,a6,400 # 8000cea0 <uart_tx_buf>
    80007d18:	01c0006f          	j	80007d34 <uartstart+0x50>
    80007d1c:	0006c703          	lbu	a4,0(a3)
    80007d20:	00f63023          	sd	a5,0(a2)
    80007d24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d28:	00063783          	ld	a5,0(a2)
    80007d2c:	00053703          	ld	a4,0(a0)
    80007d30:	00f70e63          	beq	a4,a5,80007d4c <uartstart+0x68>
    80007d34:	01f7f713          	andi	a4,a5,31
    80007d38:	00e806b3          	add	a3,a6,a4
    80007d3c:	0055c703          	lbu	a4,5(a1)
    80007d40:	00178793          	addi	a5,a5,1
    80007d44:	02077713          	andi	a4,a4,32
    80007d48:	fc071ae3          	bnez	a4,80007d1c <uartstart+0x38>
    80007d4c:	00813403          	ld	s0,8(sp)
    80007d50:	01010113          	addi	sp,sp,16
    80007d54:	00008067          	ret

0000000080007d58 <uartgetc>:
    80007d58:	ff010113          	addi	sp,sp,-16
    80007d5c:	00813423          	sd	s0,8(sp)
    80007d60:	01010413          	addi	s0,sp,16
    80007d64:	10000737          	lui	a4,0x10000
    80007d68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007d6c:	0017f793          	andi	a5,a5,1
    80007d70:	00078c63          	beqz	a5,80007d88 <uartgetc+0x30>
    80007d74:	00074503          	lbu	a0,0(a4)
    80007d78:	0ff57513          	andi	a0,a0,255
    80007d7c:	00813403          	ld	s0,8(sp)
    80007d80:	01010113          	addi	sp,sp,16
    80007d84:	00008067          	ret
    80007d88:	fff00513          	li	a0,-1
    80007d8c:	ff1ff06f          	j	80007d7c <uartgetc+0x24>

0000000080007d90 <uartintr>:
    80007d90:	100007b7          	lui	a5,0x10000
    80007d94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007d98:	0017f793          	andi	a5,a5,1
    80007d9c:	0a078463          	beqz	a5,80007e44 <uartintr+0xb4>
    80007da0:	fe010113          	addi	sp,sp,-32
    80007da4:	00813823          	sd	s0,16(sp)
    80007da8:	00913423          	sd	s1,8(sp)
    80007dac:	00113c23          	sd	ra,24(sp)
    80007db0:	02010413          	addi	s0,sp,32
    80007db4:	100004b7          	lui	s1,0x10000
    80007db8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007dbc:	0ff57513          	andi	a0,a0,255
    80007dc0:	fffff097          	auipc	ra,0xfffff
    80007dc4:	534080e7          	jalr	1332(ra) # 800072f4 <consoleintr>
    80007dc8:	0054c783          	lbu	a5,5(s1)
    80007dcc:	0017f793          	andi	a5,a5,1
    80007dd0:	fe0794e3          	bnez	a5,80007db8 <uartintr+0x28>
    80007dd4:	00004617          	auipc	a2,0x4
    80007dd8:	ddc60613          	addi	a2,a2,-548 # 8000bbb0 <uart_tx_r>
    80007ddc:	00004517          	auipc	a0,0x4
    80007de0:	ddc50513          	addi	a0,a0,-548 # 8000bbb8 <uart_tx_w>
    80007de4:	00063783          	ld	a5,0(a2)
    80007de8:	00053703          	ld	a4,0(a0)
    80007dec:	04f70263          	beq	a4,a5,80007e30 <uartintr+0xa0>
    80007df0:	100005b7          	lui	a1,0x10000
    80007df4:	00005817          	auipc	a6,0x5
    80007df8:	0ac80813          	addi	a6,a6,172 # 8000cea0 <uart_tx_buf>
    80007dfc:	01c0006f          	j	80007e18 <uartintr+0x88>
    80007e00:	0006c703          	lbu	a4,0(a3)
    80007e04:	00f63023          	sd	a5,0(a2)
    80007e08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e0c:	00063783          	ld	a5,0(a2)
    80007e10:	00053703          	ld	a4,0(a0)
    80007e14:	00f70e63          	beq	a4,a5,80007e30 <uartintr+0xa0>
    80007e18:	01f7f713          	andi	a4,a5,31
    80007e1c:	00e806b3          	add	a3,a6,a4
    80007e20:	0055c703          	lbu	a4,5(a1)
    80007e24:	00178793          	addi	a5,a5,1
    80007e28:	02077713          	andi	a4,a4,32
    80007e2c:	fc071ae3          	bnez	a4,80007e00 <uartintr+0x70>
    80007e30:	01813083          	ld	ra,24(sp)
    80007e34:	01013403          	ld	s0,16(sp)
    80007e38:	00813483          	ld	s1,8(sp)
    80007e3c:	02010113          	addi	sp,sp,32
    80007e40:	00008067          	ret
    80007e44:	00004617          	auipc	a2,0x4
    80007e48:	d6c60613          	addi	a2,a2,-660 # 8000bbb0 <uart_tx_r>
    80007e4c:	00004517          	auipc	a0,0x4
    80007e50:	d6c50513          	addi	a0,a0,-660 # 8000bbb8 <uart_tx_w>
    80007e54:	00063783          	ld	a5,0(a2)
    80007e58:	00053703          	ld	a4,0(a0)
    80007e5c:	04f70263          	beq	a4,a5,80007ea0 <uartintr+0x110>
    80007e60:	100005b7          	lui	a1,0x10000
    80007e64:	00005817          	auipc	a6,0x5
    80007e68:	03c80813          	addi	a6,a6,60 # 8000cea0 <uart_tx_buf>
    80007e6c:	01c0006f          	j	80007e88 <uartintr+0xf8>
    80007e70:	0006c703          	lbu	a4,0(a3)
    80007e74:	00f63023          	sd	a5,0(a2)
    80007e78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e7c:	00063783          	ld	a5,0(a2)
    80007e80:	00053703          	ld	a4,0(a0)
    80007e84:	02f70063          	beq	a4,a5,80007ea4 <uartintr+0x114>
    80007e88:	01f7f713          	andi	a4,a5,31
    80007e8c:	00e806b3          	add	a3,a6,a4
    80007e90:	0055c703          	lbu	a4,5(a1)
    80007e94:	00178793          	addi	a5,a5,1
    80007e98:	02077713          	andi	a4,a4,32
    80007e9c:	fc071ae3          	bnez	a4,80007e70 <uartintr+0xe0>
    80007ea0:	00008067          	ret
    80007ea4:	00008067          	ret

0000000080007ea8 <kinit>:
    80007ea8:	fc010113          	addi	sp,sp,-64
    80007eac:	02913423          	sd	s1,40(sp)
    80007eb0:	fffff7b7          	lui	a5,0xfffff
    80007eb4:	00006497          	auipc	s1,0x6
    80007eb8:	00b48493          	addi	s1,s1,11 # 8000debf <end+0xfff>
    80007ebc:	02813823          	sd	s0,48(sp)
    80007ec0:	01313c23          	sd	s3,24(sp)
    80007ec4:	00f4f4b3          	and	s1,s1,a5
    80007ec8:	02113c23          	sd	ra,56(sp)
    80007ecc:	03213023          	sd	s2,32(sp)
    80007ed0:	01413823          	sd	s4,16(sp)
    80007ed4:	01513423          	sd	s5,8(sp)
    80007ed8:	04010413          	addi	s0,sp,64
    80007edc:	000017b7          	lui	a5,0x1
    80007ee0:	01100993          	li	s3,17
    80007ee4:	00f487b3          	add	a5,s1,a5
    80007ee8:	01b99993          	slli	s3,s3,0x1b
    80007eec:	06f9e063          	bltu	s3,a5,80007f4c <kinit+0xa4>
    80007ef0:	00005a97          	auipc	s5,0x5
    80007ef4:	fd0a8a93          	addi	s5,s5,-48 # 8000cec0 <end>
    80007ef8:	0754ec63          	bltu	s1,s5,80007f70 <kinit+0xc8>
    80007efc:	0734fa63          	bgeu	s1,s3,80007f70 <kinit+0xc8>
    80007f00:	00088a37          	lui	s4,0x88
    80007f04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007f08:	00004917          	auipc	s2,0x4
    80007f0c:	cb890913          	addi	s2,s2,-840 # 8000bbc0 <kmem>
    80007f10:	00ca1a13          	slli	s4,s4,0xc
    80007f14:	0140006f          	j	80007f28 <kinit+0x80>
    80007f18:	000017b7          	lui	a5,0x1
    80007f1c:	00f484b3          	add	s1,s1,a5
    80007f20:	0554e863          	bltu	s1,s5,80007f70 <kinit+0xc8>
    80007f24:	0534f663          	bgeu	s1,s3,80007f70 <kinit+0xc8>
    80007f28:	00001637          	lui	a2,0x1
    80007f2c:	00100593          	li	a1,1
    80007f30:	00048513          	mv	a0,s1
    80007f34:	00000097          	auipc	ra,0x0
    80007f38:	5e4080e7          	jalr	1508(ra) # 80008518 <__memset>
    80007f3c:	00093783          	ld	a5,0(s2)
    80007f40:	00f4b023          	sd	a5,0(s1)
    80007f44:	00993023          	sd	s1,0(s2)
    80007f48:	fd4498e3          	bne	s1,s4,80007f18 <kinit+0x70>
    80007f4c:	03813083          	ld	ra,56(sp)
    80007f50:	03013403          	ld	s0,48(sp)
    80007f54:	02813483          	ld	s1,40(sp)
    80007f58:	02013903          	ld	s2,32(sp)
    80007f5c:	01813983          	ld	s3,24(sp)
    80007f60:	01013a03          	ld	s4,16(sp)
    80007f64:	00813a83          	ld	s5,8(sp)
    80007f68:	04010113          	addi	sp,sp,64
    80007f6c:	00008067          	ret
    80007f70:	00002517          	auipc	a0,0x2
    80007f74:	c2050513          	addi	a0,a0,-992 # 80009b90 <digits+0x18>
    80007f78:	fffff097          	auipc	ra,0xfffff
    80007f7c:	4b4080e7          	jalr	1204(ra) # 8000742c <panic>

0000000080007f80 <freerange>:
    80007f80:	fc010113          	addi	sp,sp,-64
    80007f84:	000017b7          	lui	a5,0x1
    80007f88:	02913423          	sd	s1,40(sp)
    80007f8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007f90:	009504b3          	add	s1,a0,s1
    80007f94:	fffff537          	lui	a0,0xfffff
    80007f98:	02813823          	sd	s0,48(sp)
    80007f9c:	02113c23          	sd	ra,56(sp)
    80007fa0:	03213023          	sd	s2,32(sp)
    80007fa4:	01313c23          	sd	s3,24(sp)
    80007fa8:	01413823          	sd	s4,16(sp)
    80007fac:	01513423          	sd	s5,8(sp)
    80007fb0:	01613023          	sd	s6,0(sp)
    80007fb4:	04010413          	addi	s0,sp,64
    80007fb8:	00a4f4b3          	and	s1,s1,a0
    80007fbc:	00f487b3          	add	a5,s1,a5
    80007fc0:	06f5e463          	bltu	a1,a5,80008028 <freerange+0xa8>
    80007fc4:	00005a97          	auipc	s5,0x5
    80007fc8:	efca8a93          	addi	s5,s5,-260 # 8000cec0 <end>
    80007fcc:	0954e263          	bltu	s1,s5,80008050 <freerange+0xd0>
    80007fd0:	01100993          	li	s3,17
    80007fd4:	01b99993          	slli	s3,s3,0x1b
    80007fd8:	0734fc63          	bgeu	s1,s3,80008050 <freerange+0xd0>
    80007fdc:	00058a13          	mv	s4,a1
    80007fe0:	00004917          	auipc	s2,0x4
    80007fe4:	be090913          	addi	s2,s2,-1056 # 8000bbc0 <kmem>
    80007fe8:	00002b37          	lui	s6,0x2
    80007fec:	0140006f          	j	80008000 <freerange+0x80>
    80007ff0:	000017b7          	lui	a5,0x1
    80007ff4:	00f484b3          	add	s1,s1,a5
    80007ff8:	0554ec63          	bltu	s1,s5,80008050 <freerange+0xd0>
    80007ffc:	0534fa63          	bgeu	s1,s3,80008050 <freerange+0xd0>
    80008000:	00001637          	lui	a2,0x1
    80008004:	00100593          	li	a1,1
    80008008:	00048513          	mv	a0,s1
    8000800c:	00000097          	auipc	ra,0x0
    80008010:	50c080e7          	jalr	1292(ra) # 80008518 <__memset>
    80008014:	00093703          	ld	a4,0(s2)
    80008018:	016487b3          	add	a5,s1,s6
    8000801c:	00e4b023          	sd	a4,0(s1)
    80008020:	00993023          	sd	s1,0(s2)
    80008024:	fcfa76e3          	bgeu	s4,a5,80007ff0 <freerange+0x70>
    80008028:	03813083          	ld	ra,56(sp)
    8000802c:	03013403          	ld	s0,48(sp)
    80008030:	02813483          	ld	s1,40(sp)
    80008034:	02013903          	ld	s2,32(sp)
    80008038:	01813983          	ld	s3,24(sp)
    8000803c:	01013a03          	ld	s4,16(sp)
    80008040:	00813a83          	ld	s5,8(sp)
    80008044:	00013b03          	ld	s6,0(sp)
    80008048:	04010113          	addi	sp,sp,64
    8000804c:	00008067          	ret
    80008050:	00002517          	auipc	a0,0x2
    80008054:	b4050513          	addi	a0,a0,-1216 # 80009b90 <digits+0x18>
    80008058:	fffff097          	auipc	ra,0xfffff
    8000805c:	3d4080e7          	jalr	980(ra) # 8000742c <panic>

0000000080008060 <kfree>:
    80008060:	fe010113          	addi	sp,sp,-32
    80008064:	00813823          	sd	s0,16(sp)
    80008068:	00113c23          	sd	ra,24(sp)
    8000806c:	00913423          	sd	s1,8(sp)
    80008070:	02010413          	addi	s0,sp,32
    80008074:	03451793          	slli	a5,a0,0x34
    80008078:	04079c63          	bnez	a5,800080d0 <kfree+0x70>
    8000807c:	00005797          	auipc	a5,0x5
    80008080:	e4478793          	addi	a5,a5,-444 # 8000cec0 <end>
    80008084:	00050493          	mv	s1,a0
    80008088:	04f56463          	bltu	a0,a5,800080d0 <kfree+0x70>
    8000808c:	01100793          	li	a5,17
    80008090:	01b79793          	slli	a5,a5,0x1b
    80008094:	02f57e63          	bgeu	a0,a5,800080d0 <kfree+0x70>
    80008098:	00001637          	lui	a2,0x1
    8000809c:	00100593          	li	a1,1
    800080a0:	00000097          	auipc	ra,0x0
    800080a4:	478080e7          	jalr	1144(ra) # 80008518 <__memset>
    800080a8:	00004797          	auipc	a5,0x4
    800080ac:	b1878793          	addi	a5,a5,-1256 # 8000bbc0 <kmem>
    800080b0:	0007b703          	ld	a4,0(a5)
    800080b4:	01813083          	ld	ra,24(sp)
    800080b8:	01013403          	ld	s0,16(sp)
    800080bc:	00e4b023          	sd	a4,0(s1)
    800080c0:	0097b023          	sd	s1,0(a5)
    800080c4:	00813483          	ld	s1,8(sp)
    800080c8:	02010113          	addi	sp,sp,32
    800080cc:	00008067          	ret
    800080d0:	00002517          	auipc	a0,0x2
    800080d4:	ac050513          	addi	a0,a0,-1344 # 80009b90 <digits+0x18>
    800080d8:	fffff097          	auipc	ra,0xfffff
    800080dc:	354080e7          	jalr	852(ra) # 8000742c <panic>

00000000800080e0 <kalloc>:
    800080e0:	fe010113          	addi	sp,sp,-32
    800080e4:	00813823          	sd	s0,16(sp)
    800080e8:	00913423          	sd	s1,8(sp)
    800080ec:	00113c23          	sd	ra,24(sp)
    800080f0:	02010413          	addi	s0,sp,32
    800080f4:	00004797          	auipc	a5,0x4
    800080f8:	acc78793          	addi	a5,a5,-1332 # 8000bbc0 <kmem>
    800080fc:	0007b483          	ld	s1,0(a5)
    80008100:	02048063          	beqz	s1,80008120 <kalloc+0x40>
    80008104:	0004b703          	ld	a4,0(s1)
    80008108:	00001637          	lui	a2,0x1
    8000810c:	00500593          	li	a1,5
    80008110:	00048513          	mv	a0,s1
    80008114:	00e7b023          	sd	a4,0(a5)
    80008118:	00000097          	auipc	ra,0x0
    8000811c:	400080e7          	jalr	1024(ra) # 80008518 <__memset>
    80008120:	01813083          	ld	ra,24(sp)
    80008124:	01013403          	ld	s0,16(sp)
    80008128:	00048513          	mv	a0,s1
    8000812c:	00813483          	ld	s1,8(sp)
    80008130:	02010113          	addi	sp,sp,32
    80008134:	00008067          	ret

0000000080008138 <initlock>:
    80008138:	ff010113          	addi	sp,sp,-16
    8000813c:	00813423          	sd	s0,8(sp)
    80008140:	01010413          	addi	s0,sp,16
    80008144:	00813403          	ld	s0,8(sp)
    80008148:	00b53423          	sd	a1,8(a0)
    8000814c:	00052023          	sw	zero,0(a0)
    80008150:	00053823          	sd	zero,16(a0)
    80008154:	01010113          	addi	sp,sp,16
    80008158:	00008067          	ret

000000008000815c <acquire>:
    8000815c:	fe010113          	addi	sp,sp,-32
    80008160:	00813823          	sd	s0,16(sp)
    80008164:	00913423          	sd	s1,8(sp)
    80008168:	00113c23          	sd	ra,24(sp)
    8000816c:	01213023          	sd	s2,0(sp)
    80008170:	02010413          	addi	s0,sp,32
    80008174:	00050493          	mv	s1,a0
    80008178:	10002973          	csrr	s2,sstatus
    8000817c:	100027f3          	csrr	a5,sstatus
    80008180:	ffd7f793          	andi	a5,a5,-3
    80008184:	10079073          	csrw	sstatus,a5
    80008188:	fffff097          	auipc	ra,0xfffff
    8000818c:	8e8080e7          	jalr	-1816(ra) # 80006a70 <mycpu>
    80008190:	07852783          	lw	a5,120(a0)
    80008194:	06078e63          	beqz	a5,80008210 <acquire+0xb4>
    80008198:	fffff097          	auipc	ra,0xfffff
    8000819c:	8d8080e7          	jalr	-1832(ra) # 80006a70 <mycpu>
    800081a0:	07852783          	lw	a5,120(a0)
    800081a4:	0004a703          	lw	a4,0(s1)
    800081a8:	0017879b          	addiw	a5,a5,1
    800081ac:	06f52c23          	sw	a5,120(a0)
    800081b0:	04071063          	bnez	a4,800081f0 <acquire+0x94>
    800081b4:	00100713          	li	a4,1
    800081b8:	00070793          	mv	a5,a4
    800081bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800081c0:	0007879b          	sext.w	a5,a5
    800081c4:	fe079ae3          	bnez	a5,800081b8 <acquire+0x5c>
    800081c8:	0ff0000f          	fence
    800081cc:	fffff097          	auipc	ra,0xfffff
    800081d0:	8a4080e7          	jalr	-1884(ra) # 80006a70 <mycpu>
    800081d4:	01813083          	ld	ra,24(sp)
    800081d8:	01013403          	ld	s0,16(sp)
    800081dc:	00a4b823          	sd	a0,16(s1)
    800081e0:	00013903          	ld	s2,0(sp)
    800081e4:	00813483          	ld	s1,8(sp)
    800081e8:	02010113          	addi	sp,sp,32
    800081ec:	00008067          	ret
    800081f0:	0104b903          	ld	s2,16(s1)
    800081f4:	fffff097          	auipc	ra,0xfffff
    800081f8:	87c080e7          	jalr	-1924(ra) # 80006a70 <mycpu>
    800081fc:	faa91ce3          	bne	s2,a0,800081b4 <acquire+0x58>
    80008200:	00002517          	auipc	a0,0x2
    80008204:	99850513          	addi	a0,a0,-1640 # 80009b98 <digits+0x20>
    80008208:	fffff097          	auipc	ra,0xfffff
    8000820c:	224080e7          	jalr	548(ra) # 8000742c <panic>
    80008210:	00195913          	srli	s2,s2,0x1
    80008214:	fffff097          	auipc	ra,0xfffff
    80008218:	85c080e7          	jalr	-1956(ra) # 80006a70 <mycpu>
    8000821c:	00197913          	andi	s2,s2,1
    80008220:	07252e23          	sw	s2,124(a0)
    80008224:	f75ff06f          	j	80008198 <acquire+0x3c>

0000000080008228 <release>:
    80008228:	fe010113          	addi	sp,sp,-32
    8000822c:	00813823          	sd	s0,16(sp)
    80008230:	00113c23          	sd	ra,24(sp)
    80008234:	00913423          	sd	s1,8(sp)
    80008238:	01213023          	sd	s2,0(sp)
    8000823c:	02010413          	addi	s0,sp,32
    80008240:	00052783          	lw	a5,0(a0)
    80008244:	00079a63          	bnez	a5,80008258 <release+0x30>
    80008248:	00002517          	auipc	a0,0x2
    8000824c:	95850513          	addi	a0,a0,-1704 # 80009ba0 <digits+0x28>
    80008250:	fffff097          	auipc	ra,0xfffff
    80008254:	1dc080e7          	jalr	476(ra) # 8000742c <panic>
    80008258:	01053903          	ld	s2,16(a0)
    8000825c:	00050493          	mv	s1,a0
    80008260:	fffff097          	auipc	ra,0xfffff
    80008264:	810080e7          	jalr	-2032(ra) # 80006a70 <mycpu>
    80008268:	fea910e3          	bne	s2,a0,80008248 <release+0x20>
    8000826c:	0004b823          	sd	zero,16(s1)
    80008270:	0ff0000f          	fence
    80008274:	0f50000f          	fence	iorw,ow
    80008278:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000827c:	ffffe097          	auipc	ra,0xffffe
    80008280:	7f4080e7          	jalr	2036(ra) # 80006a70 <mycpu>
    80008284:	100027f3          	csrr	a5,sstatus
    80008288:	0027f793          	andi	a5,a5,2
    8000828c:	04079a63          	bnez	a5,800082e0 <release+0xb8>
    80008290:	07852783          	lw	a5,120(a0)
    80008294:	02f05e63          	blez	a5,800082d0 <release+0xa8>
    80008298:	fff7871b          	addiw	a4,a5,-1
    8000829c:	06e52c23          	sw	a4,120(a0)
    800082a0:	00071c63          	bnez	a4,800082b8 <release+0x90>
    800082a4:	07c52783          	lw	a5,124(a0)
    800082a8:	00078863          	beqz	a5,800082b8 <release+0x90>
    800082ac:	100027f3          	csrr	a5,sstatus
    800082b0:	0027e793          	ori	a5,a5,2
    800082b4:	10079073          	csrw	sstatus,a5
    800082b8:	01813083          	ld	ra,24(sp)
    800082bc:	01013403          	ld	s0,16(sp)
    800082c0:	00813483          	ld	s1,8(sp)
    800082c4:	00013903          	ld	s2,0(sp)
    800082c8:	02010113          	addi	sp,sp,32
    800082cc:	00008067          	ret
    800082d0:	00002517          	auipc	a0,0x2
    800082d4:	8f050513          	addi	a0,a0,-1808 # 80009bc0 <digits+0x48>
    800082d8:	fffff097          	auipc	ra,0xfffff
    800082dc:	154080e7          	jalr	340(ra) # 8000742c <panic>
    800082e0:	00002517          	auipc	a0,0x2
    800082e4:	8c850513          	addi	a0,a0,-1848 # 80009ba8 <digits+0x30>
    800082e8:	fffff097          	auipc	ra,0xfffff
    800082ec:	144080e7          	jalr	324(ra) # 8000742c <panic>

00000000800082f0 <holding>:
    800082f0:	00052783          	lw	a5,0(a0)
    800082f4:	00079663          	bnez	a5,80008300 <holding+0x10>
    800082f8:	00000513          	li	a0,0
    800082fc:	00008067          	ret
    80008300:	fe010113          	addi	sp,sp,-32
    80008304:	00813823          	sd	s0,16(sp)
    80008308:	00913423          	sd	s1,8(sp)
    8000830c:	00113c23          	sd	ra,24(sp)
    80008310:	02010413          	addi	s0,sp,32
    80008314:	01053483          	ld	s1,16(a0)
    80008318:	ffffe097          	auipc	ra,0xffffe
    8000831c:	758080e7          	jalr	1880(ra) # 80006a70 <mycpu>
    80008320:	01813083          	ld	ra,24(sp)
    80008324:	01013403          	ld	s0,16(sp)
    80008328:	40a48533          	sub	a0,s1,a0
    8000832c:	00153513          	seqz	a0,a0
    80008330:	00813483          	ld	s1,8(sp)
    80008334:	02010113          	addi	sp,sp,32
    80008338:	00008067          	ret

000000008000833c <push_off>:
    8000833c:	fe010113          	addi	sp,sp,-32
    80008340:	00813823          	sd	s0,16(sp)
    80008344:	00113c23          	sd	ra,24(sp)
    80008348:	00913423          	sd	s1,8(sp)
    8000834c:	02010413          	addi	s0,sp,32
    80008350:	100024f3          	csrr	s1,sstatus
    80008354:	100027f3          	csrr	a5,sstatus
    80008358:	ffd7f793          	andi	a5,a5,-3
    8000835c:	10079073          	csrw	sstatus,a5
    80008360:	ffffe097          	auipc	ra,0xffffe
    80008364:	710080e7          	jalr	1808(ra) # 80006a70 <mycpu>
    80008368:	07852783          	lw	a5,120(a0)
    8000836c:	02078663          	beqz	a5,80008398 <push_off+0x5c>
    80008370:	ffffe097          	auipc	ra,0xffffe
    80008374:	700080e7          	jalr	1792(ra) # 80006a70 <mycpu>
    80008378:	07852783          	lw	a5,120(a0)
    8000837c:	01813083          	ld	ra,24(sp)
    80008380:	01013403          	ld	s0,16(sp)
    80008384:	0017879b          	addiw	a5,a5,1
    80008388:	06f52c23          	sw	a5,120(a0)
    8000838c:	00813483          	ld	s1,8(sp)
    80008390:	02010113          	addi	sp,sp,32
    80008394:	00008067          	ret
    80008398:	0014d493          	srli	s1,s1,0x1
    8000839c:	ffffe097          	auipc	ra,0xffffe
    800083a0:	6d4080e7          	jalr	1748(ra) # 80006a70 <mycpu>
    800083a4:	0014f493          	andi	s1,s1,1
    800083a8:	06952e23          	sw	s1,124(a0)
    800083ac:	fc5ff06f          	j	80008370 <push_off+0x34>

00000000800083b0 <pop_off>:
    800083b0:	ff010113          	addi	sp,sp,-16
    800083b4:	00813023          	sd	s0,0(sp)
    800083b8:	00113423          	sd	ra,8(sp)
    800083bc:	01010413          	addi	s0,sp,16
    800083c0:	ffffe097          	auipc	ra,0xffffe
    800083c4:	6b0080e7          	jalr	1712(ra) # 80006a70 <mycpu>
    800083c8:	100027f3          	csrr	a5,sstatus
    800083cc:	0027f793          	andi	a5,a5,2
    800083d0:	04079663          	bnez	a5,8000841c <pop_off+0x6c>
    800083d4:	07852783          	lw	a5,120(a0)
    800083d8:	02f05a63          	blez	a5,8000840c <pop_off+0x5c>
    800083dc:	fff7871b          	addiw	a4,a5,-1
    800083e0:	06e52c23          	sw	a4,120(a0)
    800083e4:	00071c63          	bnez	a4,800083fc <pop_off+0x4c>
    800083e8:	07c52783          	lw	a5,124(a0)
    800083ec:	00078863          	beqz	a5,800083fc <pop_off+0x4c>
    800083f0:	100027f3          	csrr	a5,sstatus
    800083f4:	0027e793          	ori	a5,a5,2
    800083f8:	10079073          	csrw	sstatus,a5
    800083fc:	00813083          	ld	ra,8(sp)
    80008400:	00013403          	ld	s0,0(sp)
    80008404:	01010113          	addi	sp,sp,16
    80008408:	00008067          	ret
    8000840c:	00001517          	auipc	a0,0x1
    80008410:	7b450513          	addi	a0,a0,1972 # 80009bc0 <digits+0x48>
    80008414:	fffff097          	auipc	ra,0xfffff
    80008418:	018080e7          	jalr	24(ra) # 8000742c <panic>
    8000841c:	00001517          	auipc	a0,0x1
    80008420:	78c50513          	addi	a0,a0,1932 # 80009ba8 <digits+0x30>
    80008424:	fffff097          	auipc	ra,0xfffff
    80008428:	008080e7          	jalr	8(ra) # 8000742c <panic>

000000008000842c <push_on>:
    8000842c:	fe010113          	addi	sp,sp,-32
    80008430:	00813823          	sd	s0,16(sp)
    80008434:	00113c23          	sd	ra,24(sp)
    80008438:	00913423          	sd	s1,8(sp)
    8000843c:	02010413          	addi	s0,sp,32
    80008440:	100024f3          	csrr	s1,sstatus
    80008444:	100027f3          	csrr	a5,sstatus
    80008448:	0027e793          	ori	a5,a5,2
    8000844c:	10079073          	csrw	sstatus,a5
    80008450:	ffffe097          	auipc	ra,0xffffe
    80008454:	620080e7          	jalr	1568(ra) # 80006a70 <mycpu>
    80008458:	07852783          	lw	a5,120(a0)
    8000845c:	02078663          	beqz	a5,80008488 <push_on+0x5c>
    80008460:	ffffe097          	auipc	ra,0xffffe
    80008464:	610080e7          	jalr	1552(ra) # 80006a70 <mycpu>
    80008468:	07852783          	lw	a5,120(a0)
    8000846c:	01813083          	ld	ra,24(sp)
    80008470:	01013403          	ld	s0,16(sp)
    80008474:	0017879b          	addiw	a5,a5,1
    80008478:	06f52c23          	sw	a5,120(a0)
    8000847c:	00813483          	ld	s1,8(sp)
    80008480:	02010113          	addi	sp,sp,32
    80008484:	00008067          	ret
    80008488:	0014d493          	srli	s1,s1,0x1
    8000848c:	ffffe097          	auipc	ra,0xffffe
    80008490:	5e4080e7          	jalr	1508(ra) # 80006a70 <mycpu>
    80008494:	0014f493          	andi	s1,s1,1
    80008498:	06952e23          	sw	s1,124(a0)
    8000849c:	fc5ff06f          	j	80008460 <push_on+0x34>

00000000800084a0 <pop_on>:
    800084a0:	ff010113          	addi	sp,sp,-16
    800084a4:	00813023          	sd	s0,0(sp)
    800084a8:	00113423          	sd	ra,8(sp)
    800084ac:	01010413          	addi	s0,sp,16
    800084b0:	ffffe097          	auipc	ra,0xffffe
    800084b4:	5c0080e7          	jalr	1472(ra) # 80006a70 <mycpu>
    800084b8:	100027f3          	csrr	a5,sstatus
    800084bc:	0027f793          	andi	a5,a5,2
    800084c0:	04078463          	beqz	a5,80008508 <pop_on+0x68>
    800084c4:	07852783          	lw	a5,120(a0)
    800084c8:	02f05863          	blez	a5,800084f8 <pop_on+0x58>
    800084cc:	fff7879b          	addiw	a5,a5,-1
    800084d0:	06f52c23          	sw	a5,120(a0)
    800084d4:	07853783          	ld	a5,120(a0)
    800084d8:	00079863          	bnez	a5,800084e8 <pop_on+0x48>
    800084dc:	100027f3          	csrr	a5,sstatus
    800084e0:	ffd7f793          	andi	a5,a5,-3
    800084e4:	10079073          	csrw	sstatus,a5
    800084e8:	00813083          	ld	ra,8(sp)
    800084ec:	00013403          	ld	s0,0(sp)
    800084f0:	01010113          	addi	sp,sp,16
    800084f4:	00008067          	ret
    800084f8:	00001517          	auipc	a0,0x1
    800084fc:	6f050513          	addi	a0,a0,1776 # 80009be8 <digits+0x70>
    80008500:	fffff097          	auipc	ra,0xfffff
    80008504:	f2c080e7          	jalr	-212(ra) # 8000742c <panic>
    80008508:	00001517          	auipc	a0,0x1
    8000850c:	6c050513          	addi	a0,a0,1728 # 80009bc8 <digits+0x50>
    80008510:	fffff097          	auipc	ra,0xfffff
    80008514:	f1c080e7          	jalr	-228(ra) # 8000742c <panic>

0000000080008518 <__memset>:
    80008518:	ff010113          	addi	sp,sp,-16
    8000851c:	00813423          	sd	s0,8(sp)
    80008520:	01010413          	addi	s0,sp,16
    80008524:	1a060e63          	beqz	a2,800086e0 <__memset+0x1c8>
    80008528:	40a007b3          	neg	a5,a0
    8000852c:	0077f793          	andi	a5,a5,7
    80008530:	00778693          	addi	a3,a5,7
    80008534:	00b00813          	li	a6,11
    80008538:	0ff5f593          	andi	a1,a1,255
    8000853c:	fff6071b          	addiw	a4,a2,-1
    80008540:	1b06e663          	bltu	a3,a6,800086ec <__memset+0x1d4>
    80008544:	1cd76463          	bltu	a4,a3,8000870c <__memset+0x1f4>
    80008548:	1a078e63          	beqz	a5,80008704 <__memset+0x1ec>
    8000854c:	00b50023          	sb	a1,0(a0)
    80008550:	00100713          	li	a4,1
    80008554:	1ae78463          	beq	a5,a4,800086fc <__memset+0x1e4>
    80008558:	00b500a3          	sb	a1,1(a0)
    8000855c:	00200713          	li	a4,2
    80008560:	1ae78a63          	beq	a5,a4,80008714 <__memset+0x1fc>
    80008564:	00b50123          	sb	a1,2(a0)
    80008568:	00300713          	li	a4,3
    8000856c:	18e78463          	beq	a5,a4,800086f4 <__memset+0x1dc>
    80008570:	00b501a3          	sb	a1,3(a0)
    80008574:	00400713          	li	a4,4
    80008578:	1ae78263          	beq	a5,a4,8000871c <__memset+0x204>
    8000857c:	00b50223          	sb	a1,4(a0)
    80008580:	00500713          	li	a4,5
    80008584:	1ae78063          	beq	a5,a4,80008724 <__memset+0x20c>
    80008588:	00b502a3          	sb	a1,5(a0)
    8000858c:	00700713          	li	a4,7
    80008590:	18e79e63          	bne	a5,a4,8000872c <__memset+0x214>
    80008594:	00b50323          	sb	a1,6(a0)
    80008598:	00700e93          	li	t4,7
    8000859c:	00859713          	slli	a4,a1,0x8
    800085a0:	00e5e733          	or	a4,a1,a4
    800085a4:	01059e13          	slli	t3,a1,0x10
    800085a8:	01c76e33          	or	t3,a4,t3
    800085ac:	01859313          	slli	t1,a1,0x18
    800085b0:	006e6333          	or	t1,t3,t1
    800085b4:	02059893          	slli	a7,a1,0x20
    800085b8:	40f60e3b          	subw	t3,a2,a5
    800085bc:	011368b3          	or	a7,t1,a7
    800085c0:	02859813          	slli	a6,a1,0x28
    800085c4:	0108e833          	or	a6,a7,a6
    800085c8:	03059693          	slli	a3,a1,0x30
    800085cc:	003e589b          	srliw	a7,t3,0x3
    800085d0:	00d866b3          	or	a3,a6,a3
    800085d4:	03859713          	slli	a4,a1,0x38
    800085d8:	00389813          	slli	a6,a7,0x3
    800085dc:	00f507b3          	add	a5,a0,a5
    800085e0:	00e6e733          	or	a4,a3,a4
    800085e4:	000e089b          	sext.w	a7,t3
    800085e8:	00f806b3          	add	a3,a6,a5
    800085ec:	00e7b023          	sd	a4,0(a5)
    800085f0:	00878793          	addi	a5,a5,8
    800085f4:	fed79ce3          	bne	a5,a3,800085ec <__memset+0xd4>
    800085f8:	ff8e7793          	andi	a5,t3,-8
    800085fc:	0007871b          	sext.w	a4,a5
    80008600:	01d787bb          	addw	a5,a5,t4
    80008604:	0ce88e63          	beq	a7,a4,800086e0 <__memset+0x1c8>
    80008608:	00f50733          	add	a4,a0,a5
    8000860c:	00b70023          	sb	a1,0(a4)
    80008610:	0017871b          	addiw	a4,a5,1
    80008614:	0cc77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008618:	00e50733          	add	a4,a0,a4
    8000861c:	00b70023          	sb	a1,0(a4)
    80008620:	0027871b          	addiw	a4,a5,2
    80008624:	0ac77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008628:	00e50733          	add	a4,a0,a4
    8000862c:	00b70023          	sb	a1,0(a4)
    80008630:	0037871b          	addiw	a4,a5,3
    80008634:	0ac77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008638:	00e50733          	add	a4,a0,a4
    8000863c:	00b70023          	sb	a1,0(a4)
    80008640:	0047871b          	addiw	a4,a5,4
    80008644:	08c77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008648:	00e50733          	add	a4,a0,a4
    8000864c:	00b70023          	sb	a1,0(a4)
    80008650:	0057871b          	addiw	a4,a5,5
    80008654:	08c77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008658:	00e50733          	add	a4,a0,a4
    8000865c:	00b70023          	sb	a1,0(a4)
    80008660:	0067871b          	addiw	a4,a5,6
    80008664:	06c77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008668:	00e50733          	add	a4,a0,a4
    8000866c:	00b70023          	sb	a1,0(a4)
    80008670:	0077871b          	addiw	a4,a5,7
    80008674:	06c77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008678:	00e50733          	add	a4,a0,a4
    8000867c:	00b70023          	sb	a1,0(a4)
    80008680:	0087871b          	addiw	a4,a5,8
    80008684:	04c77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00b70023          	sb	a1,0(a4)
    80008690:	0097871b          	addiw	a4,a5,9
    80008694:	04c77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    80008698:	00e50733          	add	a4,a0,a4
    8000869c:	00b70023          	sb	a1,0(a4)
    800086a0:	00a7871b          	addiw	a4,a5,10
    800086a4:	02c77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    800086a8:	00e50733          	add	a4,a0,a4
    800086ac:	00b70023          	sb	a1,0(a4)
    800086b0:	00b7871b          	addiw	a4,a5,11
    800086b4:	02c77663          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    800086b8:	00e50733          	add	a4,a0,a4
    800086bc:	00b70023          	sb	a1,0(a4)
    800086c0:	00c7871b          	addiw	a4,a5,12
    800086c4:	00c77e63          	bgeu	a4,a2,800086e0 <__memset+0x1c8>
    800086c8:	00e50733          	add	a4,a0,a4
    800086cc:	00b70023          	sb	a1,0(a4)
    800086d0:	00d7879b          	addiw	a5,a5,13
    800086d4:	00c7f663          	bgeu	a5,a2,800086e0 <__memset+0x1c8>
    800086d8:	00f507b3          	add	a5,a0,a5
    800086dc:	00b78023          	sb	a1,0(a5)
    800086e0:	00813403          	ld	s0,8(sp)
    800086e4:	01010113          	addi	sp,sp,16
    800086e8:	00008067          	ret
    800086ec:	00b00693          	li	a3,11
    800086f0:	e55ff06f          	j	80008544 <__memset+0x2c>
    800086f4:	00300e93          	li	t4,3
    800086f8:	ea5ff06f          	j	8000859c <__memset+0x84>
    800086fc:	00100e93          	li	t4,1
    80008700:	e9dff06f          	j	8000859c <__memset+0x84>
    80008704:	00000e93          	li	t4,0
    80008708:	e95ff06f          	j	8000859c <__memset+0x84>
    8000870c:	00000793          	li	a5,0
    80008710:	ef9ff06f          	j	80008608 <__memset+0xf0>
    80008714:	00200e93          	li	t4,2
    80008718:	e85ff06f          	j	8000859c <__memset+0x84>
    8000871c:	00400e93          	li	t4,4
    80008720:	e7dff06f          	j	8000859c <__memset+0x84>
    80008724:	00500e93          	li	t4,5
    80008728:	e75ff06f          	j	8000859c <__memset+0x84>
    8000872c:	00600e93          	li	t4,6
    80008730:	e6dff06f          	j	8000859c <__memset+0x84>

0000000080008734 <__memmove>:
    80008734:	ff010113          	addi	sp,sp,-16
    80008738:	00813423          	sd	s0,8(sp)
    8000873c:	01010413          	addi	s0,sp,16
    80008740:	0e060863          	beqz	a2,80008830 <__memmove+0xfc>
    80008744:	fff6069b          	addiw	a3,a2,-1
    80008748:	0006881b          	sext.w	a6,a3
    8000874c:	0ea5e863          	bltu	a1,a0,8000883c <__memmove+0x108>
    80008750:	00758713          	addi	a4,a1,7
    80008754:	00a5e7b3          	or	a5,a1,a0
    80008758:	40a70733          	sub	a4,a4,a0
    8000875c:	0077f793          	andi	a5,a5,7
    80008760:	00f73713          	sltiu	a4,a4,15
    80008764:	00174713          	xori	a4,a4,1
    80008768:	0017b793          	seqz	a5,a5
    8000876c:	00e7f7b3          	and	a5,a5,a4
    80008770:	10078863          	beqz	a5,80008880 <__memmove+0x14c>
    80008774:	00900793          	li	a5,9
    80008778:	1107f463          	bgeu	a5,a6,80008880 <__memmove+0x14c>
    8000877c:	0036581b          	srliw	a6,a2,0x3
    80008780:	fff8081b          	addiw	a6,a6,-1
    80008784:	02081813          	slli	a6,a6,0x20
    80008788:	01d85893          	srli	a7,a6,0x1d
    8000878c:	00858813          	addi	a6,a1,8
    80008790:	00058793          	mv	a5,a1
    80008794:	00050713          	mv	a4,a0
    80008798:	01088833          	add	a6,a7,a6
    8000879c:	0007b883          	ld	a7,0(a5)
    800087a0:	00878793          	addi	a5,a5,8
    800087a4:	00870713          	addi	a4,a4,8
    800087a8:	ff173c23          	sd	a7,-8(a4)
    800087ac:	ff0798e3          	bne	a5,a6,8000879c <__memmove+0x68>
    800087b0:	ff867713          	andi	a4,a2,-8
    800087b4:	02071793          	slli	a5,a4,0x20
    800087b8:	0207d793          	srli	a5,a5,0x20
    800087bc:	00f585b3          	add	a1,a1,a5
    800087c0:	40e686bb          	subw	a3,a3,a4
    800087c4:	00f507b3          	add	a5,a0,a5
    800087c8:	06e60463          	beq	a2,a4,80008830 <__memmove+0xfc>
    800087cc:	0005c703          	lbu	a4,0(a1)
    800087d0:	00e78023          	sb	a4,0(a5)
    800087d4:	04068e63          	beqz	a3,80008830 <__memmove+0xfc>
    800087d8:	0015c603          	lbu	a2,1(a1)
    800087dc:	00100713          	li	a4,1
    800087e0:	00c780a3          	sb	a2,1(a5)
    800087e4:	04e68663          	beq	a3,a4,80008830 <__memmove+0xfc>
    800087e8:	0025c603          	lbu	a2,2(a1)
    800087ec:	00200713          	li	a4,2
    800087f0:	00c78123          	sb	a2,2(a5)
    800087f4:	02e68e63          	beq	a3,a4,80008830 <__memmove+0xfc>
    800087f8:	0035c603          	lbu	a2,3(a1)
    800087fc:	00300713          	li	a4,3
    80008800:	00c781a3          	sb	a2,3(a5)
    80008804:	02e68663          	beq	a3,a4,80008830 <__memmove+0xfc>
    80008808:	0045c603          	lbu	a2,4(a1)
    8000880c:	00400713          	li	a4,4
    80008810:	00c78223          	sb	a2,4(a5)
    80008814:	00e68e63          	beq	a3,a4,80008830 <__memmove+0xfc>
    80008818:	0055c603          	lbu	a2,5(a1)
    8000881c:	00500713          	li	a4,5
    80008820:	00c782a3          	sb	a2,5(a5)
    80008824:	00e68663          	beq	a3,a4,80008830 <__memmove+0xfc>
    80008828:	0065c703          	lbu	a4,6(a1)
    8000882c:	00e78323          	sb	a4,6(a5)
    80008830:	00813403          	ld	s0,8(sp)
    80008834:	01010113          	addi	sp,sp,16
    80008838:	00008067          	ret
    8000883c:	02061713          	slli	a4,a2,0x20
    80008840:	02075713          	srli	a4,a4,0x20
    80008844:	00e587b3          	add	a5,a1,a4
    80008848:	f0f574e3          	bgeu	a0,a5,80008750 <__memmove+0x1c>
    8000884c:	02069613          	slli	a2,a3,0x20
    80008850:	02065613          	srli	a2,a2,0x20
    80008854:	fff64613          	not	a2,a2
    80008858:	00e50733          	add	a4,a0,a4
    8000885c:	00c78633          	add	a2,a5,a2
    80008860:	fff7c683          	lbu	a3,-1(a5)
    80008864:	fff78793          	addi	a5,a5,-1
    80008868:	fff70713          	addi	a4,a4,-1
    8000886c:	00d70023          	sb	a3,0(a4)
    80008870:	fec798e3          	bne	a5,a2,80008860 <__memmove+0x12c>
    80008874:	00813403          	ld	s0,8(sp)
    80008878:	01010113          	addi	sp,sp,16
    8000887c:	00008067          	ret
    80008880:	02069713          	slli	a4,a3,0x20
    80008884:	02075713          	srli	a4,a4,0x20
    80008888:	00170713          	addi	a4,a4,1
    8000888c:	00e50733          	add	a4,a0,a4
    80008890:	00050793          	mv	a5,a0
    80008894:	0005c683          	lbu	a3,0(a1)
    80008898:	00178793          	addi	a5,a5,1
    8000889c:	00158593          	addi	a1,a1,1
    800088a0:	fed78fa3          	sb	a3,-1(a5)
    800088a4:	fee798e3          	bne	a5,a4,80008894 <__memmove+0x160>
    800088a8:	f89ff06f          	j	80008830 <__memmove+0xfc>

00000000800088ac <__putc>:
    800088ac:	fe010113          	addi	sp,sp,-32
    800088b0:	00813823          	sd	s0,16(sp)
    800088b4:	00113c23          	sd	ra,24(sp)
    800088b8:	02010413          	addi	s0,sp,32
    800088bc:	00050793          	mv	a5,a0
    800088c0:	fef40593          	addi	a1,s0,-17
    800088c4:	00100613          	li	a2,1
    800088c8:	00000513          	li	a0,0
    800088cc:	fef407a3          	sb	a5,-17(s0)
    800088d0:	fffff097          	auipc	ra,0xfffff
    800088d4:	b3c080e7          	jalr	-1220(ra) # 8000740c <console_write>
    800088d8:	01813083          	ld	ra,24(sp)
    800088dc:	01013403          	ld	s0,16(sp)
    800088e0:	02010113          	addi	sp,sp,32
    800088e4:	00008067          	ret

00000000800088e8 <__getc>:
    800088e8:	fe010113          	addi	sp,sp,-32
    800088ec:	00813823          	sd	s0,16(sp)
    800088f0:	00113c23          	sd	ra,24(sp)
    800088f4:	02010413          	addi	s0,sp,32
    800088f8:	fe840593          	addi	a1,s0,-24
    800088fc:	00100613          	li	a2,1
    80008900:	00000513          	li	a0,0
    80008904:	fffff097          	auipc	ra,0xfffff
    80008908:	ae8080e7          	jalr	-1304(ra) # 800073ec <console_read>
    8000890c:	fe844503          	lbu	a0,-24(s0)
    80008910:	01813083          	ld	ra,24(sp)
    80008914:	01013403          	ld	s0,16(sp)
    80008918:	02010113          	addi	sp,sp,32
    8000891c:	00008067          	ret

0000000080008920 <console_handler>:
    80008920:	fe010113          	addi	sp,sp,-32
    80008924:	00813823          	sd	s0,16(sp)
    80008928:	00113c23          	sd	ra,24(sp)
    8000892c:	00913423          	sd	s1,8(sp)
    80008930:	02010413          	addi	s0,sp,32
    80008934:	14202773          	csrr	a4,scause
    80008938:	100027f3          	csrr	a5,sstatus
    8000893c:	0027f793          	andi	a5,a5,2
    80008940:	06079e63          	bnez	a5,800089bc <console_handler+0x9c>
    80008944:	00074c63          	bltz	a4,8000895c <console_handler+0x3c>
    80008948:	01813083          	ld	ra,24(sp)
    8000894c:	01013403          	ld	s0,16(sp)
    80008950:	00813483          	ld	s1,8(sp)
    80008954:	02010113          	addi	sp,sp,32
    80008958:	00008067          	ret
    8000895c:	0ff77713          	andi	a4,a4,255
    80008960:	00900793          	li	a5,9
    80008964:	fef712e3          	bne	a4,a5,80008948 <console_handler+0x28>
    80008968:	ffffe097          	auipc	ra,0xffffe
    8000896c:	6dc080e7          	jalr	1756(ra) # 80007044 <plic_claim>
    80008970:	00a00793          	li	a5,10
    80008974:	00050493          	mv	s1,a0
    80008978:	02f50c63          	beq	a0,a5,800089b0 <console_handler+0x90>
    8000897c:	fc0506e3          	beqz	a0,80008948 <console_handler+0x28>
    80008980:	00050593          	mv	a1,a0
    80008984:	00001517          	auipc	a0,0x1
    80008988:	16c50513          	addi	a0,a0,364 # 80009af0 <_ZZ12printIntegermE6digits+0x558>
    8000898c:	fffff097          	auipc	ra,0xfffff
    80008990:	afc080e7          	jalr	-1284(ra) # 80007488 <__printf>
    80008994:	01013403          	ld	s0,16(sp)
    80008998:	01813083          	ld	ra,24(sp)
    8000899c:	00048513          	mv	a0,s1
    800089a0:	00813483          	ld	s1,8(sp)
    800089a4:	02010113          	addi	sp,sp,32
    800089a8:	ffffe317          	auipc	t1,0xffffe
    800089ac:	6d430067          	jr	1748(t1) # 8000707c <plic_complete>
    800089b0:	fffff097          	auipc	ra,0xfffff
    800089b4:	3e0080e7          	jalr	992(ra) # 80007d90 <uartintr>
    800089b8:	fddff06f          	j	80008994 <console_handler+0x74>
    800089bc:	00001517          	auipc	a0,0x1
    800089c0:	23450513          	addi	a0,a0,564 # 80009bf0 <digits+0x78>
    800089c4:	fffff097          	auipc	ra,0xfffff
    800089c8:	a68080e7          	jalr	-1432(ra) # 8000742c <panic>
	...
