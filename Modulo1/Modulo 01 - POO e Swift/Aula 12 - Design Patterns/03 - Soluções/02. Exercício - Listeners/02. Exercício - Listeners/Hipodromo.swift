//
//  Hipodromo.swift
//  02. Exercício - Listeners
//
//  Created by Lázaro Lima dos Santos on 23/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

protocol AssinarHipodromo {
    func resultadoInformado()
}

class Hipodromo {
    var assinantes: [AssinarHipodromo] = []
    
    func informarResultados() {
        for assinante in assinantes {
            assinante.resultadoInformado()
        }
    }
}
