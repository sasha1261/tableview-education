//
//  NewsViewController .swift
//  MyPorject
//
//  Created by Владимир on 12.02.2022.
//

import UIKit

class NewsViewController: UIViewController {
  
    func configure(_ array : [NewsWithLocationModel],number : Int) {
        labelNews.text = array[number].description
        labelLocation.text = array[number].location
    }
    
    
    private lazy var labelNews : UILabel = {
       let label = UILabel()
        label.numberOfLines = 0;
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
      private lazy var labelLocation : UILabel = {
       let label = UILabel()
        label.numberOfLines = 0;
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    
    private lazy var stackView : UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.addArrangedSubview(labelNews)
        stackView.addArrangedSubview(labelLocation)
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stackView)
        setupConstraints()
        view.backgroundColor = .white
        title = "Detail Information"
        
        
    }
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        stackView.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: 380 ).isActive = true
    }
    
    
}
