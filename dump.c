#include <stdio.h>

#include "font8x8_basic.h"


int main(int argc, char **argv) {
  printf("local %s = {\n", "font");
  int i;
  int x;
  int y;
  int v;
  int all_zero;
  char const * msg;
  
  for(i = 0; i != 128; i++) {

    all_zero = 1;
    for (x = 0; x != 8; x++) {
      if (font8x8_basic[i][x] != 0) {
        all_zero = 0;      
        break;
      }
    }
    if (all_zero == 1) { 
      continue;
    }

    printf("[%d]='",i);    
    for(x = 0; x != 8; x++){
      
    
      for( y = 0; y != 8; y++){
        v = font8x8_basic[i][x] & 1 << y;
        if (v != 0) {
          msg = "X";
        } else {
          msg = " ";
        }
        printf("%s",msg);
      }
    }
    if (i == 127) {
      printf("'\n");
    } else {
      printf("',\n");
    }
  }
  printf("};\n");
  return 0;
}
