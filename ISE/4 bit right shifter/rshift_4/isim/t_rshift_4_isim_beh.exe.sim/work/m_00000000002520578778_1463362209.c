/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "data[0] = %d \tdata[1] = %d \tdata[2] = %d \tdata[3] = %d \tsel[0] = %d \tsel[1] = %d, \tout[0]= %d \tout[1] =%d \tout[2] = %d \tout[3] =%d";
static const char *ng1 = "F:/BTECH/Mini Project/Barell shifter/ISE/4 bit right shifter/rshift_4/t_rshift_4.v";
static int ng2[] = {0, 0};
static int ng3[] = {1000, 0};
static int ng4[] = {1, 0};
static int ng5[] = {10, 0};
static int ng6[] = {11, 0};

void Monitor_52_1(char *);
void Monitor_52_1(char *);


static void Monitor_52_1_Func(char *t0)
{
    char t4[8];
    char t16[8];
    char t28[8];
    char t40[8];
    char t52[8];
    char t64[8];
    char t75[8];
    char t85[8];
    char t95[8];
    char t105[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    char *t63;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    char *t104;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;

LAB0:    t1 = (t0 + 1448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t6 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t5) = t12;
    t13 = (t0 + 1448);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memset(t16, 0, 8);
    t17 = (t16 + 4);
    t18 = (t15 + 4);
    t19 = *((unsigned int *)t15);
    t20 = (t19 >> 1);
    t21 = (t20 & 1);
    *((unsigned int *)t16) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 1);
    t24 = (t23 & 1);
    *((unsigned int *)t17) = t24;
    t25 = (t0 + 1448);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memset(t28, 0, 8);
    t29 = (t28 + 4);
    t30 = (t27 + 4);
    t31 = *((unsigned int *)t27);
    t32 = (t31 >> 2);
    t33 = (t32 & 1);
    *((unsigned int *)t28) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 >> 2);
    t36 = (t35 & 1);
    *((unsigned int *)t29) = t36;
    t37 = (t0 + 1448);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memset(t40, 0, 8);
    t41 = (t40 + 4);
    t42 = (t39 + 4);
    t43 = *((unsigned int *)t39);
    t44 = (t43 >> 3);
    t45 = (t44 & 1);
    *((unsigned int *)t40) = t45;
    t46 = *((unsigned int *)t42);
    t47 = (t46 >> 3);
    t48 = (t47 & 1);
    *((unsigned int *)t41) = t48;
    t49 = (t0 + 1608);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    memset(t52, 0, 8);
    t53 = (t52 + 4);
    t54 = (t51 + 4);
    t55 = *((unsigned int *)t51);
    t56 = (t55 >> 0);
    t57 = (t56 & 1);
    *((unsigned int *)t52) = t57;
    t58 = *((unsigned int *)t54);
    t59 = (t58 >> 0);
    t60 = (t59 & 1);
    *((unsigned int *)t53) = t60;
    t61 = (t0 + 1608);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    memset(t64, 0, 8);
    t65 = (t64 + 4);
    t66 = (t63 + 4);
    t67 = *((unsigned int *)t63);
    t68 = (t67 >> 1);
    t69 = (t68 & 1);
    *((unsigned int *)t64) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 >> 1);
    t72 = (t71 & 1);
    *((unsigned int *)t65) = t72;
    t73 = (t0 + 1048U);
    t74 = *((char **)t73);
    memset(t75, 0, 8);
    t73 = (t75 + 4);
    t76 = (t74 + 4);
    t77 = *((unsigned int *)t74);
    t78 = (t77 >> 0);
    t79 = (t78 & 1);
    *((unsigned int *)t75) = t79;
    t80 = *((unsigned int *)t76);
    t81 = (t80 >> 0);
    t82 = (t81 & 1);
    *((unsigned int *)t73) = t82;
    t83 = (t0 + 1048U);
    t84 = *((char **)t83);
    memset(t85, 0, 8);
    t83 = (t85 + 4);
    t86 = (t84 + 4);
    t87 = *((unsigned int *)t84);
    t88 = (t87 >> 1);
    t89 = (t88 & 1);
    *((unsigned int *)t85) = t89;
    t90 = *((unsigned int *)t86);
    t91 = (t90 >> 1);
    t92 = (t91 & 1);
    *((unsigned int *)t83) = t92;
    t93 = (t0 + 1048U);
    t94 = *((char **)t93);
    memset(t95, 0, 8);
    t93 = (t95 + 4);
    t96 = (t94 + 4);
    t97 = *((unsigned int *)t94);
    t98 = (t97 >> 2);
    t99 = (t98 & 1);
    *((unsigned int *)t95) = t99;
    t100 = *((unsigned int *)t96);
    t101 = (t100 >> 2);
    t102 = (t101 & 1);
    *((unsigned int *)t93) = t102;
    t103 = (t0 + 1048U);
    t104 = *((char **)t103);
    memset(t105, 0, 8);
    t103 = (t105 + 4);
    t106 = (t104 + 4);
    t107 = *((unsigned int *)t104);
    t108 = (t107 >> 3);
    t109 = (t108 & 1);
    *((unsigned int *)t105) = t109;
    t110 = *((unsigned int *)t106);
    t111 = (t110 >> 3);
    t112 = (t111 & 1);
    *((unsigned int *)t103) = t112;
    xsi_vlogfile_write(1, 0, 3, ng0, 11, t0, (char)118, t4, 1, (char)118, t16, 1, (char)118, t28, 1, (char)118, t40, 1, (char)118, t52, 1, (char)118, t64, 1, (char)118, t75, 1, (char)118, t85, 1, (char)118, t95, 1, (char)118, t105, 1);

LAB1:    return;
}

static void Initial_41_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng1);

LAB4:    xsi_set_current_line(43, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(44, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(47, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(50, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(51, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(52, ng1);
    Monitor_52_1(t0);
    xsi_set_current_line(53, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(54, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(55, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(56, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(57, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(58, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(59, ng1);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB1;

}

void Monitor_52_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2584);
    t2 = (t0 + 3096);
    xsi_vlogfile_monitor((void *)Monitor_52_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000002520578778_1463362209_init()
{
	static char *pe[] = {(void *)Initial_41_0,(void *)Monitor_52_1};
	xsi_register_didat("work_m_00000000002520578778_1463362209", "isim/t_rshift_4_isim_beh.exe.sim/work/m_00000000002520578778_1463362209.didat");
	xsi_register_executes(pe);
}
