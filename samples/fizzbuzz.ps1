function Add-Operation {
    param ($x)
    return $x + 2
}

function FizzBuzz-Operation {
    param ($num)
    $output = ""
    if ($num % 3 -eq 0) { $output += "Fizz" }
    if ($num % 5 -eq 0) { $output += "Buzz" }
    if ([string]::IsNullOrEmpty($output)) { $num } else { $output }
}

1..15 | ForEach-Object {
    try {
        FizzBuzz-Operation -num $_
    } catch {
        Write-Error "Error processing number $_"
    }
}