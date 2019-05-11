//
//  main.swift
//  02. Exercício - Listeners
//
//  Created by Lázaro Lima dos Santos on 23/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

let apostador = Apostador()
let kronika =  KronikaTv()
let casasDeAposta = CasasDeApostas(patrimonio: 23000)

let hipodromo = Hipodromo()
hipodromo.assinantes.append(apostador)
hipodromo.assinantes.append(kronika)
hipodromo.assinantes.append(casasDeAposta)

hipodromo.informarResultados()
