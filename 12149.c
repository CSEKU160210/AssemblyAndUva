//uva 12149
#include<stdio.h>
int main()
{
    int n,s;
    while(scanf("%d",&n)==1)
    {
        if(n==0)
            break;
            s=(n*(n+1)*(2*n+1))/6;
        printf("%d\n",s);
    }
    return 0;
}
