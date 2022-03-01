//
//  SecondViewController.swift
//  MyPorject
//
//  Created by Владимир on 07.02.2022.
//

import UIKit
//TASK 2
class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        let array = celendarDate()
        return array.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let array = celendarDate()
        let section = array[section]
        let date = section.nameOfSection
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        return dateFormatter.string(from: date)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let array = celendarDate()
        let section = array[section]
        return section.cell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let array = celendarDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierWithData)
        cell?.textLabel?.text = array[indexPath.section].cell[indexPath.row].title
        return cell ?? UITableViewCell()
    }
    

    private var cellIdentifierWithData = "cellDataWithTitle"
    
    private lazy var tableView : UITableView = {
        var tableView = UITableView(frame: CGRect.zero , style: .grouped)
        tableView.allowsSelection = false
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifierWithData)
        tableView.delegate = self
        tableView.dataSource = self
        setupViews()
    }
    private func setupViews() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    private func dateArray() -> [CellNewsWithDate] {
     let formater = DateFormatter()
     formater.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.sssZ"
         var array : [CellNewsWithDate] = []
         array = models.map {(CellNewsWithDate(date: formater.date(from: $0.publishedAt)!, title: $0.title))}
         return array
     }
    private func celendarDate() -> [CellForTask2ViewModel] {
         let calendar = Calendar.current
         let newArray = dateArray().map{(CellNewsWithDate(date: calendar.date(from: calendar.dateComponents([.day, .month , .year], from: $0.date)) ?? Date(), title: $0.title))}
         let dictionary = Dictionary(grouping: newArray, by: {$0.date})
         let arrayOfCellForTask2ViewModel = dictionary.map{(CellForTask2ViewModel(nameOfSection: $0.key, cell: $0.value))}
         return arrayOfCellForTask2ViewModel.sorted(){$0.nameOfSection > $1.nameOfSection}
     }

}
