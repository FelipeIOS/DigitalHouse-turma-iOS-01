//
//  main.swift
//  Exercícios - Swift
//
//  Created by Lázaro Lima dos Santos on 24/01/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

/*
 Unir arrays
 Escrever uma função que receba 2 arrays de inteiros e retorne 1 array como resultado, com todos os elementos de ambos os arrays, sem repetições.
 
 Ex.:
 print(union(firstArray: [1, 2, 3], secondArray: [100, 2, 1, 10]))
 → [1, 2, 3, 100, 10]
*/

func union(firstArray: [Int], secondArray: [Int]) -> [Int] {
    var elements: [Int] = []
    for x in firstArray {
        elements.append(x)
    }
    
    for y in secondArray {
        if !elements.contains(y) {
            elements.append(y)
        }
    }
    
    return elements
}

print(union(firstArray: [1, 2, 3], secondArray: [100, 2, 1, 10]))

/*
 Interseção entre arrays
 Escrever uma função que receba 2 arrays de inteiros e retorne 1 array como resultado, com todos os elementos de ambos os arrays. Se houver repetições, adicionar o elemento somente uma vez.
 
 Ex.:
 print(intersect(firstArray: [1, 2, 3], secondArray: [100, 2, 1, 10]))
 → [1, 2]
 print(intersect(firstArray: [1, 2, 3, 4, 5], secondArray: [1, 2, 3, 4, 5, 6]))
 → [1, 2, 3, 4, 5]
*/
func intersect(firstArray: [Int], secondArray: [Int]) -> [Int] {
    var elements: [Int] = []
    
    for x in firstArray {
        if secondArray.contains(x) {
            elements.append(x)
        }
    }
    
    return elements
}

print(intersect(firstArray: [1, 2, 3], secondArray: [100, 2, 1, 10]))
print(intersect(firstArray: [1, 2, 3, 4, 5], secondArray: [1, 2, 3, 4, 5, 6]))
/*
 Diferenças entre arrays
 Escrever uma função que receba 2 arrays e retorne 1 array como resultado, com todos os elementos presentes em um ou outro array, excluindo os repetidos.
 
 Ex.:
 print(difference(firstArray: [1, 2, 3], secondArray: [100, 2, 1, 10]))
 → [3, 100, 10]
 print(difference(firstArray: [1, 2, 3, 4, 5], secondArray: [1, 2, 3, 4, 5, 6]))
 → [6]
 */
func difference(firstArray: [Int], secondArray: [Int]) -> [Int] {
    var elements: [Int] = []
    
    for x in firstArray {
        if !secondArray.contains(x) {
            elements.append(x)
        }
    }
    
    for x in secondArray {
        if !firstArray.contains(x) {
            elements.append(x)
        }
    }
    return elements
}
print(difference(firstArray: [1, 2, 3], secondArray: [100, 2, 1, 10]))
print(difference(firstArray: [1, 2, 3, 4, 5], secondArray: [1, 2, 3, 4, 5, 6]))
/*
 Valor máximo
 Escrever uma função que receba um array com números e retorne o valor máximo.
 
 Ex.:
 print(maximo(array: [2, 5, 15, 4, 5, 6]))
 → 15
 */
func maximo(array: [Int]) -> Int {
    var value: Int = 0
    for x in array {
        if x > value {
            value = x
        }
    }
    return value
}
print(maximo(array: [2, 5, 15, 4, 5, 6]))

/*
 Média
 Escrever uma função que receba um array com números e retorne a média.
 
 Ex.:
 print(media(array: [3, 5, 17, 4, 5, 8]))
 → 7
 */
func media(array: [Int]) -> Int {
    var media: Int = 0
    
    for x in array {
        media = media+x
    }
    
    return media/array.count
}
print(media(array: [3, 5, 17, 4, 5, 8]))
