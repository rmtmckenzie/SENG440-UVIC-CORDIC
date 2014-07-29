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
static const char *ng0 = "C:/Users/kloftis/Downloads/FinalCordic1/FinalCordic/Controller.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1208337864_3212880686_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1580U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1696U);
    t2 = *((char **)t1);
    t1 = (t0 + 3232);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 3268);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3108);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 6287);
    t6 = (t0 + 3160);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1696U);
    t5 = *((char **)t2);
    t2 = (t0 + 3160);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6289);
    t3 = 1;
    if (2U == 2U)
        goto LAB10;

LAB11:    t3 = 0;

LAB12:    if (t3 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6305);
    t3 = 1;
    if (2U == 2U)
        goto LAB49;

LAB50:    t3 = 0;

LAB51:    if (t3 != 0)
        goto LAB47;

LAB48:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(74, ng0);
    t8 = (t0 + 1972U);
    t9 = *((char **)t8);
    t8 = (t0 + 6244U);
    t10 = (t0 + 6291);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 4;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (4 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t19 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t9, t8, t10, t14);
    if (t19 == 1)
        goto LAB22;

LAB23:    t12 = (unsigned char)0;

LAB24:    if (t12 == 1)
        goto LAB19;

LAB20:    t4 = (unsigned char)0;

LAB21:    if (t4 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 1972U);
    t2 = *((char **)t1);
    t1 = (t0 + 6244U);
    t5 = (t0 + 6298);
    t7 = (t14 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t17 = (4 - 0);
    t11 = (t17 * 1);
    t11 = (t11 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t11;
    t12 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t5, t14);
    if (t12 == 1)
        goto LAB36;

LAB37:    t4 = (unsigned char)0;

LAB38:    if (t4 == 1)
        goto LAB33;

LAB34:    t3 = (unsigned char)0;

LAB35:    if (t3 != 0)
        goto LAB31;

LAB32:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1972U);
    t2 = *((char **)t1);
    t1 = (t0 + 6244U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t14, t2, t1, 1);
    t6 = (t14 + 12U);
    t11 = *((unsigned int *)t6);
    t18 = (1U * t11);
    t3 = (5U != t18);
    if (t3 == 1)
        goto LAB45;

LAB46:    t7 = (t0 + 3196);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t13 = *((char **)t10);
    memcpy(t13, t5, 5U);
    xsi_driver_first_trans_fast(t7);

LAB17:    goto LAB8;

LAB10:    t11 = 0;

LAB13:    if (t11 < 2U)
        goto LAB14;
    else
        goto LAB12;

