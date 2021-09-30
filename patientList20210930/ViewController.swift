//
//  ViewController.swift
//  patientList20210930
//
//  Created by Amit Gupta on 9/30/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CellData.createInitialDataset()
        tableView.delegate=self
        tableView.dataSource=self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CellData.cells.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = CellData.cells[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTypeOne") as! TableCell
        cell.setCell(cell: cellData)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    
    
}

