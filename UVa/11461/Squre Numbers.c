#include<stdio.h>
#include<math.h>

int main()
{
    int test,n1,n,i,n2,count,sq;
    while(scanf("%d %d",&n1,&n2)!=201)
    {
        if(n1==0 && n2==0)
            break;
        else
        {
            count =0;
            for(i=n1; i<=n2; i++)
            {
                n=sqrt(i);
                sq=n*n;
                if(i==sq)
                    count++;
            }
            printf("%d\n",count);
        }
    }
    return 0;
}
