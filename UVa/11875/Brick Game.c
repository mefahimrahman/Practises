#include<stdio.h>

int main()
{
    int test,number,a,i,captain,mid,age;
    scanf("%d",&test);
    for(a=1;a<=test;a++)
    {
        scanf("%d",&number);
        mid=(number+1)/2;
        for(i=1;i<=number;i++)
        {
            scanf("%d",&age);
            if(i==mid)
                captain=age;
        }
        printf("Case %d: %d\n",a,captain);
    }
    return 0;
}
