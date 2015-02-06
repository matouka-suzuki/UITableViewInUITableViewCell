//
//  TableViewCell.swift
//  TableViewInTableViewCell
//

import UIKit

class TableViewCell: UITableViewCell {
    
    struct Constants{
        static let cellIdentifier = "TableViewContainerCellIdentifier"
    }

    @IBOutlet weak var innerTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        innerTableView.delegate = self
        innerTableView.dataSource = self
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "")
        cell.textLabel?.text = "Innter tableView's cell"
        return cell
    }
}

extension TableViewCell: UITableViewDelegate {
}
