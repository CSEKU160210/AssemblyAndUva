#include<stdio.h>
#include<string.h>

int main()
{
    char s[150];
    char r[150]="";
    int maxl = 0;
    while(scanf("%s",s))
    {
        if(strcmp(s,"E-N-D")==0)  break;
        int len = strlen(s);
        int valid = 0 ,i;
        for( i=0; i<len; i++)
        {
            if(isalpha(s[i])||s[i]=='-')
            {
                valid++;
            }
        }
        if(valid>maxl)
        {
            maxl = valid;
            strcpy(r,s);
        }
    }
    int l = strlen(r);
    int i;
    for( i=0; i<l; i++)
    {
        if(isalpha(r[i]) || r[i]=='-')
             { printf("%c",tolower(r[i])); }
    }
    printf("\n");
    return 0;
}



