//UVA PRBLM 11854
#include<stdio.h>
#include<math.h>
int main()
{
    int a,b,c,d,i,n;
    while(scanf("%d%d%d",&a,&b,&c)==2)
    {
        if(a==0&&b==0&&c==0)
            break;
        else
        {
            if(c==sqrt((a*a)+(b*b)))
                printf("right\n");
            else
                printf("wrong\n");

        }
    }
    return 0;
}
