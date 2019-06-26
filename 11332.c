//uva prblm 11332
#include<stdio.h>
int sum(int n);
int main()
{
    int a,b,c,n;

   while(scanf("%d",&n)==1){
   a = sum(n);
   b = sum(a);
   c = sum(b);
   printf("%d\n",c);}
   return 0;

}
int sum(int n)
{
    int sum=0,digit;
    while(n!=0)
    {
       digit =n%10;//123%10=3
        sum= sum+digit;
        n=n/10;//123/10=12

    }
    return sum;
}
