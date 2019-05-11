//
//  main.swift
//  Exercírio - POO + Swift - Herança
//
//  Created by Felipe Silva on 3/9/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

//Exercício 1:  Sistema Bancário 2.0
//
//O Banco Santander solicita a modelagem de um novo sistema. Esse sistema será usado para registrar as contas e os clientes do banco.
//
//Clientes:  os clientes serão identificados por um número de cliente. Os clientes individuais têm nome, sobrenome e RG. Já os clientes empresariais têm nome fantasia e CNPJ.
// 
//Contas: as contas que o banco oferece têm número de conta, cliente associado e saldo, e permitem depositar e/ou sacar dinheiro. Existem dois tipos de conta, com funcionamentos diferentes:
//
//•    Conta poupança:  além do saldo, as contas poupança têm uma taxa de juros.
//
//Neste tipo de conta, é possível realizar três operações:
//•    Depositar dinheiro: o cliente pode depositar a quantia de dinheiro que quiser.
//•    Sacar dinheiro:  o cliente pode sacar dinheiro, desde que não supere seu saldo.
//•    Recolher juros: o cliente pode recolher os juros mensais da conta poupança.
//
//•    Conta corrente:  além do saldo, as contas correntes têm um limite autorizado de cheque especial.  
// 
//Neste tipo de conta, é possível realizar três operações:
//•    Depositar dinheiro: o cliente pode depositar a quantia de dinheiro que quiser.
//•    Depositar cheques: o cliente pode depositar cheques. Um cheque possui um valor e um banco emissor.
//•    Sacar dinheiro:  o cliente pode sacar dinheiro e, caso não tenha saldo suficiente, usar seu cheque especial.
//
//
//
//
//Exercício 1 Bis: Adicional
//
//O banco lança um novo produto e pede que o sistema seja atualizado.  A partir de agora, oferecerá um novo tipo de conta, a “Conta conversível”, que permitirá operações tanto em reais quanto em dólares. Esse tipo de conta permite fazer tudo o que a conta corrente permite, além de:
//•    Depositar dólares
//•    Sacar dólares (para os dólares, não é possível usar cheque especial)
//•    Converter reais em dólares (a taxa de câmbio será um parâmetro)
//•    Converter dólares em reais (a taxa de câmbio será um parâmetro)
//
//
//Exercício 2: Mercado Aberto S.A
//
//Queremos modelar e implementar um sistema para calcular o salário dos funcionários da empresa Mercado Aberto S.A. Nessa empresa, todos os funcionários têm um salário básico. No entanto, alguns deles recebem suplementos diferentes de acordo com a categoria.
//
//•    Funcionários por tempo indeterminado: além do salário básico, recebem um suplemento que depende dos anos de serviço e outro de que depende do número declarado de filhos.
//•    Suplemento por filho:            200 reais (com um limite de 1000)
//•    Suplemento por ano de serviço:     100 reais (com um limite de 500) 

import Foundation

class  Cliente {

    var idCliente: Int?
    
}

class ClientePessoaFisica: Cliente {
   
    var nome: String?
    var sobrenome: String?
    var rg: String?

    init(nome: String, sobrenome: String, rg: String, idCliente: Int) {
        super.init()
        self.nome = nome
        self.sobrenome = sobrenome
        self.rg = rg
        self.idCliente = idCliente
        
    }
   
}

class ClienteCorporativo: Cliente {
    var cnpj: String?
    var nomeFantasia: String?
    
    init(nome: String, sobrenome: String, rg: String, cnpj: String, nomeFantasia: String, idCliente: Int ) {
        super.init()
        self.idCliente = idCliente
        self.cnpj = cnpj
        self.nomeFantasia = nomeFantasia
        
    }
}

class Cheque {
    
    var valor: Float?
    var bancoEmissor: String?
}


//Contas: as contas que o banco oferece têm número de conta, cliente associado e saldo, e permitem depositar e/ou sacar dinheiro. Existem dois tipos de conta, com funcionamentos diferentes:
class Conta {
    
    var numeroConta: String?
    var cliente: Cliente?
    var saldo:  Float?
    
    func depositar(valor: Float){
        
        if let _saldo = self.saldo {
            
            let _somaSaldo = valor + _saldo
            
            self.saldo = _somaSaldo
            print("deposito efetuado com sucesso:\nsaldo: \(self.saldo ?? 0)")
        }
    }
    
    func sacar(valor: Float) {
        
        if let _saldo = self.saldo {
            
            if _saldo >= valor {
                
                let _subtraiSaldo = _saldo - valor

                self.saldo = _subtraiSaldo
                print("saque efetuado com sucesso:\nsaldo restante: \(self.saldo ?? 0)")
            }else{
                print("saldo insuficiente")
            }

        }
        
    }
}

//
//•    Conta poupança:  além do saldo, as contas poupança têm uma taxa de juros.
//
//Neste tipo de conta, é possível realizar três operações:
//•    Depositar dinheiro: o cliente pode depositar a quantia de dinheiro que quiser.
//•    Sacar dinheiro:  o cliente pode sacar dinheiro, desde que não supere seu saldo.
//•    Recolher juros: o cliente pode recolher os juros mensais da conta poupança.
//
class ContaPoupanca: Conta {
    
    var taxaJuros: Float?
    
    func recolherJuros() {
        
        if let _taxaJuros = self.taxaJuros {
            
            if let _saldo = self.saldo {
                let rendimento = (_saldo * _taxaJuros)/100
                self.sacar(valor: rendimento)
            }
        }
    }
}



