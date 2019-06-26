#include<stdio.h>
int main()
{
     int a;
    int n;
    while(1)
    {
      scanf("%d",&a);
    if(a==0)
        break;
    else
    {
        if(a%11==0)
            printf("%d is a multiple of 11.\n",a);
        else
            printf("%d is not a multiple of 11.\n",a);
    }

    }
    return 0;
}
