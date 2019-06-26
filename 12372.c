//UVA PRBLM 12372
#include<stdio.h>
int main()
{
    int t,l,w,h,count = 0;
    scanf("%d",&t);
    while(t--)
    {
        scanf("%d%d%d",&l,&w,&h);
        if(l<=20 && w<=20 && h<=20)
            printf("Case %d: good\n",++count);
        else
            printf("Case %d: bad\n",++count);
    }
    return 0;
}
