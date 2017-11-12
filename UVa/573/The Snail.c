#include <stdio.h>

int main()
{
    int H, D, F, sday;
    float U, alt, f;

    while(1)
    {
        scanf("%d %f %d %d", &H, &U, &D, &F);
        if(H == 0)
        {
            break;
        }
        sday = 1;
        alt = 0;
        f = U*F/100;
        while(1)
        {
            alt += U;
            if(U > 0)
                U -= f;
            if(alt > H)
            {
                break;
            }
            alt -= D;
            if(alt < 0)
            {
                break;
            }
            sday++;
        }
        if(alt < 0)
            printf("failure on day %d\n", sday);
        else
            printf("success on day %d\n", sday);
    }
    return 0;
}
