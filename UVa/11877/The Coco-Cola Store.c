#include<stdio.h>
#define true 1

int main()
{
    int test,emptybottle,fullbottle,drink;
    while(scanf("%d",&emptybottle)!=EOF)
    {

        if(emptybottle==0)
            break;
        else
        {
            drink=0;
            while(true)
            {
                fullbottle=emptybottle/3;
                emptybottle=emptybottle%3;
                drink=drink+fullbottle;
                emptybottle=emptybottle+fullbottle;

                if(emptybottle==2)
                    emptybottle++;
                if(emptybottle==0||emptybottle==1)
                {
                    printf("%d\n",drink);
                    break;
                }
            }
        }

    }
    return 0;
}
