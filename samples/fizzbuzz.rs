trait Operation {
    fn perform(&self, num: i32) -> Result<String, &'static str>;
}

struct FizzBuzz;

impl Operation for FizzBuzz {
    fn perform(&self, num: i32) -> Result<String, &'static str> {
        match (num % 3, num % 5) {
            (0, 0) => Ok("FizzBuzz".to_string()),
            (0, _) => Ok("Fizz".to_string()),
            (_, 0) => Ok("Buzz".to_string()),
            _ => Ok(num.to_string()),
        }
    }
}

fn process_numbers(numbers: Vec<i32>, op: &dyn Operation) -> Vec<Result<String, &'static str>> {
    numbers.iter().map(|&num| op.perform(num)).collect()
}

fn main() {
    let numbers = (1..=15).collect();
    let fizzbuzz = FizzBuzz;
    let results = process_numbers(numbers, &fizzbuzz);
    for result in results {
        println!("{}", result.unwrap_or_else(|e| e.to_string()));
    }
}
