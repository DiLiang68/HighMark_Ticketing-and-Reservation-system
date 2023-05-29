#include "login/login.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    login_menu();
    return 0;
}

/**
 * @brief Show the login menu.
 *
 */
void login_menu() {
    printf("Wellcome to High-Mark Ticketing & Reservation System!\n");
    printf("*****************************************************\n");
    printf(" 1 - Admin\n");
    printf(" 2 - User\n");
    printf(" 0 - Exit\n");
    printf("\n");
    printf("*****************************************************\n");
}