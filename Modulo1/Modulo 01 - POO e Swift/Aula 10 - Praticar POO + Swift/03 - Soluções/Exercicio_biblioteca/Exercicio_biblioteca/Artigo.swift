//
//  Artigo.swift
//  Exercicio_biblioteca
//
//  Created by Lázaro Lima dos Santos on 23/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class Artigo: Publicacao, Imprimivel {
    var autores: [String]
    var date: Date
    var resumo: String

    init(codigoISBN: Int, autores: [String], date: Date, resumo: String, exemplares: [Exemplar]) {
        self.autores = autores
        self.date = date
        self.resumo = resumo
        super.init(codigoISBN: codigoISBN, exemplares: exemplares)
    }
    
    func imprimir() {
        self.adicionar(umExemplar: Exemplar(publicacao: self, numeroEdicao: 2019, localizacao: "A Definir", id: -1))
    }
}

