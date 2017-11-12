#include <stdio.h>

int main()
{
    int vertices,i=1;
    while(1)
    {
        scanf("%d",&vertices);
        if(vertices==0)
            break;
        printf("Case %d: %d\n",i,vertices/2);
        i++;
    }
    return 0;
}
