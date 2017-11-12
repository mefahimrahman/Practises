#include<stdio.h>

int main()
{
    int d,test,a,b,c;
    scanf("%d",&test);
    while(test)
    {
        scanf("%d %d %d",&a,&b,&c);
        d=a+b;
        if(a==0 ||b==0||c==0)
            printf("Wrong!!\n");
        else if(d>c)
            printf("OK\n");
        else
            printf("Wrong!!\n");

        test--;
    }
    return 0;
}
