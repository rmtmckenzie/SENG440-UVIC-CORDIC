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
static const char *ng0 = "C:/Users/kloftis/Downloads/FinalCordic1/FinalCordic/slow_clk.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1787585657_3316374769_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1200U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2300);
    t4 = (t1 + 32U);
    t6 = *((char **)t4);
    t9 = (t6 + 40U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = t2;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 2240);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1132U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t3 = (t0 + 868U);
    t6 = *((char **)t3);
    t7 = *((int *)t6);
    t8 = (t5 == t7);
    if (t8 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1132U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t7 = (t5 + 1);
    t1 = (t0 + 1132U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t7;

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1200U);
    t9 = *((char **)t3);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t3 = (t0 + 1200U);
    t12 = *((char **)t3);
    t3 = (t12 + 0);
    *((unsigned char *)t3) = t11;
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1132U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    goto LAB6;

}

static void work_a_1787585657_3316374769_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 2336);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((int *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 2248);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1787585657_3316374769_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 4341);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB9:    t5 = (t0 + 4344);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB10:    t8 = (t0 + 4347);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB11:    t11 = (t0 + 4350);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB12:    t14 = (t0 + 4353);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB13:
LAB8:    xsi_set_current_line(59, ng0);
    t4 = (650 * 16);
    t1 = (t0 + 2372);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 40U);
    t6 = *((char **)t5);
    *((int *)t6) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t1 = (t0 + 2256);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(54, ng0);
    t17 = (650 * 16);
    t18 = (t0 + 2372);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    *((int *)t22) = t17;
    xsi_driver_first_trans_fast(t18);
    goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    t4 = (325 * 16);
    t1 = (t0 + 2372);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 40U);
    t6 = *((char **)t5);
    *((int *)t6) = t4;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(56, ng0);
    t4 = (162 * 16);
    t1 = (t0 + 2372);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 40U);
    t6 = *((char **)t5);
    *((int *)t6) = t4;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(57, ng0);
    t4 = (80 * 16);
    t1 = (t0 + 2372);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 40U);
    t6 = *((char **)t5);
    *((int *)t6) = t4;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(58, ng0);
    t4 = (40 * 16);
    t1 = (t0 + 2372);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 40U);
    t6 = *((char **)t5);
    *((int *)t6) = t4;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB14:;
}


extern void work_a_1787585657_3316374769_init()
{
	static char *pe[] = {(void *)work_a_1787585657_3316374769_p_0,(void *)work_a_1787585657_3316374769_p_1,(void *)work_a_1787585657_3316374769_p_2};
	xsi_register_didat("work_a_1787585657_3316374769", "isim/Test_isim_beh.exe.sim/work/a_1787585657_3316374769.didat");
	xsi_register_executes(pe);
}
