//
//  ViewController.swift
//  DependencyInjetion
//
//  Created by Alley Pereira on 30/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var data = [EmailAccount]()

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Emails"
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        data = models()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

    func models() -> [EmailAccount] {
        return [Gmail(), Yahoo(), Outlook()]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let acctount = data[indexPath.row]
        cell.textLabel?.text = acctount.domain
        return cell
    }
}
