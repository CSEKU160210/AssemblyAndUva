#include<stdio.h>
int main()
{
    int v,t;
    while(scanf("%d %d",&v,&t)==2)
    {
        if(v==0 && t==0)
        printf("0n");
        else
        printf("%dn",2*v*t);
    }
    return 0;
