#include<stdio.h>

int main()
{
    int a,b,c,test,i;
    scanf("%d",&test);
    for(i=1;i<=test;i++)
    {
        scanf("%d %d %d",&a,&b,&c);
        if(a>b && b>c)
            printf("Case %d: %d\n",i,b);
        else if(b>a && a>c)
            printf("Case %d: %d\n",i,a);
        else if(c>a && a>b)
            printf("Case %d: %d\n",i,a);
        else if(c>b && b>a)
            printf("Case %d: %d\n",i,b);
        else if(a>c && c>b)
            printf("Case %d: %d\n",i,c);
        else if(b>c && c>a)
            printf("Case %d: %d\n",i,c);
        else
            printf("Case %d: %d\n",i,c);
    }
    return 0;
}
