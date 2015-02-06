//
//  ViewController.swift
//  TableViewInTableViewCell
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: TableViewCell.Constants.cellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableViewCell.Constants.cellIdentifier, forIndexPath: indexPath) as TableViewCell
        let tableView = cell.innerTableView
        self.updateCell(cell, atIndexPath: indexPath)
        return cell as UITableViewCell
    }
    
    func updateCell(cell: UITableViewCell, atIndexPath: NSIndexPath) {
        
    }
}

extension ViewController : UITableViewDelegate {
    
}

