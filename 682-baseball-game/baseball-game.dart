class Solution {
  int calPoints(List<String> operations) {
    
     
    Stack stackObj = Stack();

    operations.forEach((x) {
        switch(x){
            case '+':
                if(stackObj.scoreList.isEmpty && stackObj.scoreList.length<2) break;
                int last = stackObj.popWithLast();
                int last2 = stackObj.popWithLast();
                stackObj.push(last2);
                stackObj.push(last);
                stackObj.push(last2+last);
                break;
            case 'D':
                if(stackObj.scoreList.isEmpty) break;
                stackObj.push(stackObj.getLast()*2);
                break;
            case 'C':
                if(stackObj.scoreList.isEmpty) break;
                stackObj.pop();
                break;
            default:
                stackObj.push(int.parse(x));

 
        }
    });
    print(operations);
    print(stackObj.scoreList);
    return stackObj.scoreList.isNotEmpty? stackObj.scoreList.reduce((a,b)=> a+b) : 0;

  }

}

class Stack{

List<int> scoreList = [];
    push(int value){
        scoreList.add(value);
    }

    pop(){
        // int lastValue = scoreList.last;
        scoreList.removeLast();
        // return lastValue;
    }

     popWithLast(){
        int lastValue = scoreList.last;
        scoreList.removeLast();
        return lastValue;
    }

    getLast(){
        return scoreList.last;
    }


    
}

