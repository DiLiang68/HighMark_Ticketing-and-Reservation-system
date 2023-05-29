#include "login.h"

account_list_t init() {
    account_list_t account_list =
        (account_list_t)malloc(sizeof(struct account_list));
    /* Failed to allocate memory */
    if (account_list == NULL) {
        printf("Failed to allocate memory!");
        return NULL;
    }
    account_list->account = NULL; /* initialize the account field to NULL */
    account_list->next = NULL;    /* initialize the next field to NULL */
    return account_list;          /* return the pointer to the account list */
}

account_t new_account(char *name, char *pwd, int type) {
    account_t new_account = (account_t)malloc(sizeof(struct account));
    /* Failed to allocate memory */
    if (new_account == NULL) {
        printf("Failed to allocate memory!");
        return NULL;
    }
    new_account->name = strdup(name);
    new_account->pwd = strdup(pwd);
    new_account->type = type;
    return new_account;
}

void add_account(account_list_t *account_list, account_t account) {
    account_list_t new_node =
        (account_list_t)malloc(sizeof(struct account_list));
    if (new_node != NULL) {
        new_node->account = account;
        new_node->next = *account_list;
        *account_list = new_node;
    }
}

int check_account(account_list_t account_list, char *name, char *pwd,
                  int type) {
    account_list_t current = account_list;
    while (current != NULL) {
        if (strcmp(current->account->name, name) == 0 &&
            strcmp(current->account->pwd, pwd) == 0 &&
            current->account->type == type) {
            return 1;
        }
        current = current->next;
    }
    return 0;
}

void delete_account(account_list_t *account_list, char *name, int type) {
    account_list_t current = *account_list;
    account_list_t previous = NULL;
    while (current != NULL) {
        if (strcmp(current->account->name, name) == 0 &&
            current->account->type == type) {
            if (previous == NULL) {
                *account_list = current->next;
            } else {
                previous->next = current->next;
            }
            free(current->account->name);
            free(current->account->pwd);
            free(current->account);
            free(current);
            return;
        }
        previous = current;
        current = current->next;
    }
}

void free_account_list(account_list_t account_list) {
    account_list_t current = account_list;
    while (current != NULL) {
        account_list_t next = current->next;
        free(current->account->name);
        free(current->account->pwd);
        free(current->account);
        free(current);
        current = next;
    }
}
