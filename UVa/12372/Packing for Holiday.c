#include<stdio.h>
int main()
{
    int h,l,w,test,i;
    while(scanf("%d",&test)==1)
    {
        for(i=1;i<=test;i++)
        {
            scanf("%d %d %d",&h,&l,&w);
            if(h<=20 && l<=20 && w<=20)
            printf("Case %d: good\n",i);
            else
            printf("Case %d: bad\n",i);
        }
    }
    return 0;
}
