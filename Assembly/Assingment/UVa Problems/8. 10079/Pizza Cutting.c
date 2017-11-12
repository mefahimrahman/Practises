#include<stdio.h>

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
