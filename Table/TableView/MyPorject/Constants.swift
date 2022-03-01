//
//  Constants.swift
//  MyPorject
//
//  Created by Владимир on 07.02.2022.
//

import UIKit
enum Costants {
    enum Fonts {
        static var ui16Medium : UIFont? {
            UIFont(name: "Inter-Medium", size: 16)
        }
        static var ui30Semi : UIFont? {
            UIFont(name: "Inter-SemiBold", size: 30)
        }
        static var systemLabel : UIFont {
            UIFont.systemFont(ofSize: 30, weight: .medium)
        }
        static var systemText : UIFont {
            UIFont.systemFont(ofSize: 40, weight: .bold)
        }
    }
    enum Text {
        static let text1 = "task 1"
        static let text2 = "task 2"
        static let text3 = "task 3"
        static let austria = "Austria"
        static let belgium = "Belgium"
        static let france = "France"
        static let germany = "Germany"
        static let greece = "Greece"
        static let country = "Country"
    }
    enum Image {
        static let austria = UIImage(named: "Austria")
        static let belgium = UIImage(named: "Belgium")
        static let france = UIImage(named: "France")
        static let germany = UIImage(named: "Germany")
        static let greece = UIImage(named: "Greece")
    }
}

