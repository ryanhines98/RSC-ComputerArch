#include <string.h>

//assembly function needs prototype to recognize function
void asm_function(const char* haiku, unsigned int count);

//calls assembly passing the paramters to %rdi and %rsi
int main() {
    const char *haiku = "Autumn moonlight\na worm digs silently\ninto the chestnut.\n- Yosa Buson\n\0";
    asm_function(haiku,strlen(haiku));

    return 0;
}