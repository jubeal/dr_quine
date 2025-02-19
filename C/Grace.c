#include <stdio.h>
#define FILENAME "Grace_kid.c"
#define SRC "#include <stdio.h>%1$c#define FILENAME %2$cGrace_kid.c%2$c%1$c#define SRC %2$c%3$s%2$c%1$c#define WRITE()int main(){fprintf(fopen(FILENAME, %2$cw%2$c), SRC, 10, 34, SRC);}%1$c%1$cWRITE()%1$c/*%1$c  The code comment%1$c*/"
#define WRITE()int main(){fprintf(fopen(FILENAME, "w"), SRC, 10, 34, SRC);}

WRITE()
/*
  The code comment
*/