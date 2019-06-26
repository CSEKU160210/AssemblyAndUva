#include<stdio.h>
int main()
{
    int a,b,r1,r2;
    while(1)
    {
int sum=0,c=0;
        scanf("%d%d",&a,&b);
        if(a==0&&b==0)
            break;
        while(a>0&&b>0)
        {


            r1=a%10;

            r2=b%10;

            sum = r1+r2;
            a=a/2;
            b=b/2;
            if(sum+c>=10)
            {
                c++;
            }

        }
        if(c>0)
        {
            printf("%d carry operation\n",c);
        }
        else
            printf("No carry operation \n");
    }
    return 0;
}
