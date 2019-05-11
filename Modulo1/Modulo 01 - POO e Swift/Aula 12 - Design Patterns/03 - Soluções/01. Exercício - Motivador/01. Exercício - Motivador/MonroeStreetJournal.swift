//
//  MonroeStreetJournal.swift
//  01. Exercício - Motivador
//
//  Created by Lázaro Lima dos Santos on 23/03/19.
//  Copyright © 2019 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

protocol AssinarJornal {
    func jornalEntregue()
}

class MonroeStreetJournal {
    var assinantes: [AssinarJornal] = []
    
    func entregarJornal() {
        
        for assinante in assinantes {
            assinante.jornalEntregue()
        }
    }

}
