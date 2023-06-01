#ifndef LOGIN_H
#define LOGIN_H

#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_STRING_LENGTH 32

struct account {
    char *name;
    char *pwd;
    int type; /* 1 if is admin, otherwise 0 */
};

typedef struct account *account_t;

struct account_list {
    account_t account;
    struct account_list *next;
};

typedef struct account_list *account_list_t;

/**
 * @brief Initialize the account list of the system.
 *
 * @return account_list_t The pointer to the account list.
 */
account_list_t init();

/**
 * @brief Create a new account.
 *
 * @param name The name of the account.
 * @param pwd The password of the account.
 * @param type The type of the account.
 * @return account_t The new account created.
 */
account_t new_account(char *name, char *pwd, int type);

/**
 * @brief Add an account to the account list.
 *
 * @param account_list A pointer to the list of accounts.
 * @param account The account to be added.
 *
 * @return int 1 if the account is added successfully, 0 otherwise.
 */
int add_account(account_list_t *account_list, account_t account);

/**
 * @brief Check if an account is in the account list.
 *
 * @param account_list The list of accounts to check.
 * @param name The name of the account.
 * @param pwd The password of the account.
 * @param type The type of the account.
 *
 * @return int The name of the account.
 */
char *verify_account(account_list_t account_list, char *name, char *pwd,
                     int type);

/**
 * @brief Check if an account exists in the account list.
 *
 * @param list The pointer to the account list.
 * @param name The name of the account to be checked.
 *
 * @return int 1 if the account exists, 0 otherwise.
 */
int check_account(account_list_t account_list, char *name, int type);

/**
 * @brief Delete an account from the account list.
 *
 * @param account_list The pointer to the list of accounts.
 * @param type The type of the account.
 * @param name The name of the account to be deleted.
 */
int delete_account(account_list_t *account_list, char *name, int type);

/**
 * @brief Edit an existing account in the account list.
 *
 * @param list The pointer to the account list.
 * @param name The name of the account to be edited.
 * @param type The type of the account to be edited.
 * @param new_name The new name of the account.
 * @param new_pwd The new password of the account.
 * @param new_type The new type of the account.
 * @return int 1 if the account is edited successfully, 0 otherwise.
 */
int edit_account(account_list_t account_list, char *name, int type,
                 char *new_name, char *new_pwd, int new_type);

/**
 * @brief Traverse the list and print the account information in each node.
 *
 * @param list a pointer to the head node of the list
 */
void print_all_accounts(account_list_t list);

/**
 * @brief Free the memory allocated for the account list.
 *
 * @param account_list The list of accounts to be freed.
 */
void free_account_list(account_list_t account_list);

#endif