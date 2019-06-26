//UVA PRVLM 11172

#include<stdio.h>
int main()
{
    int n,a,b;
    scanf("%d",&n);

        while(scanf("%d%d",&a,&b)!=n){
        if(a>b)
    {
        printf(">\n");
    }
    else if(a<b)
        printf("<\n");
        else
            printf("=\n");}
        return 0;

}
