//
//  main.swift
//  Exercícios - Array
//
//  Created by Lázaro Lima dos Santos on 05/04/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

/*

 Definir o método arraysDiferentes(arrayUm: [Int], arrayDois: [Int]) -> Bool que deve usar dois arrays de inteiros e retornar true caso sejam diferentes ou false caso coincidam. Invocar o método com os seguintes arrays e conferir se o resultado é o esperado:
 [1, 2, 3] , [4, 5, 6]     → true
 [1, 2, 3, 4, 5, 6], [1]     → true
 [1, 2, 3] , [1, 2, 3]     → false
 
*/

func arraysDiferentes(arrayUm: [Int], arrayDois: [Int]) -> Bool {
    return arrayUm == arrayDois
}


/*
Definir o método media(numeros: [Int]) -> Double, que deve analisar um array de números inteiros e calcular a média entre os números armazenados nele.
 */

func media(numeros: [Int]) -> Double {
    var total: Int = 0
    for value in numeros {
        total = value + total
    }
    return Double(total / numeros.count)
}

/*
 Definir um método que use como parâmetro um array de números inteiros e retorne outro array que contenha apenas os números pares do primeiro array.
 */

func arrayDeNumerosPares(numeros: [Int]) -> [Int] {
    var arrayDePares: [Int] = []
    for value in numeros {
        if (value % 2 == 0) {
            arrayDePares.append(value)
        }
    }
    return arrayDePares
}

/*
 Escrever um método que use como parâmetro um array de números inteiros e retorne a soma de todos os seus elementos pares.
 */

func somaDosNumerosPares(numeros: [Int]) -> Int {
    var total: Int = 0
    for value in numeros {
        if (value % 2 == 0) {
            total = value + total
        }
    }
    return total
}
/*
 Escrever um método que crie e retorne um array com os primeiros 10 números naturais.
 */

func dezPrimeirosNumerosNaturais() -> [Int] {
    var naturais: [Int] = []
    for index in 0...9 {
        naturais.append(index)
    }
    return naturais
}

/*
 Escrever um método que crie e retorne um array com os primeiros 50 números naturais.
 */

func cinquentaPrimeirosNumerosNaturais() -> [Int] {
    var naturais: [Int] = []
    for index in 0...49 {
        naturais.append(index)
    }
    return naturais
}

/*
 Escrever um método que use como parâmetro um número inteiro n, e depois crie e retorne um array com  os 10 primeiros números naturais a partir dele
 */

func proximosNumerosNaturais(n: Int) -> [Int] {
    var naturais: [Int] = []
    for index in n...n+10 {
        naturais.append(index)
    }
    return naturais
}

/*
 Escrever um método que use como parâmetro dois números inteiros e depois crie e retorne um array com os números inteiros que se encontrem entre eles.
 */

func numerosInteiros(x: Int, n: Int) -> [Int] {
    var inteiros: [Int] = []
    for index in x+1...n-1 {
        inteiros.append(index)
    }
    return inteiros
    
}


/*
 Definir um método: resultadosDaRoleta(quantidade: Int) -> [Int] que gere e retorne uma lista de números inteiros aleatórios com ’quantidade’ de valores, onde cada valor é o resultado de um giro da roleta. (Dado: a roleta tem 36 números)

 */


func resultadosDaRoleta(quantidade: Int) -> [Int] {
    var roleta: [Int] = []
    
    for _ in 1...quantidade {
        roleta.append(Int(arc4random_uniform(36)))
    }
    
    return roleta
}

/*
 Definir um método: inverso(numeros: [Int]) -> [Int] que retorne o inverso de um array de números (sem usar a função reverse do array).
 */

func inverso(numeros: [Int]) -> [Int] {
    var numerosInversos: [Int] = []
    for index in 1...numeros.count {
        let lastIndex: Int = (numeros.count - index)
    
        numerosInversos.append(numeros[lastIndex])
    }
    return numerosInversos
}
