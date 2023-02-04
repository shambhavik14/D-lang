import std.stdio;
import std.algorithm;
import std.range;

auto IncrementSlice(int[] nums, int n) pure{
  return nums.map!(a => a+n); //TODO
}

auto SquareSlice(int[] nums) pure{
  return nums.map!(a => a*a);      //TODO
}

auto SquareSum(int[] nums) pure{
  return nums.map!(a => a*a).sum();
  //return reduce!((a,b) => a + b)(0, nums.map!(a => a*a));     //TODO
}

auto GetEvens(int[] nums) pure{
  return nums.filter!(a => a % 2 == 0);      //TODO
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
