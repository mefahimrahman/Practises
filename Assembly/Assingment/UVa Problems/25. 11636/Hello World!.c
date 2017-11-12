#include <stdio.h>
int main()
{
    int line,copy,n,t=0;
    while(scanf("%d",&n)==1)
    {
        if(n<0)
        {
            break;
        }
        t+=1;
        line=1;
        copy=0;
        while(line<n)
        {
            line+=line;
            copy+=1;
        }
        printf("Case %d: %d\n",t,copy);
    }
    return 0;
}

