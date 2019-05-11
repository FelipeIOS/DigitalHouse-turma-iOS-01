//
//  main.swift
//  Exercicíos - Dicionários
//
//  Created by Lázaro Lima dos Santos on 05/04/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

/*
 Fase 1: Crie um dicionário com as pessoas do sua família, sendo a chave um Int e o valor o nome do seu familiar.
 */

var familia: [Int: String] = [1: "Lázaro", 2: "Almira", 3: "Jorge", 4: "Geovane", 5: "Josane"]

/*
 Fase 2: Agora crie uma função que apresente todos os membros da sua família.
 */
func apresentaFamilia(familia: [Int: String]) {
    for pessoa in familia {
        print(pessoa)
    }
}

/*
 Fase 3: Sua família agora está participando de um sorteio, gere um número aleatório de 0 até a quantidade de familiares e apresente o vencedor usando a chave sorteada.
 */

func sorteiaFamiliar(familia: [Int: String]) {
    let numeroDoSorteio: Int = Int(arc4random_uniform(5))
    print("O número sorteado foi \(numeroDoSorteio) e o vencedor foi: \(familia[numeroDoSorteio] ?? "")")
}
