#include "menu.h"

int login_menu(account_list_t account_list) {
    printf("Wellcome to High-Mark Ticketing & Reservation System!\n");
    printf("*****************************************************\n");
    printf(" Please login before using the system.\n");
    printf(" 1 - Admin\n");
    printf(" 2 - User\n");
    printf(" 0 - Exit\n");
    printf("\n");
    printf("*****************************************************\n");

    int opt;
    do {
        printf("Enter your option -> ");
        scanf("%d", &opt);
        printf("Username -> ");
        char *username = (char *)calloc(MAX_STRING_LENGTH, sizeof(char));
        scanf("%s", username);
        /* clear the newline character from the buffer */
        getchar();
        char *password = (char *)calloc(MAX_STRING_LENGTH, sizeof(char));
        scanf("%s", password);
        /* clear the newline character from the buffer */
        getchar();
        if (verify_account(account_list, username, password, opt - 1)) {
            return opt - 1;
        }
    } while (opt);
}

void admin_menu(account_list_t account_list) {
    printf("Wellcome to High-Mark Ticketing & Reservation System!\n");
    printf("*****************************************************\n");
    printf(" Admin Account Management System\n");
    printf(" 1 - Create new account\n");
    printf(" 2 - Delete an existing account\n");
    printf(" 3 - Edit an existing account\n");
    printf(" 0 - Exit\n");
    printf("\n");
    printf("*****************************************************\n");

    int opt;
    do {
        printf("Enter your option -> ");
        scanf("%d", &opt);
        printf("Username -> ");
        char *username = (char *)calloc(MAX_STRING_LENGTH, sizeof(char));
        scanf("%s", username);
        /* clear the newline character from the buffer */
        getchar();
        printf("User Type -> ");
        int type;
        scanf("%d", &type);
        /* clear the newline character from the buffer */
        getchar();
        int exist = check_account(account_list, username, type);
        switch (opt) {
        case 1:
            if (exist) {
                printf("The account with name %s and type %d already exists!",
                       username, type);
                break;
            }
            printf("Password -> ");
            char *password = (char *)calloc(MAX_STRING_LENGTH, sizeof(char));
            scanf("%s", password);
            /* clear the newline character from the buffer */
            getchar();
            int succ = add_account(account_list,
                                   new_account(username, password, type));
            if (!succ) {
                printf("Failed to add the account!");
            }
            break;
        case 2:
            if (!exist) {
                printf("The account with name %s and type %d does not exist!",
                       username, type);
                break;
            }
            int succ = delete_account(account_list, username, type);
            if (!succ) {
                printf("Failed to delete the account!");
            }
            break;
        case 3:
            if (exist) {
                printf("The account with name %s and type %d already exists!",
                       username, type);
                break;
            }
            printf("New username -> ");
            char *new_username =
                (char *)calloc(MAX_STRING_LENGTH, sizeof(char));
            scanf("%s", new_username);
            /* clear the newline character from the buffer */
            getchar();

            printf("New password -> ");
            char *new_password =
                (char *)calloc(MAX_STRING_LENGTH, sizeof(char));
            scanf("%s", new_password);
            /* clear the newline character from the buffer */
            getchar();

            printf("New type -> ");
            int new_type;
            scanf("%d", &new_type);

            int succ = edit_account(account_list, username, type, new_username,
                                    new_password, new_type);
            if (!succ) {
                printf("Failed to edit the account!");
            }
            break;
        }
    } while (opt);
}