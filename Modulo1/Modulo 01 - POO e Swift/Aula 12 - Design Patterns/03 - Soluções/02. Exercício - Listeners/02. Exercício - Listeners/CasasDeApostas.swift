//
//  CasasDeApostas.swift
//  02. Exercício - Listeners
//
//  Created by Lázaro Lima dos Santos on 23/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class CasasDeApostas: AssinarHipodromo {
    var patrimonio: Float
    
    init(patrimonio: Float) {
        self.patrimonio = patrimonio
    }
    
    func resultadoInformado() {
        print("Patrimonio atual \(self.patrimonio + 1000)")
    }
}
