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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_3183919506;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *UNISIM_P_0947159679;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    work_p_3183919506_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3361092007_3212880686_init();
    work_a_3882926292_3212880686_init();
    work_a_3699058664_3212880686_init();
    unisim_a_3055263662_1392679692_init();
    work_a_2475577664_3212880686_init();
    work_a_1098115971_3212880686_init();
    work_a_2683404259_3212880686_init();
    work_a_1208337864_3212880686_init();
    work_a_2436129486_3212880686_init();
    work_a_3016354591_3212880686_init();
    work_a_1301313992_3212880686_init();
    work_a_4107293976_3212880686_init();
    work_a_2100397632_3212880686_init();
    work_a_0210221305_3212880686_init();
    work_a_0565044758_3212880686_init();
    work_a_1283668799_3212880686_init();
    work_a_1787585657_3316374769_init();
    work_a_2239630122_3505899711_init();
    work_a_1408945968_3212880686_init();
    work_a_1025613478_3212880686_init();
    work_a_1985558087_2372691052_init();


    xsi_register_tops("work_a_1985558087_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_3183919506 = xsi_get_engine_memory("work_p_3183919506");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
