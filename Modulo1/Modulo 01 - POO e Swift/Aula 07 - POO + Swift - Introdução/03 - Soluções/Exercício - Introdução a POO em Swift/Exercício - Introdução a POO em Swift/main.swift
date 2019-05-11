//
//  main.swift
//  Exercício - Introdução a POO em Swift
//
//  Created by Felipe Silva on 2/6/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation

class Cliente {
    var nome: String?
    var sobrenome: String?
    
    init(nome: String, sobrenome: String) {
        self.nome = nome
        self.sobrenome = sobrenome
    }
}

class Conta {
    var numeroConta: Int?
    var saldo: Float?
    var titular: Cliente?
    
    init(numeroConta: Int, saldo: Float, titular: Cliente) {
        self.numeroConta = numeroConta
        self.saldo = saldo
        self.titular = titular
    }
    
    func depositar(quantiaEmDinheiro: Float) {
        
        if let _saldo = self.saldo {
            let soma = _saldo + quantiaEmDinheiro
            self.saldo = soma
            print("operacao realizada: deposito \nsaldo: R$: \(self.saldo ?? 0)")
        }
        
    }
    
    func extrair(quantiaEmDinheiro: Float) {
        
        if self.saldo ?? 0 >= quantiaEmDinheiro {
            
            if let _saldo = self.saldo {
                let subtracao = _saldo - quantiaEmDinheiro
                self.saldo = subtracao
                print("operacao realizada: extrair \nsaldo: R$: \(self.saldo ?? 0)")
            }
          
        }else {
            print("Saldo insuficiente")
        }
    }
    
}


var cliente1: Cliente = Cliente(nome: "Patricia", sobrenome: "Miranda")
var cliente2: Cliente = Cliente(nome: "Felipe", sobrenome: "Miranda")

var conta1: Conta = Conta(numeroConta: 1234, saldo: 1000, titular: cliente1)
var conta2: Conta = Conta(numeroConta: 4321, saldo: 500, titular: cliente2)

conta1.depositar(quantiaEmDinheiro: 1500)
conta1.extrair(quantiaEmDinheiro: 1500)
conta1.extrair(quantiaEmDinheiro: 3000)


conta2.depositar(quantiaEmDinheiro: 1500)
conta2.extrair(quantiaEmDinheiro: 1500)
conta2.extrair(quantiaEmDinheiro: 3000)

