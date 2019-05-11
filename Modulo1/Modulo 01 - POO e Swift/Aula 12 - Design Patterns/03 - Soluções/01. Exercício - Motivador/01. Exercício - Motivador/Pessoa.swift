//
//  Pessoa.swift
//  01. Exercício - Motivador
//
//  Created by Lázaro Lima dos Santos on 23/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class Pessoa: AssinarJornal {
    var nome: String
    var rg: String
    var enderecoEntrega: String
    
    init(nome: String, rg: String, enderecoEntrega: String) {
        self.nome = nome
        self.rg = rg
        self.enderecoEntrega = enderecoEntrega
    }
    
    func jornalEntregue() {
        print("Muito obrigado, MonroeStreetJournal. Vocês são demais!")
    }
}
