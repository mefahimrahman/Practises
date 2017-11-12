#include<stdio.h>

int main()
{
    char ary[6];
    int test=1;
    while(1)
    {
        gets(ary);
        if(ary[0]=='*')
        {
            break;
        }
        else if(ary[0]=='H')
        {
            printf("Case %d: Hajj-e-Akbar\n",test++);
        }
        if(ary[0]=='U')
        {
            printf("Case %d: Hajj-e-Asghar\n",test++);
        }
    }
    return 0;
}
