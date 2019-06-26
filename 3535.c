#include<stdio.h>
#include<math.h>
int main()
{
    int a,b,c;
    while(1)
    {
        scanf("%d%d%d",&a,&b,&c);
        if(a==0&&b==0&&c==0)
            break;
        if(a==0||b==0||c==0)
            printf("wrong\n");
        else
        {
            if(c==sqrt((a*a)+(b*b)))
                printf("right\n");
            else if(b==sqrt((a*a)+(c*c)))
                printf("right\n");
            else if(a==sqrt((b*b)+(c*c)))
                printf("right\n");
            else
                printf("wrong\n");
        }

    }
     return 0;
}
