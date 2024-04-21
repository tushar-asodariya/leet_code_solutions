class Solution {
  int maxProfit(List<int> prices) {
    int maxProfit = 0;
 
    int l = 0, r = 1;

   

   while(r < prices.length){
    if(prices[r] < prices[l]){
        l=r;
       
    }else{
        int currentProfit = prices[r]-prices[l];
        if(currentProfit>maxProfit){
            maxProfit = currentProfit;
        }
          

    }
      r++;
   }
    return maxProfit;
  }
}