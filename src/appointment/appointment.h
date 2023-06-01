#ifndef APPOINTMENT_H
#define APPOINTMENY_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

struct Appointment {
    int type;
    int hour;
    int day;
    int month;
    int year;
    char name[50];
};

typedef struct Appointment *Appointment_t;

struct AppointmentNode {
    Appointment_t data;
    struct AppointmentNode *next;
};

typedef struct AppointmentNode *appointment_node_t;

/**
 * @brief Check if a given day, month and year is valid.
 *
 * @param day The day of the month.
 * @param month The month of the year.
 * @param year The year in four digits.
 *
 * @return int 1 if the date is valid, 0 otherwise
 *
 */
int is_valid_date(int day, int month, int year);

/**
 * @brief Convert the day to timestamp.
 *
 * @param day The day of the month.
 * @param month The month of the year.
 * @param year The year in four digits.
 *
 * @return time_t The timestamp in seconds since 1970-01-01 00:00:00 UTC.
 *
 */
time_t day_to_timestamp(int day, int month, int year);

/**
 * @brief Check if the given date is after the current date.
 *
 * @param day The day of the month.
 * @param month The month of the year.
 * @param year The year in four digits.
 *
 * @return int 1 if the given date is after the current date, 0 otherwise.
 */
int compare_date(int day, int month, int year);

/**
 * @brief Creates a new appointment struct.
 *
 * @param type Type of the appointment.
 * @param hour Hour of the appointment.
 * @param day Day of the appointment.
 * @param month Month of the appointment.
 * @param year Year of the appointment.
 * @param name Name of the appointment.
 *
 * @return Returns a new Appointment struct.
 */
Appointment_t create_appointment(int type, int hour, int day, int month,
                                 int year, char *name);

/**
 * @brief Adds an appointment to the head of the linked list.
 *
 * @param head Pointer to the pointer of the head node of the list.
 * @param appointment Appointment struct to add.
 *
 */
void add_appointment(appointment_node_t *head, Appointment_t appointment);

/**
 * @brief Removes an appointment from the head of the linked list.
 *
 * @param head Pointer to the pointer of the head node of the list.
 *
 */
void delete_appointment(appointment_node_t *head);

/**
 * @brief Searches for an appointment by date.
 *
 * @param head Pointer to the head node of the list.
 * @param hour Hour of the appointment to search for.
 * @param day Day of the appointment to search for.
 * @param month Month of the appointment to search for.
 * @param year Year of the appointment to search for.
 *
 * @return Returns a pointer to the appointment if found, NULL otherwise.
 */
Appointment_t search_appointment_by_date(appointment_node_t head, int hour,
                                         int day, int month, int year);

/**
 * @brief Makes a new appointment and adds it to the linked list.
 *
 * @param head Pointer to the pointer of the head node of the list.
 * @param type Type of the appointment.
 * @param hour Hour of the appointment.
 * @param day Day of the appointment.
 * @param month Month of the appointment.
 * @param year Year of the appointment.
 * @param name Name of the appointment.
 *
 * @return Returns 1 if successful, 0 otherwise.
 */
int make_appointment(appointment_node_t *head, int type, int hour, int day,
                     int month, int year, char *name);

/**
 * @brief Prints all appointments in the linked list with the given name.
 *
 * @param head Pointer to the head node of the list.
 * @param name Name of the appointments to print.
 *
 */
void print_appointments_by_name(appointment_node_t head, char *name);

/**
 * @brief Deletes the appointment from the linked list that matches the given
 * date.
 *
 * @param head Pointer to the pointer of the head node of the list.
 * @param hour Hour of the appointment to delete.
 * @param day Day of the appointment to delete.
 * @param month Month of the appointment to delete.
 * @param year Year of the appointment to delete.
 *
 * @return Returns 1 if the appointment is found and deleted, 0 otherwise.
 */
int delete_appointment_by_date(appointment_node_t *head, int hour, int day,
                               int month, int year);

#endif