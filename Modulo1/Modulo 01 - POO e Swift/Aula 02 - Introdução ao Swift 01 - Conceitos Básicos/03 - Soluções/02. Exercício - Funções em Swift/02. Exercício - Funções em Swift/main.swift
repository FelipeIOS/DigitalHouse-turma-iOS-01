//
//  main.swift
//  02. Exercício - Funções em Swift
//
//  Created by Felipe Silva on 1/26/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation

// 1- Definir três métodos que imprimam saudações diferentes em tela e sejam executados da seguinte forma:     cumprimentarA(pessoa: “João”)     cumprimentar(a: “João”)     cumprimentarA(“João”)

func cumprimentarA(pessoa: String) {
    print(pessoa)
}

func cumprimentarA(a: String) {
    print(a)
}

func cumprimentarA(_:String ) {
    print()
}

cumprimentarA(pessoa: "João")
cumprimentarA(a: "Patricia")
cumprimentarA("Felipe")


// 2- Escrever o método eMenor(oPrimeiro: Int, oSegundo: Int) -> Bool  deve usar dois números inteiros como parâmetros e retornar true se o primeiro número for menor que o segundo número ou false , caso contrário.

func eMenor(oPrimeiro: Int, oSegundo: Int) -> Bool {
    
    if oPrimeiro > oSegundo {
        return true
    }else{
        return false
    }
}

// 3- Invocar o método com os números 3 e 5 e imprimir na tela o resultado.
print(eMenor(oPrimeiro: 3, oSegundo: 5))

// 4- Invocar o método com os números 7 e 5 e imprimir na tela o resultado.
print(eMenor(oPrimeiro: 7, oSegundo: 5))

// 5- Invocar o método com os números 10 e 10; e imprimir na tela o resultado.
print(eMenor(oPrimeiro: 10, oSegundo: 10))

// 6- Escrever o método ePar(umNumero: Int) -> Bool deve analisar um número inteiro e retornar true se o número for par ou false , caso contrário. Ajuda: o operador % calcula o resto da divisão entre dois números inteiros. (Ex.: “5 % 2” dá 1 como resultado; enquanto “4 % 2” dá 0 como resultado).

func ePar(umNumero: Int) -> Bool {
    
    if umNumero % 2 == 0 {
        return true
    }else {
        return false
    }
}

// 7- Invocar o método com o número 1 e imprimir na tela o resultado.
print(ePar(umNumero: 1))

// 8- Invocar o método com o número 2 e imprimir na tela o resultado.
print(ePar(umNumero: 2))



// 9- Escrever o método eImparMaiorQueDez(umNumero: Int) -> Bool que deve analisar um número inteiro como parâmetro e retornar true se o número for ímpar e maior do que dez e false, caso contrário.

func eImparMaiorQueDez(umNumero: Int) -> Bool {
    
    if umNumero % 2 != 0 && umNumero > 10 {
        return true
    }else {
        return false
    }
}

// 10- Invocar o método com o número 3 e imprimir na tela o resultado.
print(eImparMaiorQueDez(umNumero: 3))

// 11- Invocar o método com o número 4 e imprimir na tela o resultado.
print(eImparMaiorQueDez(umNumero: 4))

// 12- Invocar o método com o número 13 e imprimir na tela o resultado.
print(eImparMaiorQueDez(umNumero: 13))

// 13- Invocar o método com o número 14 e imprimir na tela o resultado.
print(eImparMaiorQueDez(umNumero: 14))


// 14- Escrever o método maximoEntreTresNumeros(umNumeroA: Int, umNumeroB: Int, umNumeroC: Int) -> Int que deve analisar três números inteiros como parâmetros e retornar o máximo entre os três números.
func maximoEntreTresNumeros(umNumeroA: Int, umNumeroB: Int, umNumeroC: Int) -> Int {
    
    if umNumeroA >= umNumeroB && umNumeroA >= umNumeroC {
        return umNumeroA
    }else if umNumeroB >= umNumeroA && umNumeroB >= umNumeroC {
        return umNumeroB
    }else if umNumeroC >= umNumeroA && umNumeroC >= umNumeroB {
        return umNumeroC
    }
    return 0
}

// 15- Invocar o método com os números 2, 5 e 11 e imprimir em tela o resultado.
print(maximoEntreTresNumeros(umNumeroA: 2, umNumeroB: 5, umNumeroC: 11))


// 16- Escrever o método imprimirImparesPositivos() -> Void que imprima na tela os primeiros 100 números inteiros positivos ímpares.
func imprimirImparesPositivos() -> Void {
    
    for index in 0...100 {
        
        if index % 2 != 0 {
            print(index)
        }
    }
}

imprimirImparesPositivos()
