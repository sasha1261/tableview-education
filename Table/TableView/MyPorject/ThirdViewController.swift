//
//  ThirdViewController.swift
//  MyPorject
//
//  Created by Владимир on 07.02.2022.
//

import UIKit
//TASK 3
class ThirdViewConroller: UIViewController, UITableViewDataSource, UITableViewDelegate {
 

     func tableView (_ tableView : UITableView, didSelectRowAt indexPath : IndexPath) {
        let new = NewsViewController()
        new.configure(arrayOfNews, number: indexPath.row)
        self.navigationController?.pushViewController(new, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierWithNews)
        cell?.textLabel?.text = arrayOfNews[indexPath.row].name
        return cell ?? UITableViewCell()
    }
    

    private var cellIdentifierWithNews = "CellWIthNews"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifierWithNews)
        tableView.delegate = self
        tableView.dataSource = self
        setupViews()
    }
    private lazy var tableView : UITableView = {
        var tableView = UITableView(frame: CGRect.zero , style: .grouped)
        return tableView
    }()
    private func setupViews() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
}
