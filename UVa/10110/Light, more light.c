#include<stdio.h>
#include<math.h>

int main()
{
    long int number,pn,a;
    while(scanf("%ld",&number)!=EOF)
    {
        if(number==0)
            break;
        else
        {
         a=sqrt(number);
        pn=a*a;
        if(number==pn)
            printf("yes\n");
        else
            printf("no\n");
        }
    }
    return 0;
}
