#include <stdio.h>

//called from assembly, paramater taken from %rdi
void haiku_func(char* haiku) {
    puts(haiku);

    return;
}