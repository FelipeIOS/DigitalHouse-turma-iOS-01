//
//  Publicacao.swift
//  Exercicio_biblioteca
//
//  Created by Lázaro Lima dos Santos on 23/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class Publicacao {
    var codigoISBN: Int
    private var exemplares: [Exemplar]
    
    init(codigoISBN: Int, exemplares: [Exemplar]) {
        self.codigoISBN = codigoISBN
        self.exemplares = exemplares
    }
    
    func adicionar(umExemplar: Exemplar) {
        exemplares.append(umExemplar)
    }
    
    func temExemplaresDisponiveis() -> Bool {
        return exemplares.count > 0
    }
    
    func removerExemplar() -> Exemplar? {
        if temExemplaresDisponiveis() {
            let exemplar = exemplares.first
            exemplares.removeFirst()
            return exemplar
        } else {
            return nil
        }
    }
    
    func receber(umExemplar: Exemplar) {
        exemplares.append(umExemplar)
    }
}
