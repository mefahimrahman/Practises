#include<stdio.h>
int main ()
{
    int t,i,n,c;
    while (scanf("%d",&t)==1)
    {
        i=5;
        n=0;
        while (i--)
        {
            scanf("%d",&c);
            if (c==t)
                n++;
        }
        printf("%d\n",n);
    }
    return 0;
}
