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
static const char *ng0 = "C:/Users/kloftis/Downloads/FinalCordic1/FinalCordic/X_AddSub.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2475577664_3212880686_p_0(char *t0)
{
    char t5[16];
    char t20[16];
    char t33[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned char t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 3300U);
    t3 = (t0 + 3391);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 868U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)3);
    if (t19 != 0)
        goto LAB5;

LAB6:
LAB9:    t34 = (t0 + 592U);
    t35 = *((char **)t34);
    t34 = (t0 + 3252U);
    t36 = (t0 + 684U);
    t37 = *((char **)t36);
    t36 = (t0 + 3268U);
    t38 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t33, t35, t34, t37, t36);
    t39 = (t33 + 12U);
    t40 = *((unsigned int *)t39);
    t41 = (1U * t40);
    t42 = (32U != t41);
    if (t42 == 1)
        goto LAB11;

LAB12:    t43 = (t0 + 1860);
    t44 = (t43 + 32U);
    t45 = *((char **)t44);
    t46 = (t45 + 40U);
    t47 = *((char **)t46);
    memcpy(t47, t38, 32U);
    xsi_driver_first_trans_fast_port(t43);

LAB2:    t48 = (t0 + 1816);
    *((int *)t48) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 592U);
    t11 = *((char **)t7);
    t7 = (t0 + 1860);
    t12 = (t7 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 32U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    t16 = (t0 + 592U);
    t21 = *((char **)t16);
    t16 = (t0 + 3252U);
    t22 = (t0 + 684U);
    t23 = *((char **)t22);
    t22 = (t0 + 3268U);
    t24 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t20, t21, t16, t23, t22);
    t25 = (t20 + 12U);
    t9 = *((unsigned int *)t25);
    t26 = (1U * t9);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB7;

LAB8:    t28 = (t0 + 1860);
    t29 = (t28 + 32U);
    t30 = *((char **)t29);
    t31 = (t30 + 40U);
    t32 = *((char **)t31);
    memcpy(t32, t24, 32U);
    xsi_driver_first_trans_fast_port(t28);
    goto LAB2;

LAB7:    xsi_size_not_matching(32U, t26, 0);
    goto LAB8;

LAB10:    goto LAB2;

LAB11:    xsi_size_not_matching(32U, t41, 0);
    goto LAB12;

}


extern void work_a_2475577664_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2475577664_3212880686_p_0};
	xsi_register_didat("work_a_2475577664_3212880686", "isim/Test_isim_beh.exe.sim/work/a_2475577664_3212880686.didat");
	xsi_register_executes(pe);
}
