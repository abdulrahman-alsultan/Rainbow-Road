//
//  ViewController.swift
//  Rainbow Road
//
//  Created by admin on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let colors = [
        UIColor.green,
        UIColor.blue,
        UIColor.purple,
        UIColor.red,
        UIColor.orange,
        UIColor.yellow
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        self.tableView.rowHeight = UIScreen.main.bounds.size.height / CGFloat(colors.count)
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colors", for: indexPath)
        
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    
    
    
    
}
