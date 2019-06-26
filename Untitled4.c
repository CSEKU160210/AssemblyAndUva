#include<stdio.h>
#include<string.h>
int main()
{
    char n1[30],n2[30];
    int i,l1,l2,t1,t2,s1,s2;
    float s;
    while(gets(n1))
    {
       // gets(n2);
        l1=strlen(n1);
       // l2=strlen(n2);
        t1=0;
        for(i=0;i<l1;i++)
        {
            if(n1[i]>='a'&&n1[i]<='z')
            t1+=n1[i]-96;
            else if(n1[i]>='A'&&n1[i]<='Z')
            t1+=n1[i]-64;
        }
        printf("%d\n",t1);
        s1=0;
        while(t1!=0)
        {
            s1+=t1%10;
            t1/=10;
        }
   printf("%d\n",s1);
     if(s1>9)
            {
              t1=s1;
              s1=0;
                while(t1!=0)
                {
                    s1+=t1%10;
                    t1/=10;
                }
            }
            printf("%d",s1);
    }
}
