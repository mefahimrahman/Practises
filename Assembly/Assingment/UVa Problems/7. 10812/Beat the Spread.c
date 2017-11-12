#include<stdio.h>
int main()
{
    long long int test,a,b,i,c,d;
    scanf("%lld",&test);
    {
        for(i=1;i<=test;i++)
        {
            scanf("%lld %lld",&a,&b);
            if(b>a||(a-b)%2!=0)
                printf("impossible\n");
            else
            {
                c=(a-b)/2;
                d=c+b;
                printf("%lld %lld\n",d,c);
            }
        }
    }
    return 0;
}
