#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {
  int i = 5;
  if (fopen("Sully_5.c", "r"))
    i--;
  char* code = "#include <stdio.h>%1$c#include <string.h>%1$c#include <stdlib.h>%1$c%1$cint main() {%1$c  int i = %4$i;%1$c  if (fopen(%2$cSully_5.c%2$c, %2$cr%2$c))%1$c    i--;%1$c  char* code = %2$c%3$s%2$c;%1$c  if (i >= 0) {%1$c    char binary[8];%1$c    char cFile[10];%1$c    char cmd[63];%1$c%1$c    sprintf(binary, %2$cSully_%5$ci%2$c, i);%1$c    strcpy(cFile, binary);%1$c    strcat(cFile, %2$c.c%2$c);%1$c    void* fp = fopen(cFile, %2$cw%2$c);%1$c    fprintf(fp, code, 10, 34, code, i, 37);%1$c    fclose(fp);%1$c%1$c    sprintf(cmd, %2$cgcc -Wall -Wextra -Werror -o %5$cs %5$cs && ./%5$cs%2$c, binary, cFile, binary);%1$c%1$c    system(cmd);%1$c  }%1$c}";
  if (i >= 0) {
    char binary[8];
    char cFile[10];
    char cmd[63];

    sprintf(binary, "Sully_%i", i);
    strcpy(cFile, binary);
    strcat(cFile, ".c");
    void* fp = fopen(cFile, "w");
    fprintf(fp, code, 10, 34, code, i, 37);
    fclose(fp);

    sprintf(cmd, "gcc -Wall -Wextra -Werror -o %s %s && ./%s", binary, cFile, binary);

    system(cmd);
  }
}