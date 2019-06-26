#include<stdio.h>
#include<math.h>
int main()
{
    int n,i;
    double t1,t2,u,v,d;

    scanf("%d",&n);
    for(i=0;i<n;i++)
    {
        scanf("%lf%lf%lf",&d,&v,&u);
       if( v==0 || u==0 || v>=u)
        printf("Case %d: can't determine\n", i+1);
       else
        {
                    t1 = d/u;

         t2 = (d/sqrt((u*u)-(v*v)));
       printf("Case %d: %.3lf\n",i+1,t2-t1);
        }

    }
    return 0;

}

