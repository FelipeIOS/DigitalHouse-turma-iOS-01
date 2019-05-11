//
//  Biblioteca.swift
//  Exercicio_biblioteca
//
//  Created by Lázaro Lima dos Santos on 10/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class Biblioteca {
    private var publicacoes: [Publicacao]
    private var socios: [Socio]
    private var emprestimos: [Emprestimo]
    private var categorias: [Categoria]
    private var publicacoesCategorizados: [Int: [Publicacao]]
    
    init(publicacoes: [Publicacao], socios: [Socio], emprestimos: [Emprestimo], categorias: [Categoria], publicacoesCategorizados: [Int: [Publicacao]]) {
        self.publicacoes = publicacoes
        self.socios = socios
        self.emprestimos = emprestimos
        self.categorias = categorias
        self.publicacoesCategorizados = publicacoesCategorizados
    }
    
    func registrar(socio: Socio) {
        socios.append(socio)
    }
    
    func registrar(publicacao: Publicacao) {
        publicacoes.append(publicacao)
    }
    
    private func emprestar(isbnPublicacao: Int, idSocio: Int) {
        var publicacaoExistente: Publicacao?
        var socioExistente: Socio?
        for publicacao in publicacoes {
            if publicacao.codigoISBN == isbnPublicacao {
                publicacaoExistente = publicacao
            }
        }
        
        for socio in socios {
            if socio.id == idSocio {
                socioExistente = socio
            }
        }
        
        if publicacaoExistente?.temExemplaresDisponiveis() ?? false && socioExistente?.temCapacidadeDisponivel() ?? false {
            if let exemplar = publicacaoExistente?.removerExemplar() {
                socioExistente?.pegarEmprestado(umExemplar: exemplar)
                
            }
        }
    }
    
    func emprestar(listaDoSBNs: [Int], idSocio: Int) {
        for id in listaDoSBNs {
            self.emprestar(isbnPublicacao: id, idSocio: idSocio)
        }
    }
    
    private func retornar(umExemplar: Exemplar, idSocio: Int) {
        for socio in socios {
            if socio.id == idSocio {
                socio.devolver(umExemplar: umExemplar)
                updateSocio(socio: socio)
            }
        }
        
    }
    
    func retornar(listaDeExemplares: [Exemplar], idSocio: Int) {
        for exemplar in listaDeExemplares {
            retornar(umExemplar: exemplar, idSocio: idSocio)
        }
    }
    
    func registrar(categoria: Categoria) {
        self.categorias.append(categoria)
    }
    
    func adicionar(umaPublicacao: Publicacao, a umaCategoria: Categoria) {
        var publicacoesCategorizadasExistente: (key: Int, value: [Publicacao])?
        for publicacoesCategorizadas in self.publicacoesCategorizados {
            if publicacoesCategorizadas.key == umaCategoria.codigo {
                publicacoesCategorizadasExistente = publicacoesCategorizadas
            }
        }
        if var publicacoesCategorizadasExistente = publicacoesCategorizadasExistente {
            publicacoesCategorizadasExistente.value.append(umaPublicacao)
            updatePublicacoesCategorizados(publicacoesCategorizados: publicacoesCategorizadasExistente)
        } else {
            self.registrar(categoria: umaCategoria)
            self.adicionar(umaPublicacao: umaPublicacao, a: umaCategoria)
        }
    }
    
    func listarPublicacoes(de umaCategoria: Categoria) -> [Publicacao] {
        for entity in self.publicacoesCategorizados {
            if entity.key == umaCategoria.codigo {
                return entity.value
            }
        }
        return []
    }
    
    func informarCategoria(de umaPublicacao: Publicacao) -> Categoria? {
        for entities in self.publicacoesCategorizados {
            for publicacao in entities.value {
                if umaPublicacao.codigoISBN == publicacao.codigoISBN {
                    for categoria in self.categorias {
                        if categoria.codigo == entities.key {
                            return categoria
                        }
                    }
                }
            }
        }
        return nil
    }
    
    func imprimirNovosExemplares(imprimiveis: [Imprimivel]) {
        for imprimivel in imprimiveis {
            imprimivel.imprimir()
        }
    }
    
    private func updatePublicacoes(publicacao: Publicacao) {
        for (index, entity) in self.publicacoes.enumerated() {
            if entity.codigoISBN == publicacao.codigoISBN {
                self.publicacoes.remove(at: index)
                self.publicacoes.append(publicacao)
            }
        }
    }
    
    private func updateSocio(socio: Socio) {
        for (index, entity) in self.socios.enumerated() {
            if entity.id == socio.id {
                self.publicacoes.remove(at: index)
                self.socios.append(socio)
            }
        }
    }
    
    private func updatePublicacoesCategorizados(publicacoesCategorizados: (key: Int, value: [Publicacao])) {
        for entity in self.publicacoesCategorizados {
            if entity.key == publicacoesCategorizados.key {
                self.publicacoesCategorizados.updateValue(publicacoesCategorizados.value, forKey: publicacoesCategorizados.key)
            }
        }
    }
    
}
