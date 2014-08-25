var fibSequence = function(limit) {
    var fib = [0,1];
    while (fib[fib.length-1] < limit) {
        //console.log(fib[fib.length-1]);
        fib.push(fib[fib.length-1] + fib[fib.length-2])
    }
    return fib
}
var isEven = function(n) {
    if (n % 2 === 0) {
        return true
    } else {
        return false
    }
}
var fib = fibSequence(4000000);
var evenSequence = [];
for (i=0;i < fib.length;i++) {
    if (isEven(fib[i])) {
        evenSequence.push(fib[i])
    }
}
sum = 0;
for (i=0;i < evenSequence.length;i++) {
    sum += evenSequence[i]
}
console.log(sum)
