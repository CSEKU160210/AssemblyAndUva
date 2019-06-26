#include<stdio.h>
#include<math.h>
int main()
{
  long   int n,i,j,temp,k,a,b;
    while(scanf("%ld",&n)==1)
    {
        j=0;
        for(i=2;i<sqrt(n);i++)
        {
            if(n%i==0)
                j++;
        }
        k=0;
        b=n;
        while(b!=0)
        {
            a = b%10;
            b=b/10;
            k=k*10+a;
        }

        temp =0;
            for(i=2;i<sqrt(k);i++)
            {
                if(k%i==0)
                    temp++;

            }
    if(j==0 && temp ==0)
      printf(" %d is emirp.\n",n);
    else if(j==0 && temp!=0)
    {
        printf("%d is prime.\n",n);
    }
    else
        printf("%d is not prime.\n",n);



    }
    return 0;
}
