;uva 11364
#include<stdio.h>
#include<string.h>
int main()
{
   int t,d,c,n;
   scanf("%d",&t);
   while(t--)
   {
       scanf("%d",&c);
       int mx=0,mn=100;
       while(c--)
       {
           scanf("%d",&n);
           if(n>mx)
            mx=n;
           if(n<mn)
            mn=n;
        }
        d = 2*(mx-mn);
        printf("%d\n",d);

           }
    return 0;
}
