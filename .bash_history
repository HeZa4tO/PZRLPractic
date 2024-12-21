gcc
sudo apt install gcc
gcc
sudo apt install gcc
св
cd
cd C:\Users\dissemblance\Desktop\University
se:\Users\dissemblance\DesktopUniversity
gcc
sudo apt install gcc
--fix-missing
sudo apt-get install gcc
sudo apt-get --fix-missing gcc 
sudo apt-get --fix-missing
run apt-get update
run apt-get update gcc
snap info gcc
snap info
run
gcc
apt install gcc
sudo apt install gcc
clear
sudo apt update
gcc --version
clear
sudo apt update
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt install gcc-12 g++-12 gcc-13 g++-13 -y
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 12 --slave /usr/bin/g++ g++ /usr/bin/g++-12
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 13 --slave /usr/bin/g++ g++ /usr/bin/g++-13
sudo update-alternatives --config gcc
gcc --version
gcc
св
cd
cd C:\Users\dissemblance\Desktop\University
C:\Users\dissemblance\Desktop\University
cd C:\Users\dissemblance\Desktop\University
ls
cd
mkdir University
ls
cd University/
touch main.c
vim main.c 
gcc main.c -o main
vim main.c 
gcc main.c -o main
./main 
vim main.c
gcc main.c -o main
vim main.c
gcc main.c -o main
vim main.c
gcc main.c -o main
vim main.c
cd C:\Users\dissemblance\Desktop\University
cd
ls
cd University/
ls
gcc main.c
vim main.c
gcc main.c -o main
./main
vim main.c
gcc main.c -o main
./main
gcc man
man gcc
rm a.out
ls
ls main.c
ls
rm main.c
ls
./main 
clear
cd
l
ls
./
../
.../
rm -r University/
ls
mkdir Univer
ls
cd Univer/
history
ls
vim main.c
gcc main.c -o main
./main 
ls
history
cleart
clear
gcc --version
ды
ls
cd Univer/
ls
vim main.c
./main 
cd C:\Users\dissemblance\Desktop\University
cd
cd ../
cd ./
cd ../
cd C:\Users\dissemblance\Desktop\University
cd C:/Users\dissemblance\Desktop\University
cd C:/Users/dissemblance/Desktop/University
mkdir Univer
cd University
clear
cd 
cd ./
cd .../
cd ../
mkdir Univer
clear
cd /..
cd ./
cd ../
cd /...
touch lab1.h
vim lab1.h
vim lab1.c
vim main.c
ls
gcc main.c -o main
ls
gcc main.c lab1.c -o main
vim lab1.c
vim main.c
gcc main.c lab1.c -o main
gcc main.c lab1.c -o main -lm
vim main.c
ls
vim lab1.c
rm lab1.c
ls
rm lab1.h
rm main.c
ls
clear
rm main
ls
vim lab1.h
vim lab1.c
vim main.c
gcc main.c lab1.c -o lab1 -lm
./lab1
ls
rm lab1.c
rm lab1.h
ls
rm lab1
rm main.c
ls
clear
vim main.c
vim lab2.h
vim lab2.c
gcc lab2.c main.c -o lab2
./lab2 
ls
rm lab2
rm lab2.c
rm lab2.h 
rm main.c 
ls
vim main.c
ls
vim books.txt
ls
vim books.txt
gcc main.c -o main
./main books.txt 1999
vim books.txt 
./main books.txt 1999
./main books.txt 
vim main.c
gcc main.c -o main
./main books.txt 1999
./main books.txt 1934
./main books.txt 1800
vim main.c
gcc main.c -o main
./main books.txt 1800
./main books.txt 1934
ды
ls
rm books.txt 
rm main
rm main.c 
vim Makefile
vim main.c
make
ls
rm main.c 
vim sed_simplified
vim sed_simplified.c
make
sudo app install make
sudo apt install make
make
ls
./sed_simplified input.txt -r "old" "new"
vim input.txt
./sed_simplified input.txt -r "old" "new"
vim input.txt
make clean
ls
make test
rm sed_simplified.c
vim sed_simplified.c
make test
rm input.txt 
vim example.txt
make test
ls
touch example.txt
ls
make test
vim example.txt 
./sed_simplified example.txt -r "to be replaced" "has been replaced"
vim example.txt 
./sed_simplified example.txt -d "to delete"
vim example.txt 
./sed_simplified example.txt -i -f "Start: "
vim example.txt 
make test
vim Makefile 
make test
vim example.txt 
make test
vim sed_simplified
vim sed_simplified.c
./sed_simplified example.txt 's/old_text_regex/new_text/'
vim Makefile 
./sed_simplified example.txt 's/old_text_regex/new_text/'
rm sed_simplified.c
vim sed_simplified.c
vim Makefile 
touch input.txt
vim input.txt 
./sed_simplified input.txt 's/заменить_это/заменено/'
ls
vim sed_simplified
vim sed_simplified.c
./sed_simplified input.txt 's/заменить_это/заменено/'
rm sed_simplified.c
vim sed_simplified.c
./sed_simplified input.txt 's/заменить_это/заменено/'
ls
rm example.txt 
vim input.txt 
ls./sed_simplified input.txt 's/заменить_это/заменено/'
./sed_simplified input.txt 's/заменить_это/заменено/'
rm example.txt 
rm sed_simplified.c
vim sed_simplified.c
./sed_simplified input.txt 's/заменить_это/заменено/'
vim input.txt 
rm sed_simplified.c
vim sed_simplified.c
./sed_simplified input.txt 's/заменить_это/заменено/'
./sed_simplified input.txt 's/old_text_regex/new_text/'
vim Makefile 
make test
vim Makefile 
make test
vim Makefile 
vim input.txt 
make test
rm example.txx
rm sed_simplified.c
vim sed_simplified.c
rm Makefile 
vim Mekefile CC = gcc
CFLAGS = -Wall -Wextra -O2
TARGET = sed_simplified
SRC = sed_simplified.c
OBJ = $(SRC:.c=.o)
.PHONY: all clean test
# Цель "all" для сборки программы
all: $(TARGET)
# Сборка исполняемого файла
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^
# Компиляция объектных файлов
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
# Очистка временных файлов
clean:
	rm -f $(OBJ) $(TARGET)
# Тестирование программы
test: $(TARGET)
	@echo "Запуск тестов:"
	@echo "Создание тестового файла:"
	@echo -e "строка1\nстрока2\nзаменить_это\nстрока4" > input.txt
	@echo "Файл до изменений:" && cat input.txt
	@echo "Пример замены с регулярным выражением:" 
	@./$(TARGET) input.txt 's/заменить_это/заменено/' || echo "Тест не прошел."
	@echo "Файл после замены:" && cat input.txt
	@echo "Пример удаления строки:" 
	@./$(TARGET) input.txt '/строка2/d' || echo "Тест не прошел."
	@echo "Файл после удаления:" && cat input.tx
vim Makefile
make test
rm sed_simplified.c
vim sed_simplified.c
rm sed_simplified.c
vim sed_simplified.c
rm Makefile
vim Makefile
make test
ls
