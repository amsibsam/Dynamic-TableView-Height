//
//  ViewController.swift
//  Testing Nested Table
//
//  Created by Rahardyan Bisma on 12/08/18.
//  Copyright © 2018 amsibsam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var contentViw: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tableViewPolling: UITableView!
    @IBOutlet weak var constraintTableViewHeight: NSLayoutConstraint!
    private var pollingItems: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        pollingItems.append("Saya")
    }

    @IBAction func addItem(_ sender: UIButton) {
        pollingItems.append("nambah baru")
        reloadTableView()
    }
    
    private func setupTableView() {
        tableViewPolling.dataSource = self
        tableViewPolling.delegate = self
        tableViewPolling.tableFooterView = UIView()
        tableViewPolling.register(UINib(nibName: "PollingCell", bundle: nil), forCellReuseIdentifier: "PollingCell")
//        reloadTableView()
    }
    
    private func reloadTableView() {
        tableViewPolling.reloadData()
        constraintTableViewHeight.constant = tableViewPolling.contentSize.height
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pollingItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let polling = pollingItems[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PollingCell", for: indexPath) as! PollingCell
        
        cell.bindDataToView(polling: polling)
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
