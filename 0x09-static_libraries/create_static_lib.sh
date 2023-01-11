#!/bin/bash
gcc -wall -pedantic -Werror -Wextra -C *.c
ar -rc liball.a *.o
ranlib liball.a
