//
//  main.swift
//  01. Exercício - Opicionais
//
//  Created by Felipe Silva on 1/26/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation

/* 1- Assumindo três variáveis usadas para representar uma pessoa(primeiroNome, segundoNome, sobrenome), imprimir na tela o nome completo.
Definir as três variáveis (lembrando que nem todas as pessoas têm um segundo nome) e atribuir um valor a cada uma.
Imprimir na tela o nome completo da pessoa.
*/

var primeiroNome: String?
var segundoNome: String?
var sobrenome: String?

primeiroNome = "Patricia "
sobrenome = "Aleixo"

print(primeiroNome ?? "")
print(segundoNome ?? "")
print(sobrenome ?? "")

// 2- Dada uma variável do tipo String? com o número do documento de uma pessoa (sem pontos), imprimir o próximo número do documento na tela.

var docNumero: String?
docNumero = "3833190280"
print("numero: \(docNumero ?? "")7")

/*
 
 3- Fazer um questionário com os espectadores de um filme. Cada questionário tem 5 perguntas nas quais é preciso avaliar diferentes aspectos do filme de 1 a 10. Escrever uma função que, dado um array com os resultados de cada pergunta, calcule a média de um questionário. Lembrar que todas as perguntas são opcionais, ou seja, uma pessoa pode não responder uma ou várias perguntas (pode, inclusive, não responder nenhuma ou responder todas).
 
 */

// TO DO = analisar o enunciado da questao 3, pois nao ficou claro


/*
 
 4-  Uma das pessoas responsáveis por administrar a pesquisa decide montar uma lista com os nomes de todos os participantes, já que sabe que "Lobão" estava no cinema no momento da pesquisa. Escrever uma função que, dado um array com os nomes dos participantes, retorne a posição em que “Lobão” se encontra.
 Modificar a função anterior para usar o método index(of:) da classe Array.
 
 */

let listaDeParticipantes = ["Patricia","Felipe", "Ana", "Juliana","Camila","Roberto","Lobão","Fernanda"]

func encontrarPosicaoParticipante(lista:[String]) -> Int {
    
    let index = lista.firstIndex(of: "Lobão")
    return index ?? 0
}

print(encontrarPosicaoParticipante(lista: listaDeParticipantes))


