/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */


class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prevHead;
    ListNode? nextHead;
    ListNode? current = head;
    while(current!=null){
        print(current?.next?.val);
        nextHead = current?.next; 

        current?.next = prevHead;
        prevHead = current;
        current = nextHead;

    }
    head = prevHead;
    return head;
  }
}