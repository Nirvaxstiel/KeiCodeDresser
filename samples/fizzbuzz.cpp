#include <iostream>
#include <vector>
#include <functional>
#include <algorithm>
#include <string>
#include <numeric>

std::string fizzBuzzOperation(int num) {
    std::string result = "";
    if (num % 3 == 0) result += "Fizz";
    if (num % 5 == 0) result += "Buzz";
    return result.empty() ? std::to_string(num) : result;
}

int main() {
    std::vector<int> numbers(15);
    std::iota(numbers.begin(), numbers.end(), 1);
    
    std::function<std::string(int)> operation = fizzBuzzOperation;
    
    std::for_each(numbers.begin(), numbers.end(), [&operation](int num) {
        std::cout << operation(num) << std::endl;
    });

    return 0;
}
