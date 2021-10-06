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
    var aiGroup: String
    init(firstName:String,secondName:String,aiGroup:String) {
        self.firstName=firstName
        self.secondName=secondName
        self.aiGroup=aiGroup
    }
}

class CellData {
    static public var cells:[Cell] = []
    static func createInitialDataset() {
        var li:[Cell]=[]
        li.append(Cell(firstName: "A1", secondName: "B1", aiGroup: "Bucket1"))
        li.append(Cell(firstName: "A2", secondName: "B2", aiGroup: "Bucket2"))
        li.append(Cell(firstName: "A3", secondName: "B3", aiGroup: "Bucket3"))
        li.append(Cell(firstName: "A4", secondName: "B4", aiGroup: "Bucket1"))
        li.append(Cell(firstName: "A5", secondName: "B5", aiGroup: "Bucket2"))
        li.append(Cell(firstName: "A6", secondName: "B6", aiGroup: "Bucket3"))
        li.append(Cell(firstName: "A7", secondName: "B7", aiGroup: "Bucket1"))
        li.append(Cell(firstName: "A8", secondName: "B8", aiGroup: "Bucket2"))
        cells=li
    }
    
    static func updateNotes(id:Int,newNote:String) {
        cells[id].aiGroup=newNote
    }
}
