class Solution {
    public ListNode getIntersectionNode(ListNode headA, ListNode headB) {
    ListNode tempA=headA;
    ListNode tempB=headB;
     int lengthA=0;
     int lengthB=0;
       while(tempA!=null)
       {
        lengthA++;
        tempA=tempA.next;

       }
    while(tempB!=null)
       {
        lengthB++;
        tempB=tempB.next;
       }
    tempA=headA;
    tempB=headB;


    if(lengthA>lengthB)
    {
        int size=lengthA-lengthB;
          for(int i=1;i<=size;i++)
          {
            tempA=tempA.next;

          }

    }
    else{
        int size=lengthB-lengthA;
          for(int i=1;i<=size;i++)
          {
            tempB=tempB.next;
            
          }
    }
    while(tempA!=tempB){
        tempA=tempA.next;
        tempB=tempB.next;
    }
    return tempA;
    
    }}
