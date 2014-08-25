<script>
var multiples = []
var sum = 0
for (i=0;i<1000;i++) {
    console.log(i);
    if (i % 3 === 0 || i % 5 === 0) {
        multiples.push(i);
        console.log(multiples)
    }
}
for (i=0;i < multiples.length;i++) {
    sum += multiples[i];
}
console.log(sum)
</script>

