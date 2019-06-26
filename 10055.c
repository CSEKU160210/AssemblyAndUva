//UVA PRBLM 10055
#include<stdio.h>

int main()
{
   long long int c,a,b;

  while( scanf("%lld%lld",&a,&b)==2)
    {
        if(a>b)
       {
    c=a-b;
    }
    else
        c=b-a;
              printf("%lld\n",c);

    }

    return 0;
}
