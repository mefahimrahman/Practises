#include<stdio.h>

int main()
{
    int x,test;
    long int a,f,b,c,d,e;
    scanf("%ld",&test);
    for(x=1;x<=test;x++)
    {
        scanf("%ld %ld %ld",&a,&b,&c);

            d=a+b;
            e=b+c;
            f=a+c;
            if(d<=c||e<=a||f<=b||a<=0||b<=0||c<=0)
                printf("Case %ld: Invalid\n",x);
            else
                {
                    if(a==b&&b==c&&a>0&&b>0&&c>0)
                        printf("Case %ld: Equilateral\n",x);
                    else if(a==b||b==c||a==c&&a>0&&b>0&&c>0)
                        printf("Case %ld: Isosceles\n",x);
                    else if(a!=b&&b!=c&&a!=c&&a>0&&b>0&&c>0)
                        printf("Case %ld: Scalene\n",x);
                }

    }
    return 0;
}
