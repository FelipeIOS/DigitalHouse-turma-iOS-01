//
//  SocioVip.swift
//  Exercicio_biblioteca
//
//  Created by Lázaro Lima dos Santos on 10/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//


import Foundation

class SocioVip: Socio {
    var mensalidade: Int
    
    init(nome: String, sobrenome: String, id: Int, mensalidade: Int, exemplares: [Exemplar], livrosRetirados: Int) {
        self.mensalidade = mensalidade
        super.init(nome: nome, sobrenome: sobrenome, id: id, exemplares: exemplares, livrosRetirados: livrosRetirados)
    }
    
    override func temCapacidadeDisponivel() -> Bool {
        return livrosRetirados < 15
    }
}
