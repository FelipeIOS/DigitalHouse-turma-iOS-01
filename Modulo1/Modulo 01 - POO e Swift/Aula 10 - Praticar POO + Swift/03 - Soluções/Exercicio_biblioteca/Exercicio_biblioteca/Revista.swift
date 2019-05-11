//
//  Revista.swift
//  Exercicio_biblioteca
//
//  Created by Lázaro Lima dos Santos on 23/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class Revista: Publicacao {
    private var autor: String
    private var date: Date
    
    init(codigoISBN: Int, autor: String, date: Date, exemplares: [Exemplar]) {
        self.autor = autor
        self.date = date
        super.init(codigoISBN: codigoISBN, exemplares: exemplares)
    }
    
}
