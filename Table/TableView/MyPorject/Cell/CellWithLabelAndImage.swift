//
//  CellWithLabelAndImage.swift
//  MyPorject
//
//  Created by Владимир on 08.02.2022.
//

import UIKit
class  CellWithLabelAndImage: UITableViewCell {
    private lazy var label : UILabel = {
       let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    private lazy var imageOfCountry : UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    private lazy var stackView : UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.spacing = 100
        stackView.addArrangedSubview(imageOfCountry)
        stackView.addArrangedSubview(label)
        return stackView
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(stackView)
        setupConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configure(_ viewModel : CellWithLabelAndImageViewModel)  {
        label.text = viewModel.label
        imageOfCountry.image = viewModel.image
    }
    private func setupConstraints() {
        stackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: 210).isActive = true
    }
}
