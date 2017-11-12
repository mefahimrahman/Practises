#include<stdio.h>
int main()
{
    int inp;
    while(scanf("%d",&inp)==1)
        if(inp%6!=0)
            printf("N\n");
        else
            printf("Y\n");
    return 0;
}
