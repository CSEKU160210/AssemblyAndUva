#include <stdio.h>
#include <stdlib.h>

int main()
{

    int caseCount,i,expectedParty,givenParty,temp,j;
    j=0;
    while(1){
        j++;
        scanf("%d",&caseCount);//N
        if(caseCount==0){
            break;
        }
        givenParty=0;
        expectedParty = 0;
        for(i=0;i<caseCount;i++){
            scanf("%d",&temp);
            if(temp==0){
                givenParty++;
            }else{
                expectedParty++;
            }
        }
        temp = expectedParty - givenParty;
        printf("Case %d: %d\n",j,temp);
    }
    return 0;
}