//Conta corrente:  além do saldo, as contas correntes têm um limite autorizado de cheque especial.  
// 
//Neste tipo de conta, é possível realizar três operações:
//•    Depositar dinheiro: o cliente pode depositar a quantia de dinheiro que quiser.
//•    Depositar cheques: o cliente pode depositar cheques. Um cheque possui um valor e um banco emissor.
//•    Sacar dinheiro:  o cliente pode sacar dinheiro e, caso não tenha saldo suficiente, usar seu cheque especial.
class ContaCorrente: Conta {
    
    var chequeEspecial: Float?
    
    func depositarCheque(cheque: Cheque){
        
        if let _valor = cheque.valor {
            self.depositar(valor: _valor)
        }else{
            print("Cheque com valor inválido")
        }
    }
    
    override func sacar(valor: Float) {
        
        if let _saldo = self.saldo {
            
            if _saldo >= valor {
                
                let _subtraiSaldo = _saldo - valor
                
                self.saldo = _subtraiSaldo
                print("saque efetuado com sucesso:\nsaldo restante: \(self.saldo ?? 0)")
            }else{
               
                if let _chequeEspecial = self.chequeEspecial {
                    
                    if _chequeEspecial >= valor {
                        print("vc utilizou R$:\(valor) do seu cheque especial")
                    }else {
                        print("saldo insuficiente")
                    }
                }else {
                    print("vc nao possui cheque especial")
                }
            }
            
        }
        
    }
}

//=====================================================================================
//=====================================================================================
//=====================================================================================
//=====================================================================================


/*Exercício 2: Mercado Aberto S.A

Queremos modelar e implementar um sistema para calcular o salário dos funcionários da empresa Mercado Aberto S.A. Nessa empresa, todos os funcionários têm um salário básico. No entanto, alguns deles recebem suplementos diferentes de acordo com a categoria.

●    Funcionários por tempo indeterminado: além do salário básico, recebem um suplemento que depende dos anos de serviço e outro de que depende do número declarado de filhos.
○    Suplemento por filho:            200 reais (com um limite de 1000)
○    Suplemento por ano de serviço:     100 reais (com um limite de 500)

●    Funcionários com comissão: além do salário básico, recebem uma comissão por cada venda realizada. Cada funcionário com comissão tem um registro das vendas que realizou. Para cada venda, é necessário registrar o valor total e o valor da comissão do funcionário.

●    Funcionários por tempo determinado:  não recebem suplementos adicionais, mas é importante registrar o número de meses do contrato.

A empresa quer saber qual é o salário que cada funcionário deve receber.
*/

enum CategoriaFuncionario {
    case FuncionarioTempoIndeterminado
    case FuncionarioComissao
    case FuncionarioTempoDeterminado
}

class Funcionario {
    
    var salario: Float?
    var qtdFilhos: Int?
    var qtdAnosTrabalhados: Int?

    
    func calcularSalario() {
        
        
    }
}

class FuncionarioTempoIndeterminado: Funcionario {

    init(salario: Float, qtdFilhos: Int, qtdAnosTrabalhados:Int) {
        super.init()
        self.salario = salario
        self.qtdFilhos = qtdFilhos
        self.qtdAnosTrabalhados = qtdAnosTrabalhados
    }
    
    override func calcularSalario() {
        
        guard let _salario = self.salario else{return}
        guard let _qtdFilhos = self.qtdFilhos else{return}
        guard let _qtdAnosTrabalhados = self.qtdFilhos else{return}
        
        var somaBeneficioFilhos: Float = 0
        var somaBeneficioAnosTrabalhados: Float = 0
        
        
        for _ in 0..._qtdFilhos {
            
            if somaBeneficioFilhos <= 1000 {
                let calc = somaBeneficioFilhos + 200
                somaBeneficioFilhos = calc
            }
        }
        
        for _ in 0..._qtdAnosTrabalhados {
            
            if somaBeneficioAnosTrabalhados <= 500 {
                let calc = somaBeneficioAnosTrabalhados + 100
                somaBeneficioAnosTrabalhados = calc
            }
        }
        
        let _salarioCalculado = somaBeneficioAnosTrabalhados + somaBeneficioFilhos + _salario
        self.salario = _salarioCalculado
        
    }
    
}

class Venda {
    
    var valor: Float?
    var comissao: Float?
    
    init(valor: Float, comissao: Float) {
        self.valor = valor
        self.comissao = comissao
    }
}


class FuncionarioComissao: Funcionario {
    
    var vendas: [Venda]?

    init(salario: Float, qtdFilhos: Int, qtdAnosTrabalhados:Int, vendas: [Venda] ) {
        super.init()
        self.salario = salario
        self.qtdFilhos = qtdFilhos
        self.qtdAnosTrabalhados = qtdAnosTrabalhados
        self.vendas = vendas
    }
    
    func registrarVenda(valorVenda: Float, comissao:Float) {
        
        let _vendaRegistrada = Venda(valor: valorVenda, comissao: comissao)
        self.vendas?.append(_vendaRegistrada)
        
        if let _vendasArray = self.vendas {
            
            print("VENDAS REGISTRADAS")
            for value in _vendasArray {
                print("valor: R$\(value.valor ?? 0)\ncomissão:\(value.comissao ?? 0)")
            }
        }
    }
}


class FuncionarioTempoDeterminado: Funcionario {
    
    var mesesTrabalhados: Int?
    
    init(salario: Float, qtdFilhos: Int, qtdAnosTrabalhados:Int) {
        super.init()
        self.salario = salario
        self.qtdFilhos = qtdFilhos
        self.qtdAnosTrabalhados = qtdAnosTrabalhados
        let meses = qtdAnosTrabalhados * 12
        self.mesesTrabalhados = meses
    }

}
