#include<stdio.h>
int main()
{
    int x,y,z;
    while(scanf("%d%d%d",&x,&y,&z)==3)
    {

        if(x<=(z-y))
            printf("Props win!\n");
        else
            printf("Hunters win!\n");
    }
    return 0;
}
