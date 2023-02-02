import std.stdio;
import std.algorithm;
import std.range;

auto IncrementSlice(int[] nums, int n) pure{
  
        auto result = nums.map!(a => a+n);
        return result;      //TODO
}

auto SquareSlice(int[] nums) pure{
  
        auto result = nums.map!(a => a*a);
        return result;      //TODO
}

auto SquareSum(int[] nums) pure{
  
        auto result = nums.map!(a => a*a);
        auto sum = reduce!((a,b) => a + b)(0, result);
        return sum;      //TODO
}

auto GetEvens(int[] nums) pure{
        auto result = nums.filter!(a => a % 2 == 0);
        return result;       //TODO
}

void main(){
        // Test data set
        int[] numbers = [1,2,3,4,5];

        // IncrementSlice(numbers,1) => [2,3,4,5,6]
        writeln(IncrementSlice(numbers,1));

        // SquareSlice(numbers,1) => [1,4,9,16,25]
        writeln(SquareSlice(numbers));

        // SquareSum(numbers) => 55
        writeln(SquareSum(numbers));

        // GetEvens(numbers) => [2,4]
        writeln(GetEvens(numbers));
}
