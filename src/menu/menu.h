#ifndef MENU_H
#define MENU_H

#include "../appointment/appointment.h"
#include "../login/login.h"

/**
 * @brief Show the login menu.
 *
 * @param account_list_t The list of accounts.
 *
 * @return char * The name of the account.
 */
char *login_menu(account_list_t account_list, int *type);

/**
 * @brief Show the admin menu.
 *
 * @param account_list_t The list of accounts.
 *
 */
void admin_menu(account_list_t account_list);

/**
 * @brief Show the appointment menu.
 *
 * @param name The name of the user.
 *
 */
void appoint_menu(char *name);

/**
 * @brief Show the appointment booking menu.
 *
 * @param name The name of the user.
 * @param head The pointer to the head of the appointment list.
 *
 */
void book_menu(char *name, appointment_node_t *head);

/**
 * @brief Show the appointment management menu.
 *
 * @param name The name of the user.
 * @param head The pointer to the head of the appointment list.
 *
 */
void manage_menu(char *name, appointment_node_t *head);

#endif