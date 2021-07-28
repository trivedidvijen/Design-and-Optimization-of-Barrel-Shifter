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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003107754401_1818090095_init();
    work_m_00000000002818831887_1134065973_init();
    work_m_00000000000568536435_3355528883_init();
    work_m_00000000000415001266_3666946191_init();
    work_m_00000000000911888343_1068159933_init();
    work_m_00000000001831441225_3971881188_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001831441225_3971881188");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
