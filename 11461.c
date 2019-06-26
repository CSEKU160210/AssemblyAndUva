//uva 11461
#include<stdio.h>
#include<math.h>
int main()
{
    int a,b,n,c,i;

        while(scanf("%d%d",&a,&b)==2){
        int d=0;
        if(a==0&&b==0)
            break;
        else
        {


        for(i=a;i<=b;i++)
        {
            c=sqrt(i);
            if(c*c==i)
                d++;

        }}

         printf("%d\n",d);}


    return 0;
}