LAB14:    t6 = (t2 + t11);
    t7 = (t1 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB11;

LAB15:    t11 = (t11 + 1);
    goto LAB13;

LAB16:    xsi_set_current_line(75, ng0);
    t28 = (t0 + 2144U);
    t29 = *((char **)t28);
    t28 = (t29 + 0);
    *((unsigned char *)t28) = (unsigned char)2;
    goto LAB17;

LAB19:    t16 = (t0 + 1880U);
    t23 = *((char **)t16);
    t16 = (t0 + 6296);
    t25 = 1;
    if (2U == 2U)
        goto LAB25;

LAB26:    t25 = 0;

LAB27:    t4 = t25;
    goto LAB21;

LAB22:    t16 = (t0 + 2144U);
    t20 = *((char **)t16);
    t21 = *((unsigned char *)t20);
    t22 = (t21 == (unsigned char)3);
    t12 = t22;
    goto LAB24;

LAB25:    t18 = 0;

LAB28:    if (t18 < 2U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t26 = (t23 + t18);
    t27 = (t16 + t18);
    if (*((unsigned char *)t26) != *((unsigned char *)t27))
        goto LAB26;

LAB30:    t18 = (t18 + 1);
    goto LAB28;

LAB31:    xsi_set_current_line(77, ng0);
    t20 = (t0 + 2212U);
    t23 = *((char **)t20);
    t20 = (t23 + 0);
    *((unsigned char *)t20) = (unsigned char)2;
    goto LAB17;

LAB33:    t8 = (t0 + 1880U);
    t10 = *((char **)t8);
    t8 = (t0 + 6303);
    t22 = 1;
    if (2U == 2U)
        goto LAB39;

LAB40:    t22 = 0;

LAB41:    t3 = t22;
    goto LAB35;

LAB36:    t8 = (t0 + 2212U);
    t9 = *((char **)t8);
    t19 = *((unsigned char *)t9);
    t21 = (t19 == (unsigned char)3);
    t4 = t21;
    goto LAB38;

LAB39:    t11 = 0;

LAB42:    if (t11 < 2U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t15 = (t10 + t11);
    t16 = (t8 + t11);
    if (*((unsigned char *)t15) != *((unsigned char *)t16))
        goto LAB40;

LAB44:    t11 = (t11 + 1);
    goto LAB42;

LAB45:    xsi_size_not_matching(5U, t18, 0);
    goto LAB46;

LAB47:    xsi_set_current_line(82, ng0);
    t8 = (t0 + 2144U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2212U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    t1 = (t0 + 6307);
    t3 = 1;
    if (2U == 2U)
        goto LAB58;

LAB59:    t3 = 0;

LAB60:    if (t3 != 0)
        goto LAB55;

LAB57:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 6314);
    t5 = (t0 + 3196);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);

LAB56:    goto LAB8;

LAB49:    t11 = 0;

LAB52:    if (t11 < 2U)
        goto LAB53;
    else
        goto LAB51;

LAB53:    t6 = (t2 + t11);
    t7 = (t1 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB50;

LAB54:    t11 = (t11 + 1);
    goto LAB52;

LAB55:    xsi_set_current_line(85, ng0);
    t8 = (t0 + 6309);
    t10 = (t0 + 3196);
    t13 = (t10 + 32U);
    t15 = *((char **)t13);
    t16 = (t15 + 40U);
    t20 = *((char **)t16);
    memcpy(t20, t8, 5U);
    xsi_driver_first_trans_fast(t10);
    goto LAB56;

LAB58:    t11 = 0;

LAB61:    if (t11 < 2U)
        goto LAB62;
    else
        goto LAB60;

LAB62:    t6 = (t2 + t11);
    t7 = (t1 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB59;

LAB63:    t11 = (t11 + 1);
    goto LAB61;

}

static void work_a_1208337864_3212880686_p_1(char *t0)
{
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;

LAB0:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6319);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6332);
    t4 = 1;
    if (2U == 2U)
        goto LAB16;

LAB17:    t4 = 0;

LAB18:    if (t4 != 0)
        goto LAB14;

LAB15:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 6343);
    t4 = 1;
    if (2U == 2U)
        goto LAB27;

LAB28:    t4 = 0;

LAB29:    if (t4 != 0)
        goto LAB25;

LAB26:
LAB3:    t1 = (t0 + 3116);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(98, ng0);
    t8 = (t0 + 684U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 6323);
    t3 = (t0 + 3448);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 6325);
    t3 = (t0 + 3304);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 3376);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t6 = (t3 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 3412);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t6 = (t3 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3484);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t6 = (t3 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 6327);
    t3 = (t0 + 3520);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 3556);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t6 = (t3 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB12:    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(99, ng0);
    t8 = (t0 + 592U);
    t12 = *((char **)t8);
    t13 = (2 - 1);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t8 = (t12 + t15);
    t16 = (t0 + 3304);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 2U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t5 = (2 - 1);
    t13 = (t5 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = (t0 + 3340);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t21 = (2 - 2);
    t5 = (t21 * -1);
    t13 = (1U * t5);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t4 = *((unsigned char *)t1);
    t3 = (t0 + 3376);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 3412);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t6 = (t3 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 6321);
    t3 = (t0 + 3448);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t3);
    goto LAB12;

LAB14:    xsi_set_current_line(115, ng0);
    t8 = (t0 + 3412);
    t9 = (t8 + 32U);
    t12 = *((char **)t9);
    t16 = (t12 + 40U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 1972U);
    t2 = *((char **)t1);
    t1 = (t0 + 3520);
    t3 = (t1 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 1972U);
    t2 = *((char **)t1);
    t1 = (t0 + 6244U);
    t3 = (t0 + 6334);
    t7 = (t22 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t21 = (4 - 0);
    t5 = (t21 * 1);
    t5 = (t5 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t5;
    t4 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t3, t22);
    if (t4 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB3;

LAB16:    t5 = 0;

LAB19:    if (t5 < 2U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB17;

LAB21:    t5 = (t5 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(118, ng0);
    t8 = (t0 + 6339);
    t12 = (t0 + 3448);
    t16 = (t12 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t8, 2U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 3484);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t6 = (t3 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 3556);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t6 = (t3 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 6341);
    t3 = (t0 + 3448);
    t6 = (t3 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t3);
    goto LAB23;

LAB25:    xsi_set_current_line(127, ng0);
    t8 = (t0 + 3556);
    t9 = (t8 + 32U);
    t12 = *((char **)t9);
    t16 = (t12 + 40U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(128, ng0);
    t1 = (t0 + 3484);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t6 = (t3 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB27:    t5 = 0;

LAB30:    if (t5 < 2U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB28;

LAB32:    t5 = (t5 + 1);
    goto LAB30;

}


extern void work_a_1208337864_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1208337864_3212880686_p_0,(void *)work_a_1208337864_3212880686_p_1};
	xsi_register_didat("work_a_1208337864_3212880686", "isim/Test_isim_beh.exe.sim/work/a_1208337864_3212880686.didat");
	xsi_register_executes(pe);
}
