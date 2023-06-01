#include "menu/menu.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    account_list_t account_list = init();
    int type = 0;
    char *name = login_menu(account_list, &type);
    printf("%s login successfully!\n", name);
    if (type) {
        admin_menu(account_list);
    } else {
        appoint_menu(name);
    }
    free_account_list(account_list);
    return 0;
}
