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
static const char *ng0 = "C:/Users/kloftis/Downloads/FinalCordic1/FinalCordic/RegisterBank.vhd";



static void work_a_4107293976_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2524);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t7 = (t0 + 592U);
    t8 = *((char **)t7);
    t7 = (t0 + 2592);
    t9 = (t7 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t8, 32U);
    xsi_driver_first_trans_delta(t7, 0U, 32U, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 2592);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 32U);
    xsi_driver_first_trans_delta(t2, 32U, 32U, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t2 = (t0 + 2592);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 32U);
    xsi_driver_first_trans_delta(t2, 64U, 32U, 0LL);
    goto LAB3;

LAB5:    t2 = (t0 + 844U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

}

static void work_a_4107293976_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(66, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = (0 - 0);
    t4 = (t3 * 1);
    t5 = (32U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 2628);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 2532);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4107293976_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = (1 - 0);
    t4 = (t3 * 1);
    t5 = (32U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 2664);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 2540);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4107293976_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = (2 - 0);
    t4 = (t3 * 1);
    t5 = (32U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 2700);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 2548);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4107293976_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4107293976_3212880686_p_0,(void *)work_a_4107293976_3212880686_p_1,(void *)work_a_4107293976_3212880686_p_2,(void *)work_a_4107293976_3212880686_p_3};
	xsi_register_didat("work_a_4107293976_3212880686", "isim/Test_isim_beh.exe.sim/work/a_4107293976_3212880686.didat");
	xsi_register_executes(pe);
}
