//
//  ViewController.swift
//  Now Fasting
//
//  Created by Mohammad Sulthan on 03/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var thisMonthPuasaTableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .white
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        thisMonthPuasaTableView.delegate = self
        thisMonthPuasaTableView.dataSource = self
        
        configUI()
    }
    
    fileprivate func configUI() {
        view.addSubview(thisMonthPuasaTableView)
        
        NSLayoutConstraint.activate([
            thisMonthPuasaTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            thisMonthPuasaTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            thisMonthPuasaTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            thisMonthPuasaTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = "Hello"
        return cell
    }
}

