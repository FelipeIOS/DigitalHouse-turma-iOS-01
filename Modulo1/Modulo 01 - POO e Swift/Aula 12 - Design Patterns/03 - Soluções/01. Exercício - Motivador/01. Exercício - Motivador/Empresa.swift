//
//  Empresa.swift
//  01. Exercício - Motivador
//
//  Created by Lázaro Lima dos Santos on 23/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class Empresa: AssinarJornal {
    var nome: String
    var cnpj: String
    var numeroFuncionarios: Int
 
    
    init(nome: String, cnpj: String, numeroFuncionarios: Int) {
        self.nome = nome
        self.cnpj = cnpj
        self.numeroFuncionarios = numeroFuncionarios
    }
    
    func jornalEntregue() {
        print("Agradecemos cordialmente o MonroeStreetJournal pela excelência dos serviços prestados.")
    }
}
