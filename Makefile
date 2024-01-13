CC = gcc
CFLAGS = -std=c99
CFLAGS += -Wall -Wextra -Wshadow -Wno-unused-function -Ilib -fsanitize=address
SRC = main.c
TARGET = editor

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)
