#include<stdio.h>
int main()
{
    long long int A,L,i,temp,j=1;
    while(scanf("%lld %lld",&A,&L)==2)
    {
        if(A<0 && L<0)
            break;
        temp=A;
        for(i=1; i!=0; i++)
        {
            if(temp==1)
                break;
            if(temp%2==0)
                temp=temp/2;
            else
                temp=temp*3+1;
            if(temp>L)
                break;
        }

        printf("Case %lld: A = %lld, limit = %lld, number of terms = %lld\n",j,A,L,i);
        j++;
    }
}
