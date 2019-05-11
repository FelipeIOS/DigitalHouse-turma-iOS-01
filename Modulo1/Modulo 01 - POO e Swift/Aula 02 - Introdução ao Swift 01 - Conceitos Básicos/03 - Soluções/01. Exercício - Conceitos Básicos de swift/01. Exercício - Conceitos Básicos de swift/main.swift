//
//  main.swift
//  01-exercicio
//
//  Created by Felipe Silva on 1/23/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation


// 1 -Imprimir na tela “Hello World”.
let str = "Hello, word"
print(str)



/* 2 -Declarar a variável “umNumeroA” do tipo Int e atribuir um valor a ela. Declarar a variável “umNumeroB” de tipo Double e atribuir um valor a ela. Declarar la variável “umString” de tipo String e atribuir um valor a ela. Em seguida, imprimir na tela:
 
 // a- O valor de cada variável
 // b- A soma de umNumeroA + umNumeroB
 // c- A diferença entre umNumeroA -  umNumeroB
 */

let umNumeroA: Int = 40
let umNumeroB: Double = 30
let umString: String = "Felipe"

print(umNumeroA)
print(umNumeroB)
print(umString)

print(umNumeroA + Int(umNumeroB))

print(umNumeroA - Int(umNumeroB))

// 3 Imprimir na tela o número de segundos existentes em um ano.
let second = 60 * 60
let day = 24 * second
let year = 365 * day

print(year)

// 4- Declarar a variável “umNumeroC” de tipo Int e atribuir um valor de vários dígitos a ela. Imprimir na tela seu último dígito.

let umNumeroC = 32321321213854549
print(umNumeroC % 10)

/*  5- Declarar duas variáveis “a” e “b” (do mesmo tipo) e atribuir um número a cada uma. Intercambiar seus valores para que o valor de “a” passe a ser o valor de “b” e vice-versa. Ajuda: é possível definir novas variáveis se for preciso.
 */

var a =  20
var b = 30
var temp = 0

temp = a
a = b
b = temp

print(a)
print(b)

print("")

/* 6- Declarar a seguintes variáveis: “w”, “x”, “y”, “z”; atribuindo um número entre 1 e 50 a cada uma. Declarar uma variável “valor1” e atribuir o número 23 a ela. Declarar uma variável “valor2” e atribuir o número 34 a ela. Imprimir na tela “ASD” se “valor1” for maior que “w” e menor que “x” e se “valor2” for maior que “y” e menor que “z”. Caso contrário, imprimir “XYZ”.
 */

let w = 5
let x = 40
let y = 15
let z = 35
let valor1 = 23
let valor2 = 34

if valor1 > w && valor1 < x  &&  valor2 > y && valor2 < z {
    print("ASD")
    
} else {
    print("XYZ")
    
}

// 7- Imprimir na tela os primeiros dez números naturais elevados ao quadrado.

for index in 0...9 {
    
    print(index * index)
}

// 8- Imprimir na tela a soma dos primeiros dez números naturais ÍMPARES elevados ao quadrado.
var soma = 0

for index in 0...9 {
    
    if index % 2 != 0  {
        print(index * index)
        soma = soma + (index * index)
    }
}
print(soma)


// 9- Imprimir números aleatórios entre 0 e 5, até que se imprima um 3. Ajuda: A função arc4random_uniform(_ n: Int) (definida na biblioteca Foundation) retorna um número aleatório entre 0 e o parâmetro, NÃO inclusive; por exemplo: var numero = arc4random_uniform(10)     // número que 0 <= número < 10
// Do any additional setup after loading the view, typically from a nib.


var numero = arc4random_uniform(5)

while numero != 3 {
    numero = arc4random_uniform(5)
    print(numero)
}
