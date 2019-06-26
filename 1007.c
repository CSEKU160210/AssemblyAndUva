//UVA PRBLM 10071

#include<stdio.h>
int main()
{
    int v,t;
    while( scanf("%d%d",&v,&t)==2)
    {

      if(v==0&&t==0)
            printf("0");
      else
        printf("%d",2*v*t);
      printf("\n");
    }
    return 0;
}
