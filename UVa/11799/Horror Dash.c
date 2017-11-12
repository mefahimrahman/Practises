#include<stdio.h>

int main()
{
    int test,t,a,temp,b;
    while(scanf("%d",&test)!=EOF)
    {
        for(t=1; t<=test; t++)
        {
            scanf("%d",&a);
            temp =0;
            while(a)
            {
                scanf("%d",&b);
                if(b>temp)
                    temp=b;

                a--;
            }
            printf("Case %d: %d\n",t,temp);
        }
    }
    return 0;
}
