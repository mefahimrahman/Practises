#include<stdio.h>

int main()
{
    int n;
    while(scanf("%d",&n)!=EOF)
    {
        if(n==0)
            break;
        else
        {
            if(n<=100)
                printf("f91(%d) = 91\n",n);
            else
                printf("f91(%d) = %d\n",n,n-10);
        }
    }
    return 0;
}
