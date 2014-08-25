var isPrime = function(n) {
    if (n < 2) {
        return true
    }
    for (var i=2;i<n;i++) {
        if (n % i === 0) {
            return false;
        }
    }
    return true;
};
var primeFactors = function(x) {
    factorsArray = [];
    for (var i=0;i<x;i++) {
        if (isPrime(i) && x % i === 0) {
                factorsArray.push(i);
                x /= i
        }
    }
    return factorsArray
};
