#ifndef MENU_H
#define MENU_H

#include "../login/login.h"

/**
 * @brief Show the login menu.
 *
 * @param account_list_t The list of accounts.
 * @return int The type of account.
 */
int login_menu(account_list_t account_list);

/**
 * @brief Show the admin menu.
 *
 * @param account_list_t The list of accounts.
 */
void admin_menu(account_list_t account_list);

#endif