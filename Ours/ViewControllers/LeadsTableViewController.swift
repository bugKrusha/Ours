//
//  LeadsTableViewController.swift
//  Ours
//
//  Created by Jon-Tait Beason on 8/5/19.
//  Copyright © 2019 Jon-Tait Beason. All rights reserved.
//

import UIKit

class LeadsTableViewController: UIViewController {
    private var leads: [Lead] = []
    @IBOutlet weak var leadsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        leadsTableView.register(UINib(nibName: "LeadsTableViewCell", bundle: nil),
                                forCellReuseIdentifier: "LeadTableViewCell")
    }
}

extension LeadsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return leads.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeadTableViewCell") as! LeadsTableViewCell
        cell.configure(lead: leads[indexPath.row])
        return cell
    }
}
