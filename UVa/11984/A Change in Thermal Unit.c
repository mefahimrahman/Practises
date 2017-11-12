#include<stdio.h>

int main()
{
    int test,celcious,i,diff;
    float out,f,farenheit;
    scanf("%d",&test);
    for(i=1;i<=test;i++)
    {
        scanf("%d %d",&celcious,&diff);
        farenheit=((1.8*celcious)+32);
        f=(farenheit+diff);
        out=((f-32)*(5/9));
        printf("Case %d: %.2f\n",i,out);
    }
    return 0;
}
