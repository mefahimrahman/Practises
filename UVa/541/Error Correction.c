#include<stdio.h>

int main()
{
    int size,a[100][100],i,j,rowsum,colsum,rowtrace,coltrace,rowchk,colchk;
    while(scanf("%d",&size)==1)
    {
        if(size==0)
            break;
        else
        {
            for(i=1; i<=size; i++)
            {
                for(j=1; j<=size; j++)
                {
                    scanf("%d",&a[i][j]);
                }
            }

            rowchk=0;
            colchk=0;

            for(i=1; i<=size; i++)
            {
                rowsum=0;
                for(j=1; j<=size; j++)
                {
                    rowsum+=a[i][j];
                }
                if(rowsum%2!=0)
                {
                    rowtrace=i;
                    rowchk++;
                }
            }

            for(j=1; j<=size; j++)
            {
                colsum=0;
                for(i=1; i<=size; i++)
                {
                    colsum+=a[i][j];
                }
                if(colsum%2!=0)
                {
                    coltrace=j;
                    colchk++;
                }
            }

            if(rowchk==0 && colchk==0)
                printf("OK\n");
            else if(rowchk==1 && colchk==1)
                printf("Change bit (%d,%d)\n",rowtrace,coltrace);
            else
                printf("Corrupt\n");
        }
    }
    return 0;
}
