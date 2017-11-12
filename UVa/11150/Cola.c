#include<stdio.h>

int main()
{
    int fullbottle,total;
    while(scanf("%d",&total)!=EOF)
    {
        fullbottle=total;
        while(total>=3)
        {
            fullbottle=fullbottle+(total/3);
            total=(total/3)+(total%3);
        }
        if(total==2)
            fullbottle++;

        printf("%d\n",fullbottle);
    }
    return 0;
}


