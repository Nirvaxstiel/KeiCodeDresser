const addOperation = x => x + 2;
const fizzBuzzOperation = num => {
    let output = '';
    if (num % 3 === 0) output += 'Fizz';
    if (num % 5 === 0) output += 'Buzz';
    return output || num;
};

const processNumbers = async (numbers, operation) => {
    try {
        return numbers.map(operation);
    } catch (error) {
        console.error(`Error processing numbers: ${error}`);
    }
};

const numbers = Array.from({ length: 15 }, (_, i) => i + 1);

processNumbers(numbers, fizzBuzzOperation).then(console.log);