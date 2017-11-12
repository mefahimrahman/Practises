#include <stdio.h>

int main()
{
    long int n,a;
    while(scanf("%ld", &n)==1)
    {
        if(n<0)
            break;
        if( n>=0 && n<=210000000)
        {
            a= ((n*(n+1))/2)+1;
            printf("%ld\n", a);
        }
    }
    return 0;
}







/*#include<stdio.h>

int main()
{
    long long int test,value;
    while(scanf("%lld",&test)!=EOF)
    {
        if(test>=0 && test<=210000000)
        {
            value=((test*(test+1))/2)+1;
            printf("%lld\n",value);
        }
        else
            break;
    }
    return 0;
}
*/
