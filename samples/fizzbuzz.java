import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

interface OperationStrategy {
    Object perform(int num);
}

class AddOperation implements OperationStrategy {
    public Integer perform(int num) {
        return num + 2;
    }
}

class FizzBuzzOperation implements OperationStrategy {
    public String perform(int num) {
        String output = "";
        if (num % 3 == 0) output += "Fizz";
        if (num % 5 == 0) output += "Buzz";
        return output.isEmpty() ? String.valueOf(num) : output;
    }
}

public class EnhancedFizzBuzz {
    public static List<Object> processNumbers(List<Integer> numbers, OperationStrategy strategy) {
        return numbers.stream().map(strategy::perform).collect(Collectors.toList());
    }

    public static void main(String[] args) {
        List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
        OperationStrategy fizzBuzzStrategy = new FizzBuzzOperation();
        System.out.println(processNumbers(numbers, fizzBuzzStrategy));
    }
}
