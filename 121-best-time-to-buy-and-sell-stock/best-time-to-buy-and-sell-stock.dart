class Solution {
  int maxProfit(List<int> prices) {
    int maxProfit = 0;
    if(prices.length<=1){
        return maxProfit;
    }
    int l = 0, r = 0;

   

   while(r < prices.length){
    if(prices[r] < prices[l]){
        l++;
        r=l+1;
    }else{
        int currentProfit = prices[r]-prices[l];
        if(currentProfit>maxProfit){
            maxProfit = currentProfit;
        }
            r++;

    }
   }
    return maxProfit;
  }
}