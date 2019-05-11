//
//  main.swift
//  Protocolos2_1
//
//  Created by Lázaro Lima dos Santos on 09/02/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

protocol Estourador {
    func estourar() -> Void
}

protocol Gritador {
    func gritar() -> Void
}

class ConvidadoComum: Gritador {
    func gritar() {
        print("Uhuu")
    }
}

class ConvidadoDH: Gritador {
    func gritar() {
        print("Viva o Sílvio!")
    }
}

class FogosDeArtificio: Estourador {
    func estourar() {
        print("Cabum")
    }
}

class Packs: Estourador {
    let fogosDeArtificio: [FogosDeArtificio]
    func estourar() {
        fogosDeArtificio.forEach {
            print("\($0.estourar()) Tchasquibum")
        }
    }
    init(fogosDeArtificio: [FogosDeArtificio]) {
        self.fogosDeArtificio = fogosDeArtificio
    }
}

class NonVivo {
    private var fogos: [Estourador] = []
    private var convidados: [Gritador] = []
    
    public func adicionaFogos(umEstourador: Estourador) -> Void {
        fogos.append(umEstourador)
    }
    
    public func adicionarConvidado(umGritador: Gritador) -> Void {
        convidados.append(umGritador)
    }
    
    public func soprarVelas() -> Void {
        fogos.forEach {
            print($0.estourar())
        }
        
        convidados.forEach {
            print($0.gritar())
        }
        
        
    }
}

let nonVivo = NonVivo()

nonVivo.adicionaFogos(umEstourador: FogosDeArtificio())
nonVivo.adicionaFogos(umEstourador: FogosDeArtificio())
nonVivo.adicionaFogos(umEstourador: FogosDeArtificio())
nonVivo.adicionaFogos(umEstourador: Packs.init(fogosDeArtificio: [FogosDeArtificio(), FogosDeArtificio(), FogosDeArtificio()]))
nonVivo.adicionaFogos(umEstourador: Packs.init(fogosDeArtificio: [FogosDeArtificio(), FogosDeArtificio(), FogosDeArtificio(), FogosDeArtificio()]))
nonVivo.adicionarConvidado(umGritador: ConvidadoComum())
nonVivo.adicionarConvidado(umGritador: ConvidadoComum())
nonVivo.adicionarConvidado(umGritador: ConvidadoComum())

for _ in 0...3 {
    nonVivo.adicionarConvidado(umGritador: ConvidadoDH())
}
nonVivo.soprarVelas()
