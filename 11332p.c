#include<stdio.h>
int sum(int n);
int main()
{
    int c,n;

   while(scanf("%d",&n)==1){
c = sum(sum(sum(n)));
   printf("%d\n",c);}
   return 0;

}
int sum(int n)
{
    int sum=0,digit;
    while(n!=0)
    {
       digit =n%10;
        sum= sum+digit;
        n=n/10;
    }
    return sum;
}
