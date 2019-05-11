//
//  main.swift
//  Protocolos_1
//
//  Created by Lázaro Lima dos Santos on 09/02/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

protocol Imprimivel {
    func imprimir() -> Void
}

class Contrato: Imprimivel {
    func imprimir() {
        print("“Sou um contrato muito legal”")
    }
}

class Foto: Imprimivel {
    func imprimir() {
        print("“Sou uma selfie”")
    }
}

class Documento: Imprimivel {
    func imprimir() {
        print("“Sou um documento do Word”")
    }
}

class Impressora {
    var imprimiveis: [Imprimivel] = []
    public func imprimirTudo() -> Void {
        imprimiveis.forEach {
            print($0.imprimir())
        }
    }
    public func agregarImprimivel(umImprimivel: Imprimivel) -> Void {
        imprimiveis.append(umImprimivel)
    }
}

let impressora = Impressora()
impressora.agregarImprimivel(umImprimivel: Contrato())
impressora.agregarImprimivel(umImprimivel: Foto())
impressora.agregarImprimivel(umImprimivel: Documento())

print(impressora.imprimirTudo())
