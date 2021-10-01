//
//  CellData.swift
//  patientList20210930
//
//  Created by Amit Gupta on 9/30/21.
//

import Foundation

class Cell {
    var firstName: String
    var secondName: String
    var city: String
    init(firstName:String,secondName:String,city:String) {
        self.firstName=firstName
        self.secondName=secondName
        self.city=city
    }
}

class CellData {
    static public var cells:[Cell] = []
    static func createInitialDataset() {
        var li:[Cell]=[]
        li.append(Cell(firstName: "A1", secondName: "B1", city: "C1"))
        li.append(Cell(firstName: "A2", secondName: "B2", city: "C2"))
        li.append(Cell(firstName: "A3", secondName: "B3", city: "C3"))
        li.append(Cell(firstName: "A4", secondName: "B4", city: "C4"))
        li.append(Cell(firstName: "A5", secondName: "B5", city: "C5"))
        li.append(Cell(firstName: "A6", secondName: "B6", city: "C6"))
        li.append(Cell(firstName: "A7", secondName: "B7", city: "C7"))
        li.append(Cell(firstName: "A8", secondName: "B8", city: "C8"))
        cells=li
    }
    
    static func updateNotes(id:Int,newNote:String) {
        cells[id].city=newNote
    }
}
