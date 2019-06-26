//uva 10110
#include<stdio.h>
#include<math.h>
int main()
{
    long long int a,b,c,d;

    while(scanf("%lld",&a)==1)
    {
        if(a==0)
            break;
        b = sqrt(a);
        c = b*b;
        if(c==a)
            printf("yes\n");
        else
            printf("no\n");
    }
    return 0;
}
