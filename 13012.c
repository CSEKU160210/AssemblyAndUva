//UVA PRBLM 13012
#include<stdio.h>
int main()
{
    int n,m,i,count;
    while(scanf("%d",&n)!=EOF)
    {
        count =0;


            for(i=0;i<5;i++){
            scanf("%d",&m);
            if(n==m)
            count++;

            }


        printf("%d\n",count);
    }
    return 0;
}
