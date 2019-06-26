//uva prblm 11777

#include<stdio.h>
int main()
{
    int t1,t2,f,at,ct1,ct2,ct3,c,d,n,i;
    while(scanf("%d",&n)==1)
    {
        for(i=1;i<=n;i++)
        {
        scanf("%d%d%d%d%d%d%d",&t1,&t2,&f,&at,&ct1,&ct2,&ct3);
        if(ct1<=ct2 && ct1<=ct3)
        c=(ct2+ct3)/2;
        else if(ct2<=ct1 && ct2<=ct3)
        c=(ct1+ct3)/2;
        else if(ct3<=ct1 && ct3<=ct2)
        c=(ct1+ct2)/2;
        d=t1+t2+f+at+c;
        if(d>=90)
        printf("Case %d: An",i);
        else if(d>=80)
        printf("Case %d: Bn",i);
        else if(d>=70)
        printf("Case %d: Cn",i);
        else if(d>=60)
        printf("Case %d: Dn",i);
        else if(d<60)
        printf("Case %d: Fn",i);
        }
    }
    return 0;
}
