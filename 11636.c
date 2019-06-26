#include<stdio.h>
#include<math.h>
int main()
{
    int x,z,i,j,a;
    j=1;
    while(scanf("%d",&a)==1&&a>=0)
    {
        if(a==1)
            printf("Case %d: 0\n",j);
        for(i=1; i<=a; i++)
            if(a>pow(2,i)&&a<=pow(2,i+1))
                printf("Case %d: %d\n",j,i+1);
        j++;

    }
    return 0;
}
