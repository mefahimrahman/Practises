#include<stdio.h>
#include<math.h>

int main()
{
    int  a,b,c,d,e,f;
    while(scanf("%d %d %d",&a,&b,&c)!=EOF)
    {
        if(a==0 && b==0 && c==0)
            break;
        else if(a==b && b==a)
            printf("wrong\n");
        else
        {
            d=sqrt(a*a+b*b);
            e=sqrt(b*b+c*c);
            f=sqrt(a*a+c*c);
            if(d==c ||a==e||b==f)
                printf("right\n");
            else
                printf("wrong\n");
        }
    }
    return 0;
}
