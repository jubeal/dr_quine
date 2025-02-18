#include <stdio.h>

/*
  this is the outside comment
*/

void display(char* value) {
  printf(value, 10, 34, value);
}

int main() {
  /*
    this is the main function comment
  */
  char* src = "#include <stdio.h>%1$c%1$c/*%1$c  this is the outside comment%1$c*/%1$c%1$cvoid display(char* value) {%1$c  printf(value, 10, 34, value);%1$c}%1$c%1$cint main() {%1$c  /*%1$c    this is the main function comment%1$c  */%1$c  char* src = %2$c%3$s%2$c;%1$c%1$c  display(src);%1$c}";

  display(src);
}