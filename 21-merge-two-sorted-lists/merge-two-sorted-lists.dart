/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode? l1 = list1;
    ListNode? l2 = list2;
    ListNode mergedList = ListNode();
    ListNode current = mergedList;
    
    if(list1 == null && list2 == null){
        return null;
    }

    if(list1 == null && list2 !=null){
        return list2;
    }

     if(list1 != null && list2 == null){
        return list1;
    }

    while(l1!=null && l2!=null ){
      

        
if(l1.val <= l2.val){
            current.next = l1;
            l1 = l1.next;

        }else{
            current.next = l2;
            l2 = l2.next;
        }
        
current = current.next!;
        
       
        // If one of the lists is not empty, append it to the merged list.
  if (l1 != null) {
    current.next = l1;
  } else if (l2 != null) {
    current.next = l2;
  }
       
    }
    // ListNode? finalL = mergedList;

    // while(finalL!=null){
    //     print("final : ${finalL.val}");
    //     finalL = finalL.next;
    // }
    
    return mergedList.next;
  }
}