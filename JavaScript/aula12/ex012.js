var hora = new Date()
var horacerta = hora.getHours() + ":" + hora.getMinutes()
console.log(`agora são exatamente ${horacerta} horas.`)
if (hora < 12) {
  console.log("Bom dia!")
} else if (hora <= 18) {
  console.log("Boa tarde!")
} else {
  console.log("boa noite!")
}