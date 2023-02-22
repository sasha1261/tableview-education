//
//  ViewController.swift
//  MyPorject
//
//  Created by Владимир on 06.02.2022.
//

import UIKit
//TASK 1 
class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//Protocol UITableviewDataSource
    
    //collection
    
    
   private var cellIdentifierWithImage = "cellIdentifier and Image"
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierWithImage) as? CellWithLabelAndImage
        let viewModel = array[indexPath.row]
        cell?.configure(viewModel)
        return cell ?? UITableViewCell()
    }
   private let array : [CellWithLabelAndImageViewModel] = [
        CellWithLabelAndImageViewModel(label: Costants.Text.austria, image: Costants.Image.austria ?? UIImage()),
        CellWithLabelAndImageViewModel(label: Costants.Text.belgium, image: Costants.Image.belgium ?? UIImage()),
        CellWithLabelAndImageViewModel(label: Costants.Text.france, image: Costants.Image.france ?? UIImage()),
        CellWithLabelAndImageViewModel(label: Costants.Text.germany, image: Costants.Image.germany ?? UIImage()),
        CellWithLabelAndImageViewModel(label: Costants.Text.greece, image: Costants.Image.greece ?? UIImage()),
    ]
//Class realization
    private lazy var tableView : UITableView = {
        var tableView = UITableView(frame: CGRect.zero , style: .grouped)
        tableView.allowsSelection = false
        return tableView
    }() 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CellWithLabelAndImage.self, forCellReuseIdentifier: cellIdentifierWithImage)
        tableView.dataSource = self
        tableView.delegate = self
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
}

