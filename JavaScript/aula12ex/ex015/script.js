function verificar() {
  var data = new Date()
  var ano = data.getFullYear()
  var fano = document.getElementById("txtano") //formulário do ano, txtano da caixa de texto do input de ano nascimento
  var res = document.querySelector("div#res")

  //primeiro verifico se a caixa está vazia, se o valor é igual a zero, ou seja, se o cara não digitou o ano. Na segunda, verifico se o ano digitado foi maior que o atual
  if (fano.value.length == 0 || Number(fano.value) > ano) {
     window.alert("[ERRO] Verifique os dados e tente novamente.")
  } else {
      var fsex = document.getElementsByName("radsex")
      var idade = ano - Number(fano.value) //valor digitado em fano
      var genero = " "
      //criarei um img com id foto. Como se fosse ao HTML criar <img id="foto">, é a mesma coisa aqui:
      var img = document.createElement("img")
      img.setAttribute("id", "foto")
      //se o que tiver marcado checado for fsex 0, é sinal que é , então:
      if (fsex[0].checked) {
        genero = "Homem"
        if (idade >=0 && idade < 10) {
          //Criança
          img.setAttribute("src", "foto-bebe-m.png")
        } else if (idade < 21) {
          //Jovem
          img.setAttribute("src", "foto-jovem-m.png")
        } else if (idade < 50) {
          //Adulto
          img.setAttribute("src", "foto-adulto-m.png")
        } else {
          //Idoso
          img.setAttribute("src", "foto-idoso-m.png")
        }
    } else if (fsex[1].checked) {
      genero = "Mulher"
      if (idade >=0 && idade < 10){
        //Criança
        img.setAttribute("src", "foto-bebe-f.png")
      } else if (idade < 21) {
        //Jovem
        img.setAttribute("src", "foto-jovem-f.png")
      } else if (idade < 50) {
        //Adulto
        img.setAttribute("src", "foto-adulto-f.png")
      } else {
        //Idoso
        img.setAttribute("src", "foto-idoso-f.png")
      }
    }
    res.style.textAlign = "center"
    res.innerHTML = `Detectamos ${genero} com ${idade} anos.`
    res.appendChild(img)
    //exibir a foto e colocar um elemento embaixo da minha resposta "detectamos genero..."
  }
}