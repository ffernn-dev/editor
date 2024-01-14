CC = gcc
CFLAGS = -Wall -Wextra -Wshadow -Wno-unused-function -Ilib -fsanitize=address -lm -lGL -lglfw -DGLFW_BUILD_WAYLAND=ON -DGLFW_BUILD_X11=OFF
SRC = main.c
TARGET = editor

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)
