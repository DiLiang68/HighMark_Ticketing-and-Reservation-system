#include "login.h"

account_list_t init() {
    account_list_t account_list = NULL;

    account_t account1 = new_account("Alice", "0", 0); /* a normal user */
    account_t account2 = new_account("Bob", "1", 1);   /* an admin user */

    /* Add them to the account list */
    if (!add_account(&account_list, account1)) {
        free(account1);
        return NULL;
    }
    if (!add_account(&account_list, account2)) {
        free(account2);
        free_account_list(account_list);
        return NULL;
    }

    return account_list;
}

char *strdup(const char *s) {
    size_t len = strlen(s) + 1;
    void *new = malloc(len);
    if (new == NULL)
        return NULL;
    return (char *)memcpy(new, s, len);
}

account_t new_account(char *name, char *pwd, int type) {
    account_t new_account = (account_t)malloc(sizeof(struct account));
    /* Failed to allocate memory */
    if (new_account == NULL) {
        printf("Failed to allocate memory!\n");
        return NULL;
    }
    new_account->name = strdup(name);
    new_account->pwd = strdup(pwd);
    new_account->type = type;
    return new_account;
}

int add_account(account_list_t *account_list, account_t account) {
    account_list_t new_node =
        (account_list_t)malloc(sizeof(struct account_list));
    if (new_node != NULL) {
        new_node->account = account;
        new_node->next = *account_list;
        *account_list = new_node;
        return 1;
    }
    return 0;
}

char *verify_account(account_list_t account_list, char *name, char *pwd,
                     int type) {
    account_list_t current = account_list;
    while (current != NULL) {
        if (current->account != NULL) {
            if (strcmp(current->account->name, name) == 0 &&
                strcmp(current->account->pwd, pwd) == 0 &&
                current->account->type == type) {
                return current->account->name;
            }
        }
        current = current->next;
    }
    return NULL;
}

int check_account(account_list_t account_list, char *name, int type) {
    while (account_list != NULL) {
        if (strcmp(account_list->account->name, name) == 0 &&
            account_list->account->type == type) {
            return 1;
        }
        account_list = account_list->next;
    }
    return 0;
}

int delete_account(account_list_t *account_list, char *name, int type) {
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
            return 1;
        }
        previous = current;
        current = current->next;
    }
    return 0;
}

int edit_account(account_list_t account_list, char *name, int type,
                 char *new_name, char *new_pwd, int new_type) {
    while (account_list != NULL) {
        if (strcmp(account_list->account->name, name) == 0 &&
            account_list->account->type == type) {
            strcpy(account_list->account->name, new_name);
            strcpy(account_list->account->pwd, new_pwd);
            account_list->account->type = new_type;
            printf("The account with name %s has been edited successfully.\n",
                   name);
            return 1;
        }
        account_list = account_list->next;
    }
    return 0;
}

void print_all_accounts(account_list_t list) {
    account_list_t current = list;
    int index = 1;
    printf("Printing all account information:\n");
    while (current != NULL) {
        printf("\n");
        printf(" Account %d:\n", index);
        printf(" Name: %s\n", current->account->name);
        printf(" Password: %s\n", current->account->pwd);
        printf(" Type: %d\n", current->account->type);
        current = current->next;
        index++;
    }
    printf("\n");
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