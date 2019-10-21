//função recursiva, que chama ela mesma

function fatorial (n){
  if (n == 1) {
    return 1
  } else {
    return n * fatorial(n-1)
  }
}

console.log(fatorial(5))


/*

5! = 5 * 4 * 3 * 2 * 1 = 120
5! = 5 x 4! (o fatorial de um número pode ser calculado com base no fatorial de outro)

n! = n x (n-1)!
1! = 1

*/