// main.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <regex.h>

#define MAX_LINE_LENGTH 1024

int main(int argc, char *argv[]) {
    if (argc < 3) {
        fprintf(stderr, "Неверное количество аргументов.\n");
        return EXIT_FAILURE;
    }

    const char *filename = argv[1];
    const char *command = argv[2];

    if (strcmp(command, "-r") == 0 && argc == 5) {
        replace_text(filename, argv[3], argv[4]);
    } else if (strcmp(command, "-d") == 0 && argc == 4) {
        delete_lines(filename, argv[3]);
    } else if (strcmp(command, "-i") == 0 && argc == 5) {
        if (strcmp(argv[3], "-f") == 0) {
            insert_text(filename, argv[4], 0); 
        } else if (strcmp(argv[3], "-b") == 0) {
            insert_text(filename, argv[4], 1);
        } else {
            fprintf(stderr, "Неверный флаг вставки. Используйте -f для начала или -b для конца.\n");
            return EXIT_FAILURE;
        }
    } else {
        fprintf(stderr, "Неверная команда или аргументы.\n");
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

