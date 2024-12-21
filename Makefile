# Makefile
CC = gcc
CFLAGS = -Wall -Wextra -O2
TARGET = sed_simplified
SRC = main.c sed.c
OBJ = $(SRC:.c=.o)

.PHONY: all clean test

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

test: $(TARGET)
	@echo "Запуск тестов:"
	@echo -e "строка1\nстрока2\nзаменить_это\nстрока4" > input.txt
	@echo "Файл до изменений:" && cat input.txt
	@./$(TARGET) input.txt -r "заменить_это" "заменено"
	@echo "Файл после замены:" && cat input.txt
	@./$(TARGET) input.txt -d "строка2"
	@echo "Файл после удаления:" && cat input.txt

