#include "login.h"

account_t init() { return new_account("test", "highmark"); }

account_t new_account(char *name, char *pwd) {
    /* Allocate memory for the new account */
    account_t new_account = (account_t)malloc(sizeof(struct account));

    /* Ensure memory allocation was successful */
    if (new_account == NULL) {
        printf("Failed to allocate memory!");
        return NULL;
    }

    /* Allocate and copy name */
    new_account->name = (char *)malloc(strlen(name) + 1);
    if (new_account->name == NULL) {
        printf("Failed to allocate memory!");
        free(new_account);
        return NULL;
    }
    strcpy(new_account->name, name);

    /* Allocate and copy password */
    new_account->pwd = (char *)malloc(strlen(pwd) + 1);
    if (new_account->pwd == NULL) {
        printf("Failed to allocate memory!");
        free(new_account->name);
        free(new_account);
        return NULL;
    }
    strcpy(new_account->pwd, pwd);

    return new_account;
}

int check_account(account_t account, char *name, char *pwd) {
    return strcmp(account->name, name) && strcmp(account->pwd, pwd);
}

void delete_account(account_t account) {
    free(account->name);
    free(account->pwd);
    free(account);
}
