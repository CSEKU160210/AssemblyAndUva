//UVA PRBLM 11498
#include<stdio.h>
int main()
{
    int n,m,i,x,y,k;
    while(scanf("%d",&k)==1)
    {
        if(k==0)
            break;
        scanf("%d%d",&n,&m);
        for(i=0; i<k; i++)
        {
            scanf("%d%d",&x,&y);
            if(n==x || m==y)
                printf("divisa\n");
            else if(x>n && y>m)
                printf("NE\n");
            else if(x<n&&y>m)
            {
                printf("NO\n");
            }
            else if(x<n&&y<m)
            {
                printf("SO\n");
            }
            else if(x>n&&y<m)
            {
                printf("SE\n");
            }

        }
    }
    return 0;
}
