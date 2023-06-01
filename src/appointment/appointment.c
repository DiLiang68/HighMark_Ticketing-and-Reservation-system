#include "appointment.h"

int is_leap_year(int year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

int is_valid_date(int day, int month, int year) {
    int days_in_month[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    if (year < 1 || year > 9999) {
        return 0;
    }
    if (month < 1 || month > 12) {
        return 0;
    }
    if (day < 1 || day > days_in_month[month - 1]) {
        return 0;
    }
    if (month == 2 && is_leap_year(year) && day > 29) {
        return 0;
    }
    return 1;
}

time_t day_to_timestamp(int day, int month, int year) {
    struct tm t;
    t.tm_mday = day;
    t.tm_mon = month - 1;
    t.tm_year = year - 1900;
    t.tm_hour = 0;
    t.tm_min = 0;
    t.tm_sec = 0;
    t.tm_isdst = -1;

    return mktime(&t);
}

int compare_date(int day, int month, int year) {
    time_t curr = time(NULL);
    time_t given_day = day_to_timestamp(day, month, year);
    return given_day > curr;
}

Appointment_t create_appointment(int type, int hour, int day, int month,
                                 int year, char *name) {
    Appointment_t a = (Appointment_t)malloc(sizeof(struct Appointment));
    if (a == NULL) {
        return NULL;
    }
    a->type = type;
    a->hour = hour;
    a->day = day;
    a->month = month;
    a->year = year;
    strcpy(a->name, name);
    return a;
}

void add_appointment(appointment_node_t *head, Appointment_t appointment) {
    appointment_node_t new_node =
        (appointment_node_t)malloc(sizeof(struct AppointmentNode));
    new_node->data = appointment;
    new_node->next = *head;
    *head = new_node;
}

void delete_appointment(appointment_node_t *head) {
    if (*head == NULL)
        return;

    appointment_node_t temp = *head;
    *head = (*head)->next;
    free(temp->data);
    free(temp);
}

Appointment_t search_appointment_by_date(appointment_node_t head, int hour,
                                         int day, int month, int year) {
    while (head != NULL) {

        if (head->data->hour == hour && head->data->day == day &&
            head->data->month == month && head->data->year == year) {
            return head->data;
        }
        head = head->next;
    }
    return NULL;
}

int make_appointment(appointment_node_t *head, int type, int hour, int day,
                     int month, int year, char *name) {
    Appointment_t new_appointment =
        create_appointment(type, hour, day, month, year, name);
    if (new_appointment == NULL) {
        return 0;
    }
    add_appointment(head, new_appointment);
    return 1;
}

void print_appointments_by_name(appointment_node_t head, char *name) {
    int ok = 0;
    while (head != NULL) {
        if (strcmp(head->data->name, name) == 0) {
            printf("Appointment: %s\n", head->data->name);
            printf("Type: %d\n", head->data->type);
            printf("Hour: %d\n", head->data->hour);
            printf("Day: %d\n", head->data->day);
            printf("Month: %d\n", head->data->month);
            printf("Year: %d\n\n", head->data->year);
            ok++;
        }
        head = head->next;
    }
    if (!ok) {
        printf("You do not have any appointment!\n");
    }
}

int delete_appointment_by_date(appointment_node_t *head, int hour, int day,
                               int month, int year) {
    appointment_node_t temp = *head, prev;

    if (temp != NULL && temp->data->hour == hour && temp->data->day == day &&
        temp->data->month == month && temp->data->year == year) {
        *head = temp->next;
        free(temp->data);
        free(temp);
        return 1;
    }

    while (temp != NULL &&
           (temp->data->hour != hour || temp->data->day != day ||
            temp->data->month != month || temp->data->year != year)) {
        prev = temp;
        temp = temp->next;
    }

    if (temp == NULL) {
        return 0;
    }

    prev->next = temp->next;

    free(temp->data);
    free(temp);

    return 1;
}