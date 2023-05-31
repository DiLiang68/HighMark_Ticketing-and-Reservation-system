#include "login/login.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    account_list_t account_list = init();
    int type = login_menu(account_list);
    return 0;
}
