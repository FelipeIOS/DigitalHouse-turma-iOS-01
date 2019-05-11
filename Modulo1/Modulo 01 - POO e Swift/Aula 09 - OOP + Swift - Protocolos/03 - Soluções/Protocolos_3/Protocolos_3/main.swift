//
//  main.swift
//  Protocolos_3
//
//  Created by Lázaro Lima dos Santos on 09/02/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

protocol Reprodutor {
    func reproduzir() -> Void
}

class DVD: Reprodutor {
    func reproduzir() {
        print("Lendo DVD")
    }
}

class BlueRay: Reprodutor {
    func reproduzir() {
        print("Lendo BlueRay")
    }
}

class VHS: Reprodutor {
    func reproduzir() {
        print("5 metros de Fita")
    }
}

class Estante {
    var aparelhos: [Reprodutor] = []
    
    public func reproduzirTudo() -> Void {
        aparelhos.forEach {
            print($0.reproduzir())
        }
    }
    
    public func addAparelho(umAparelho: Reprodutor) -> Void {
        aparelhos.append(umAparelho)
    }
    
}

let estante = Estante()
estante.addAparelho(umAparelho: DVD())
estante.addAparelho(umAparelho: BlueRay())
estante.addAparelho(umAparelho: VHS())
print(estante.reproduzirTudo())
