#include<stdio.h>
int main()
{
    char input[1001];
    int i,count = 1;
    while(gets(input))
    {
        for(i=0;input[i];i++)
        {
            if(input[i]=='\"')
            {
                if(count)
                    printf("`\`");
                else
                    printf("\'\'");
                count = 1-count;
            }
            else
                printf("%c",input[i]);
        }
        printf("\n");
    }
    return 0;
}
