//
//  Livro.swift
//  Exercicio_biblioteca
//
//  Created by Lázaro Lima dos Santos on 10/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class Livro: Publicacao, Imprimivel {
    private var nome: String
    private var autor: String
    
    init(nome: String, codigoISBN: Int, autor: String, exemplares: [Exemplar]) {
        self.nome = nome
        self.autor = autor
        super.init(codigoISBN: codigoISBN, exemplares: exemplares)
    }
    
    func imprimir() {
        self.adicionar(umExemplar: Exemplar(publicacao: self, numeroEdicao: 2019, localizacao: "A Definir", id: -1))
    }
}
