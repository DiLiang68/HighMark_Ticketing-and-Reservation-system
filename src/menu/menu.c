#include "menu.h"

char *login_menu(account_list_t account_list, int *type) {

    int opt;
    do {
        printf("Wellcome to High-Mark Ticketing & Reservation System!\n");
        printf("*****************************************************\n");
        printf(" Please login before using the system.\n");
        printf(" 1 - User\n");
        printf(" 2 - Admin\n");
        printf(" 0 - Exit\n");
        printf("\n");
        printf("*****************************************************\n");
        printf("Enter your option -> ");
        scanf("%d", &opt);
        printf("Username -> ");
        char *username = (char *)calloc(MAX_STRING_LENGTH, sizeof(char));
        scanf("%s", username);
        /* clear the newline character from the buffer */
        getchar();
        printf("Password -> ");
        char *password = (char *)calloc(MAX_STRING_LENGTH, sizeof(char));
        scanf("%s", password);
        /* clear the newline character from the buffer */
        getchar();

        if (verify_account(account_list, username, password, opt - 1)) {
            return verify_account(account_list, username, password, opt - 1);
        }
    } while (opt);
}

void admin_menu(account_list_t account_list) {

    int opt;
    do {
        printf("Wellcome to High-Mark Ticketing & Reservation System!\n");
        printf("*****************************************************\n");
        printf(" Admin Account Management Menu\n");
        printf(" 1 - Create new account\n");
        printf(" 2 - Delete an existing account\n");
        printf(" 3 - Edit an existing account\n");
        printf(" 4 - Print all account information\n");
        printf(" 0 - Exit\n");
        printf("\n");
        printf("*****************************************************\n");
        printf("\n");
        printf("Enter your option -> ");
        scanf("%d", &opt);
        printf("\n");
        switch (opt) {
        case 1: {
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
            if (exist) {
                printf("The account with name %s and type %d already exists!\n",
                       username, type);
                break;
            }
            printf("Password -> ");
            char *password = (char *)calloc(MAX_STRING_LENGTH, sizeof(char));
            scanf("%s", password);
            /* clear the newline character from the buffer */
            getchar();
            int succ = add_account(&account_list,
                                   new_account(username, password, type));
            if (!succ) {
                printf("Failed to add the account!\n");
            }
            break;
        }
        case 2: {
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
            if (!exist) {
                printf("The account with name %s and type %d does not exist!\n",
                       username, type);
                break;
            }
            int succ = delete_account(&account_list, username, type);
            if (!succ) {
                printf("Failed to delete the account!\n");
            }
            break;
        }
        case 3: {
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
            if (!exist) {
                printf("The account with name %s and type %d does not exist!\n",
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
                printf("Failed to edit the account!\n");
            }
            break;
        }
        case 4: {
            print_all_accounts(account_list);
            break;
        }
        }
    } while (opt);
}

void appoint_menu(char *name) {

    appointment_node_t head = NULL;

    int opt;
    do {
        printf("Wellcome to High-Mark Ticketing & Reservation System!\n");
        printf("*****************************************************\n");
        printf(" Appointment Menu\n");
        printf(" 1 - Book an appointment\n");
        printf(" 2 - Manage or change your appointment\n");
        printf(" 0 - Exit\n");
        printf("\n");
        printf("*****************************************************\n");
        printf("Enter your option -> ");
        scanf("%d", &opt);
        switch (opt) {
        case 1:
            book_menu(name, &head);
            break;

        case 2:
            manage_menu(name, &head);
            break;
        }
    } while (opt);

    delete_appointment(&head);
}

void book_menu(char *name, appointment_node_t *head) {
    printf("Wellcome to High-Mark Ticketing & Reservation System!\n");
    printf("*****************************************************\n");
    printf(" Appointment Options\n");
    printf(" 1 - Admissions\n");
    printf(" 2 - Student ID card\n");
    printf(" 3 - Enrolment and course advice\n");
    printf(" 4 - Travel concession\n");
    printf(" 5 - Results & Graduation\n");
    printf(" 0 - Exit\n");
    printf("\n");
    printf("*****************************************************\n");

    int opt;
    printf("Enter your option -> ");
    scanf("%d", &opt);
    if (opt) {
        printf("Please enter the date you want to book.\n");
        printf("day -> ");
        int day;
        scanf("%d", &day);
        printf("month -> ");
        int month;
        scanf("%d", &month);
        printf("year -> ");
        int year;
        scanf("%d", &year);
        if (!is_valid_date(day, month, year)) {
            printf("The given date is invalid!\n");
            return;
        }
        if (!compare_date(day, month, year)) {
            printf("The given date is unavailable!\n");
            return;
        }
        printf("Please select a time.\n");
        int i;
        for (i = 0; i < 6; i++) {
            printf(" %d:00 ", i + 10);
            if (search_appointment_by_date(*head, i + 10, day, month, year) !=
                NULL) {
                printf("UNAVAILABLE");
            } else {
                printf("AVAILABLE");
            }
            printf("\n");
        }
        printf("Enter the hour of the start time -> ");
        int hour;
        scanf("%d", &hour);
        if (hour < 10 || hour > 15 ||
            search_appointment_by_date(*head, hour, day, month, year) != NULL) {
            printf("The hour you selected is invalid!\n");
            return;
        }
        int succ = make_appointment(head, opt, hour, day, month, year, name);
        if (succ) {
            printf("Appointment confirmed.\n");
        } else {
            printf("Failed to make an appointment!\n");
        }
    }
}

void manage_menu(char *name, appointment_node_t *head) {
    int opt;
    do {
        printf("Wellcome to High-Mark Ticketing & Reservation System!\n");
        printf("*****************************************************\n");
        printf(" Appointment Management Menu\n");
        printf(" 1 - View all appointment\n");
        printf(" 2 - Cancel an appointment\n");
        printf(" 0 - Exit\n");
        printf("\n");
        printf("*****************************************************\n");
        printf("Enter your option -> ");
        scanf("%d", &opt);
        switch (opt) {
        case 1:
            print_appointments_by_name(*head, name);
            break;

        case 2:
            printf("Please enter the date you want to book.\n");
            printf("hour -> ");
            int hour;
            scanf("%d", &hour);
            printf("day -> ");
            int day;
            scanf("%d", &day);
            printf("month -> ");
            int month;
            scanf("%d", &month);
            printf("year -> ");
            int year;
            scanf("%d", &year);
            if (!is_valid_date(day, month, year) || hour < 10 || hour > 16) {
                printf("The hour you selected is invalid!\n");
                return;
            }
            Appointment_t appointment =
                search_appointment_by_date(*head, hour, day, month, year);
            if (strcmp(appointment->name, name) != 0) {
                printf("This appointment is not for you!\n");
                return;
            }
            int succ = delete_appointment_by_date(head, hour, day, month, year);
            if (succ) {
                printf("Cancel appointment successfully!\n");
            } else {
                printf("Failed to cancel the appointment!\n");
            }
            break;
        }
    } while (opt);
}