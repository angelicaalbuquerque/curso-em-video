/* Mostrar o vetor:
let num = [5, 8, 2, 9, 3]
console.log(`Nosso vetor é o ${num}`)
*/

/* Mostrar posições:
let num = [5, 8, 2, 9, 3]
console.log(`O vetor tem ${num.length} posições/elementos.`)
*/

/*mostrar posições isoladas:
let num = [5, 8, 2, 9, 3]
console.log(`O primeiro valor do vetor é ${num[0]}`)
*/

/*Push e Sort:
let num = [5, 8, 2, 9, 3]
num.push(1) //adiciona o 1
num.sort() //põe em ordem
console.log(num) //exibe na ordem
console.log(`O vetor tem ${num.length} posições.`)
console.log(`O primeiro valor do vetor é ${num[0]}.`)
*/

let num = [5, 8, 2, 9, 3]

num.push(1) 
num.sort()
console.log(num) 
console.log(`O vetor tem ${num.length} posições.`)
console.log(`O primeiro valor do vetor é ${num[0]}.`)
let pos = num.indexOf(15)
 if (pos == -1) {
   console.log(`O valor não foi encontrado.`)
 }else {
   console.log(`O valor está na posição ${pos}`) 
 }





