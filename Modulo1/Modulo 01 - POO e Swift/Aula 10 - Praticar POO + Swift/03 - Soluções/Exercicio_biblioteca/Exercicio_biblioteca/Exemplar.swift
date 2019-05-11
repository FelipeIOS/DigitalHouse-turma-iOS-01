
//
//  Exemplar.swift
//  Exercicio_biblioteca
//
//  Created by Lázaro Lima dos Santos on 10/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class Exemplar {
    var publicacao: Publicacao
    var numeroEdicao: Int
    var localizacao: String
    var id: Int
    
    init(publicacao: Publicacao, numeroEdicao: Int, localizacao: String, id: Int) {
        self.publicacao = publicacao
        self.numeroEdicao = numeroEdicao
        self.localizacao = localizacao
        self.id = id
    }
}
