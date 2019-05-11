//
//  main.swift
//  Protocolos_2
//
//  Created by Lázaro Lima dos Santos on 09/02/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

protocol Voador {
    func voar() -> Void
}

class Pato: Voador {
    func voar() {
        print("“Estou voando como um pato”")
    }
}

class Aviao: Voador {
    func voar() {
        print("“Estou voando como um avião”")
    }
}

class SuperHomem: Voador {
    func voar() {
        print("“Estou voando como um campeão”")
    }
}

class TorreDeControle {
    var voadores: [Voador] = []
    public func voamTodos() -> Void {
        voadores.forEach {
            print($0.voar())
        }
    }
    public func adicionarVoador(umVoador: Voador) -> Void {
        voadores.append(umVoador)
    }
}

let torreDeControle = TorreDeControle()
torreDeControle.adicionarVoador(umVoador: Pato())
torreDeControle.adicionarVoador(umVoador: Aviao())
torreDeControle.adicionarVoador(umVoador: SuperHomem())
torreDeControle.voamTodos()
