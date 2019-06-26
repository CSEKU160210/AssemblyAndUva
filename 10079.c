//UVA PRBLM 10079

#include<stdio.h>
int main()
{
    int p;
    long long int n;
    while(scanf("%lld",&n))
    {
        if(n<0)
            break;
        printf("%lld\n",1+ (n*(n+1)/2));
    }
    return 0;
}
