def checkPrime(n)
    x = 2
    is_prime = true
    while x < n / 2
        if n % x == 0
            is_prime = false
        end
        x += 1
    end
    if is_prime
        puts ("#{n} is prime")
    else
        puts ("#{n} is not prime")
    end
end

checkPrime(13)