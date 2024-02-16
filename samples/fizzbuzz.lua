function addOperation(x)
    return x + 2
end

function fizzBuzzOperation(num)
    local output = ""
    if num % 3 == 0 then output = output .. "Fizz" end
    if num % 5 == 0 then output = output .. "Buzz" end
    if output == "" then return tostring(num) else return output end
end

function processNumbers(numbers, operation)
    for _, num in ipairs(numbers) do
        local status, result = pcall(operation, num)
        if status then
            print(result)
        else
            print("Error:", result)
        end
    end
end

local numbers = {}
for i = 1, 15 do table.insert(numbers, i) end
processNumbers(numbers, fizzBuzzOperation)
