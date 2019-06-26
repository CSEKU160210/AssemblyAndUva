#uva 12802
#include<stdio.h>
long long palindrm(int n)
{
    int t,r;
    r=0;

    t=n;
    while(t!=0)
    {
        r=r*10;
        r=r+t%10;
        t=t/10;
    }
    if(n==r)
        return 1;
    return 0;
}


long long prime(int n)
{
    int i,flag=1;
    for(i=2;i<=n/2;++i)
  {
      if(n%i==0)
      {
          flag=0;
          break;
      }
  }
  return flag;
}


int main()
{
    long long int i,j,n,m;

    while(1)
    {
        scanf("%d",&n);
        printf("%d\n",n*2);

        if(palindrm(n)==1)
        {
             m=prime(n);
             if(m!=0)
                break;
        }

    }
    return 0;
}
