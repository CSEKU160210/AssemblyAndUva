#include<stdio.h>

void sort(int array_size,int array[]);

int salary[3];
int main()
{
    int count;
        int tc;
        count=0;

        scanf("%d",&tc);
        count=0;

        while(tc>0){
            count++;
            scanf("%d %d %d",&salary[0],&salary[1],&salary[2]);
            sort(3,salary);
            printf("Case %d: %d\n",count,salary[1]);
            tc--;
        }

    return 0;
}
void sort(int array_size,int array[])
{
      int i,j,tmp;
            for(i=0;i<array_size;i++){
                  for(j=i;j<array_size;j++){
                        if(array[i]>=array[j]){
                        tmp=array[i];
                        array[i]=array[j];
                        array[j]=tmp;
                        }
                  }
            }
}
