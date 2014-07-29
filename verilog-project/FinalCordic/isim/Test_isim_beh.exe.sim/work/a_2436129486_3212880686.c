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
static const char *ng0 = "C:/Users/kloftis/Downloads/FinalCordic1/FinalCordic/Lookup_Table.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2436129486_3212880686_p_0(char *t0)
{
    char t5[16];
    char t27[16];
    char t49[16];
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
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    unsigned char t32;
    char *t33;
    char *t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t50;
    char *t51;
    int t52;
    unsigned int t53;
    unsigned char t54;
    char *t55;
    char *t56;
    int t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;

LAB0:    xsi_set_current_line(155, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 3616U);
    t3 = (t0 + 6767);
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

LAB4:    t23 = (t0 + 684U);
    t24 = *((char **)t23);
    t23 = (t0 + 3616U);
    t25 = (t0 + 6769);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 1;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (1 - 0);
    t31 = (t30 * 1);
    t31 = (t31 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t31;
    t32 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t24, t23, t25, t27);
    if (t32 != 0)
        goto LAB5;

LAB6:    t45 = (t0 + 684U);
    t46 = *((char **)t45);
    t45 = (t0 + 3616U);
    t47 = (t0 + 6771);
    t50 = (t49 + 0U);
    t51 = (t50 + 0U);
    *((int *)t51) = 0;
    t51 = (t50 + 4U);
    *((int *)t51) = 1;
    t51 = (t50 + 8U);
    *((int *)t51) = 1;
    t52 = (1 - 0);
    t53 = (t52 * 1);
    t53 = (t53 + 1);
    t51 = (t50 + 12U);
    *((unsigned int *)t51) = t53;
    t54 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t46, t45, t47, t49);
    if (t54 != 0)
        goto LAB7;

LAB8:
LAB2:    t67 = (t0 + 1836);
    *((int *)t67) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 948U);
    t11 = *((char **)t7);
    t7 = (t0 + 592U);
    t12 = *((char **)t7);
    t7 = (t0 + 3600U);
    t13 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t7);
    t14 = (t13 - 31);
    t9 = (t14 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t13);
    t15 = (32U * t9);
    t16 = (0 + t15);
    t17 = (t11 + t16);
    t18 = (t0 + 1880);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t17, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB2;

LAB5:    t29 = (t0 + 1016U);
    t33 = *((char **)t29);
    t29 = (t0 + 592U);
    t34 = *((char **)t29);
    t29 = (t0 + 3600U);
    t35 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t34, t29);
    t36 = (t35 - 31);
    t31 = (t36 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t35);
    t37 = (32U * t31);
    t38 = (0 + t37);
    t39 = (t33 + t38);
    t40 = (t0 + 1880);
    t41 = (t40 + 32U);
    t42 = *((char **)t41);
    t43 = (t42 + 40U);
    t44 = *((char **)t43);
    memcpy(t44, t39, 32U);
    xsi_driver_first_trans_fast_port(t40);
    goto LAB2;

LAB7:    t51 = (t0 + 1084U);
    t55 = *((char **)t51);
    t51 = (t0 + 592U);
    t56 = *((char **)t51);
    t51 = (t0 + 3600U);
    t57 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t56, t51);
    t58 = (t57 - 31);
    t53 = (t58 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t57);
    t59 = (32U * t53);
    t60 = (0 + t59);
    t61 = (t55 + t60);
    t62 = (t0 + 1880);
    t63 = (t62 + 32U);
    t64 = *((char **)t63);
    t65 = (t64 + 40U);
    t66 = *((char **)t65);
    memcpy(t66, t61, 32U);
    xsi_driver_first_trans_fast_port(t62);
    goto LAB2;

}


extern void work_a_2436129486_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2436129486_3212880686_p_0};
	xsi_register_didat("work_a_2436129486_3212880686", "isim/Test_isim_beh.exe.sim/work/a_2436129486_3212880686.didat");
	xsi_register_executes(pe);
}
