#include <stdio.h>
#include <string.h>

void ascii2hex(char *ascii, char *hex) {
    int i = 0;
    while (ascii[i] != '\0') {
        sprintf(hex + i * 3, "%02X ", ascii[i]);
        i++;
    }
    hex[i * 3] = '\0'; // Null-terminate the hex string
}

int main()
{
    char ascii[100] = {0} ;
    char hex[400] = {0} ;

    printf("Enter ASCII string: ");
    fgets(ascii, sizeof(ascii), stdin);
    // Remove newline character if present
    size_t len = strlen(ascii);
    if (len > 0 && ascii[len - 1] == '\n') {
        ascii[len - 1] = '\0';
    }
    ascii2hex(ascii, hex);
    printf("Hexadecimal representation: %s\n", hex);
    return 0;
}