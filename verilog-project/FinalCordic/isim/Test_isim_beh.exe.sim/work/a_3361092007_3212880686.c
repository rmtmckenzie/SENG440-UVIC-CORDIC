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
static const char *ng0 = "C:/Users/kloftis/Downloads/FinalCordic1/FinalCordic/AddSub.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3361092007_3212880686_p_0(char *t0)
{
    char t5[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB7:    t20 = (t0 + 592U);
    t21 = *((char **)t20);
    t20 = (t0 + 3076U);
    t22 = (t0 + 684U);
    t23 = *((char **)t22);
    t22 = (t0 + 3092U);
    t24 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t19, t21, t20, t23, t22);
    t25 = (t19 + 12U);
    t26 = *((unsigned int *)t25);
    t27 = (1U * t26);
    t28 = (32U != t27);
    if (t28 == 1)
        goto LAB9;

LAB10:    t29 = (t0 + 1768);
    t30 = (t29 + 32U);
    t31 = *((char **)t30);
    t32 = (t31 + 40U);
    t33 = *((char **)t32);
    memcpy(t33, t24, 32U);
    xsi_driver_first_trans_fast_port(t29);

LAB2:    t34 = (t0 + 1724);
    *((int *)t34) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 592U);
    t6 = *((char **)t1);
    t1 = (t0 + 3076U);
    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t7 = (t0 + 3092U);
    t9 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t5, t6, t1, t8, t7);
    t10 = (t5 + 12U);
    t11 = *((unsigned int *)t10);
    t12 = (1U * t11);
    t13 = (32U != t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 1768);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t12, 0);
    goto LAB6;

LAB8:    goto LAB2;

LAB9:    xsi_size_not_matching(32U, t27, 0);
    goto LAB10;

}


extern void work_a_3361092007_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3361092007_3212880686_p_0};
	xsi_register_didat("work_a_3361092007_3212880686", "isim/Test_isim_beh.exe.sim/work/a_3361092007_3212880686.didat");
	xsi_register_executes(pe);
}
