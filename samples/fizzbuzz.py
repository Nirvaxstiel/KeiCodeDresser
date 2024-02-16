class OperationStrategy:
    def perform(self, num):
        raise NotImplementedError("Subclasses should implement this!")

class AddOperation(OperationStrategy):
    def perform(self, num):
        return num + 2

class FizzBuzzOperation(OperationStrategy):
    def perform(self, num):
        output = ''
        if num % 3 == 0:
            output += 'Fizz'
        if num % 5 == 0:
            output += 'Buzz'
        return output or num

def process_numbers(numbers, strategy: OperationStrategy):
    try:
        return [strategy.perform(num) for num in numbers]
    except Exception as e:
        print(f"Error processing numbers: {e}")

numbers = range(1, 16)
# Switching strategies
add_strategy = AddOperation()
fizzbuzz_strategy = FizzBuzzOperation()

print(process_numbers(numbers, fizzbuzz_strategy))
