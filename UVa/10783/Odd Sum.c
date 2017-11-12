#include<stdio.h>

int main()
{
    int test,a,b,sum,i,t;
    scanf("%d",&test);
    for(t=1;t<=test;t++)
    {
        scanf("%d",&a);
        scanf("%d",&b);
        sum=0;
        for(i=a;i<=b;i++)
        {
            if(i%2!=0)
            {
                sum=sum+i;
            }
        }
        printf("Case %d: %d\n",t,sum);
    }
    return 0;
}
