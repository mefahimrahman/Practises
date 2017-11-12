#include<stdio.h>
 int main()
 {
    int t,row,col;
   scanf("%d",&t);
   while(t--)
   {
      scanf("%d %d",&row,&col);
      printf("%d\n",(row/3)*(col/3));
    }
    return 0;
 }
