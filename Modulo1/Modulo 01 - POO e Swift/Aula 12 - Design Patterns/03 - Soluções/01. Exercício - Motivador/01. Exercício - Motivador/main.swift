//
//  main.swift
//  01. Exercício - Motivador
//
//  Created by Lázaro Lima dos Santos on 23/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

let jornal = MonroeStreetJournal()

let amanda = Pessoa(nome: "Amanda", rg: "3032332-0", enderecoEntrega: "Rua Gomes de Carvalho 72")

let ibm = Empresa(nome: "IBM", cnpj: "38497382733-2", numeroFuncionarios: 9000)

jornal.assinantes.append(amanda)
jornal.assinantes.append(ibm)

jornal.entregarJornal()
