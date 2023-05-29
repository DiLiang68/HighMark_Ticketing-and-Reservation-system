#ifndef LOGIN_H
#define LOGIN_H

#pragma once

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

struct account {
    char *name;
    char *pwd;
};

typedef struct account *account_t;

/**
 * @brief Initialize the account of the system.
 *
 * @return account_t The pointer to the account.
 */
account_t init();

/**
 * @brief Create a new account with the provided name and password.
 *
 * @param name The name for the new account.
 * @param pwd The password for the new account.
 * @return account_t The pointer to the newly created account.
 */
account_t new_account(char *name, char *pwd);

/**
 * @brief Check if the provided name and password match the given account.
 *
 * @param account The account to check.
 * @param name The name to check against the account.
 * @param pwd The password to check against the account.
 * @return int Returns 1 if the name and password match the account, 0
 * otherwise.
 */
int check_account(account_t account, char *name, char *pwd);

/**
 * @brief Free the memory of the account.
 * 
 * @param account 
 */
void delete_account(account_t account);

#endif