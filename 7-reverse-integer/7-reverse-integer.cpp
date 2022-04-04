#include<string>
class Solution {
public:
    int reverse(int x) {
        string original_str = to_string(x);
       
        int i = 0;
        int j = original_str.length() - 1;
        while(i < j){
              if(original_str[i] == '-'){
                i++;
                continue;
        }
            char temp = original_str[i];
            original_str[i++] = original_str[j];
            original_str[j--] = temp;
        }
        
       try{
        return stoi(original_str);
       }catch(out_of_range const& ex){
         return 0;
       }
    }
};