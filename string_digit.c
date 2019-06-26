
#include<stdio.h>
#include<stdlib.h>
int main()
{
    int a,b,c,d,tst;
    char nm[5];
    scanf("%d",&tst);
    for(a=0;a<tst;a++)
    {
        scanf("%3s-%4d",nm,&c);
        b=(nm[2]-'A');
        printf("%d",b);
     //  d=abs(b-c);
      //  if(d<=100)
          //  printf("nice\n");
        //else printf("not nice\n");
    //}
    return 0;
}}
