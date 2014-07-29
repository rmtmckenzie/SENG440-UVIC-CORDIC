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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/kloftis/Downloads/FinalCordic1/FinalCordic/Comparator.vhd";



static void work_a_2683404259_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned char t31;
    unsigned char t32;
    char *t33;
    char *t34;
    unsigned char t35;
    unsigned char t36;
    char *t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned char t42;
    unsigned char t43;
    unsigned char t44;
    char *t45;
    char *t46;
    unsigned char t47;
    unsigned char t48;
    char *t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned char t54;
    unsigned char t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;

LAB0:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 776U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)2);
    if (t18 == 1)
        goto LAB11;

LAB12:    t14 = (unsigned char)0;

LAB13:    t1 = t14;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t33 = (t0 + 776U);
    t34 = *((char **)t33);
    t35 = *((unsigned char *)t34);
    t36 = (t35 == (unsigned char)3);
    if (t36 == 1)
        goto LAB19;

LAB20:    t32 = (unsigned char)0;

LAB21:    if (t32 == 1)
        goto LAB16;

LAB17:    t45 = (t0 + 776U);
    t46 = *((char **)t45);
    t47 = *((unsigned char *)t46);
    t48 = (t47 == (unsigned char)2);
    if (t48 == 1)
        goto LAB22;

LAB23:    t44 = (unsigned char)0;

LAB24:    t31 = t44;

LAB18:    if (t31 != 0)
        goto LAB14;

LAB15:
LAB25:    t61 = (t0 + 1860);
    t62 = (t61 + 32U);
    t63 = *((char **)t62);
    t64 = (t63 + 40U);
    t65 = *((char **)t64);
    *((unsigned char *)t65) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t61);

LAB2:    t66 = (t0 + 1816);
    *((int *)t66) = 1;

LAB1:    return;
LAB3:    t26 = (t0 + 1860);
    t27 = (t26 + 32U);
    t28 = *((char **)t27);
    t29 = (t28 + 40U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t26);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t3 = (t0 + 684U);
    t7 = *((char **)t3);
    t8 = (31 - 31);
    t9 = (t8 * -1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t3 = (t7 + t11);
    t12 = *((unsigned char *)t3);
    t13 = (t12 == (unsigned char)2);
    t2 = t13;
    goto LAB10;

LAB11:    t15 = (t0 + 592U);
    t19 = *((char **)t15);
    t20 = (31 - 31);
    t21 = (t20 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t15 = (t19 + t23);
    t24 = *((unsigned char *)t15);
    t25 = (t24 == (unsigned char)3);
    t14 = t25;
    goto LAB13;

LAB14:    t56 = (t0 + 1860);
    t57 = (t56 + 32U);
    t58 = *((char **)t57);
    t59 = (t58 + 40U);
    t60 = *((char **)t59);
    *((unsigned char *)t60) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t56);
    goto LAB2;

LAB16:    t31 = (unsigned char)1;
    goto LAB18;

LAB19:    t33 = (t0 + 684U);
    t37 = *((char **)t33);
    t38 = (31 - 31);
    t39 = (t38 * -1);
    t40 = (1U * t39);
    t41 = (0 + t40);
    t33 = (t37 + t41);
    t42 = *((unsigned char *)t33);
    t43 = (t42 == (unsigned char)3);
    t32 = t43;
    goto LAB21;

LAB22:    t45 = (t0 + 592U);
    t49 = *((char **)t45);
    t50 = (31 - 31);
    t51 = (t50 * -1);
    t52 = (1U * t51);
    t53 = (0 + t52);
    t45 = (t49 + t53);
    t54 = *((unsigned char *)t45);
    t55 = (t54 == (unsigned char)2);
    t44 = t55;
    goto LAB24;

LAB26:    goto LAB2;

}


extern void work_a_2683404259_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2683404259_3212880686_p_0};
	xsi_register_didat("work_a_2683404259_3212880686", "isim/Test_isim_beh.exe.sim/work/a_2683404259_3212880686.didat");
	xsi_register_executes(pe);
}
