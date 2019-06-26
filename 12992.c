//UVA PRBLM 12992
#include<stdio.h>
int main()
{
    int n,m,count = 1;
    scanf("%d",&n);
    while(n--)
    {

        scanf("%d",&m);
         printf("Case #%d: %d\n",count++,2*m-1);
    }
    return 0;
}
