#include "menu/menu.h"
/**
 * @file main.c
 * @author Di Liang (di.liang@student.uts.edu.au)
 * @brief High-Mark Ticketing and Reservation System
 * @version 1.0
 * @date 01-06-2023
 *
 * @link https://github.com/DiLiang68/HighMark_Ticketing-and-Reservation-system
 *
 */

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    account_list_t account_list = init();
    int type = 0;
    char *name = login_menu(account_list, &type);
    if (name == NULL) {
        return 0;
    }
    printf("%s login successfully!\n", name);
    if (type) {
        admin_menu(account_list);
    } else {
        appoint_menu(name);
    }
    free_account_list(account_list);
    return 0;
}
