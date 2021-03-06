#David Lindsey
#cs2750 pa6
# 24-07-2018


CC = gcc -std=c99
CFLAGS = -Wall -g

OBJ = main.o newAcct.o menu.o getAccts.o

bank: $(OBJ)
	$(CC) $(CFLAGS) -o bank $(OBJ)
main.o: main.c newAcct.h menu.h getAccts.h
	$(CC) $(CFLAGS) -c main.c
newAcct.o: newAcct.c
	$(CC) $(CFLAGS) -c newAcct.c
menu.o: menu.c
	$(CC) $(CFLAGS) -c menu.c
getAccts.o: getAccts.c
	$(CC) $(CFLAGS) -c getAccts.c


clean:
	rm bank $(OBJ)
