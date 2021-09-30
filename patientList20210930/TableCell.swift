//
//  TableCell.swift
//  patientList20210930
//
//  Created by Amit Gupta on 9/30/21.
//

import Foundation
import UIKit

class TableCell: UITableViewCell {
    var cell:Cell!
    
    @IBOutlet weak var upperLabel: UILabel!
    
    @IBOutlet weak var lowerLabel: UILabel!
    
    func setCell(cell: Cell) {
        self.cell=cell
        upperLabel.text=cell.firstName
        lowerLabel.text=cell.secondName
    }
}
