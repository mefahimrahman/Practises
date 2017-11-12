#include<stdio.h>

int main()
{
    int t,row,res,col;
    while(scanf("%d %d",&row,&col)!=EOF)
    {
        t=row*col;
        res=t-1;
        printf("%d\n",res);
    }
    return 0;
}

