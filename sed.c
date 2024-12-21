// sed.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <regex.h>

#define MAX_LINE_LENGTH 1024

void replace_text(const char *filename, const char *regex_pattern, const char *replacement) {
    FILE *file = fopen(filename, "r+");
    char line[MAX_LINE_LENGTH];
    regex_t regex;

    if (!file) {
        perror("Ошибка открытия файла");
        exit(EXIT_FAILURE);
    }

    if (regcomp(&regex, regex_pattern, REG_EXTENDED)) {
        fprintf(stderr, "Ошибка компиляции регулярного выражения.\n");
        fclose(file);
        exit(EXIT_FAILURE);
    }

    FILE *temp = tmpfile();
    if (!temp) {
        perror("Ошибка создания временного файла");
        fclose(file);
        exit(EXIT_FAILURE);
    }

    while (fgets(line, MAX_LINE_LENGTH, file)) {
        regmatch_t match;
        if (regexec(&regex, line, 1, &match, 0) == 0) {
            size_t prefix_len = match.rm_so;
            fprintf(temp, "%.*s%s%s", (int)prefix_len, line, replacement, line + match.rm_eo);
        } else {
            fputs(line, temp);
        }
    }

    regfree(&regex);
    rewind(temp);
    freopen(filename, "w", file); // открытие файла для записи

    char *result;
    while ((result = fgets(line, MAX_LINE_LENGTH, temp))) {
        fputs(line, file);
    }

    fclose(file);
    fclose(temp);
}

void delete_lines(const char *filename, const char *regex_pattern) {
    FILE *file = fopen(filename, "r+");
    char line[MAX_LINE_LENGTH];
    regex_t regex;

    if (!file) {
        perror("Ошибка открытия файла");
        exit(EXIT_FAILURE);
    }

    if (regcomp(&regex, regex_pattern, REG_EXTENDED)) {
        fprintf(stderr, "Ошибка компиляции регулярного выражения.\n");
        fclose(file);
        exit(EXIT_FAILURE);
    }

    FILE *temp = tmpfile();
    if (!temp) {
        perror("Ошибка создания временного файла");
        fclose(file);
        exit(EXIT_FAILURE);
    }

    while (fgets(line, MAX_LINE_LENGTH, file)) {
        if (regexec(&regex, line, 0, NULL, 0) != 0) {
            fputs(line, temp);
        }
    }

    regfree(&regex);
    rewind(temp);
    freopen(filename, "w", file); // открытие файла для записи

    char *result;
    while ((result = fgets(line, MAX_LINE_LENGTH, temp))) {
        fputs(line, file);
    }

    fclose(file);
    fclose(temp);
}

void insert_text(const char *filename, const char *insert_text, int position) {
    FILE *file = fopen(filename, "r+");
    char line[MAX_LINE_LENGTH];
    
    if (!file) {
        perror("Ошибка открытия файла");
        exit(EXIT_FAILURE);
    }

    FILE *temp = tmpfile();
    if (!temp) {
        perror("Ошибка создания временного файла");
        fclose(file);
        exit(EXIT_FAILURE);
    }

    while (fgets(line, MAX_LINE_LENGTH, file)) {
        if (position == 0) {
            fprintf(temp, "%s%s", insert_text, line); // Вставляем текст перед строкой
        } else {
            line[strcspn(line, "\n")] = 0;
            fprintf(temp, "%s%s\n", line, insert_text); // Вставляем текст после строки
        }
    }

    rewind(temp);
    freopen(filename, "w", file); // открытие файла для записи

    while (fgets(line, MAX_LINE_LENGTH, temp)) {
        fputs(line, file);
    }

    fclose(file);
    fclose(temp);
}

