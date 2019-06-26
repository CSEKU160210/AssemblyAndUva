#include<stdio.h>
int main()
{
    int low,high,temp,i,n,j,sum,count;
    while(scanf("%d%d",&low,&high)&&low>0&&high>0)
    {
        sum = 0;
        printf("%d %d ",low,high);
        if(low>high)
        {
            temp = high;
            high = low;
            low = temp;
        }
        for(i = low;i<=high;i++)
        {
           count = 1;
            for(j = i; j!=1;j==j)
            {
                if(j%2==0)
                    j = j/2;
                else
                    j=3*j+1;
                    count=count+1;
            }
            if(count>=sum)
                sum = count;
        }
        printf("%d",sum);
    }
    return 0;
}
