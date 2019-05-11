//
//  main.swift
//  Protocols2_2
//
//  Created by Lázaro Lima dos Santos on 09/02/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

protocol Alugavel {
    func alugar() -> Void
    func retornar() -> Void
    func alugado() -> Bool
}

protocol Usavel {
    func usar() -> Void
    func usado() -> Bool
}

class Exemplar {
    private var codigoIMDB: Int = 0
    private var titulo: String = ""
    private var anoLancamento: Int = 0
    private var idiomas: [String] = []
    
    init(codigoIMDB: Int, titulo: String, anoLancamento: Int, idiomas: [String]) {
        self.codigoIMDB = codigoIMDB
        self.titulo = titulo
        self.anoLancamento = anoLancamento
        self.idiomas = idiomas
    }
}

class DVD: Exemplar, Alugavel {
    func alugar() {
        isAlugado = true
    }
    
    func retornar()  {
        isAlugado = false
    }
    
    func alugado() -> Bool {
        return isAlugado
    }
    
    private let numeroZona: Int
    private var isAlugado: Bool
    
    init(codigoIMDB: Int, titulo: String, anoLancamento: Int, idiomas: [String], numeroZona: Int, isAlugado: Bool) {
        self.numeroZona = numeroZona
        self.isAlugado = isAlugado
        super.init(codigoIMDB: codigoIMDB, titulo: titulo, anoLancamento: anoLancamento, idiomas: idiomas)
    
    }
}

class BlueRay: Exemplar, Alugavel {
    func alugar() {
        isAlugado = true
    }
    
    func retornar()  {
        isAlugado = false
    }
    
    func alugado() -> Bool {
        return isAlugado
    }
    
    private var isAlugado: Bool
    init(codigoIMDB: Int, titulo: String, anoLancamento: Int, idiomas: [String], isAlugado: Bool) {
        self.isAlugado = isAlugado
        super.init(codigoIMDB: codigoIMDB, titulo: titulo, anoLancamento: anoLancamento, idiomas: idiomas)
        
    }
}

class VHS: Exemplar, Usavel {
    func usar() {
        isUsado = true
    }
    
    func usado() -> Bool {
        return isUsado
    }
    
    let dataFabricacao: String
    var isUsado: Bool
    init(codigoIMDB: Int, titulo: String, anoLancamento: Int, idiomas: [String], dataFabricacao: String, isUsado: Bool) {
        self.dataFabricacao = dataFabricacao
        self.isUsado = isUsado
        super.init(codigoIMDB: codigoIMDB, titulo: titulo, anoLancamento: anoLancamento, idiomas: idiomas)
        
    }
}

let dvd = DVD(codigoIMDB: 0, titulo: "DVD 1", anoLancamento: 2001, idiomas: ["Portugues, Ingles"], numeroZona: 1, isAlugado: false)
dvd.retornar()
dvd.alugar()
print(dvd.alugado())

let blueRay = BlueRay(codigoIMDB: 1, titulo: "Vingadores", anoLancamento: 2008, idiomas: ["Ingles"], isAlugado: false)
blueRay.retornar()
print(blueRay.alugado())

let vhs = VHS(codigoIMDB: 5, titulo: "A Mosca", anoLancamento: 2007, idiomas: ["Porgues"], dataFabricacao: "04/01/2001", isUsado: false)
vhs.usar()
print(vhs.isUsado)

