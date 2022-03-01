//
//  SceneDelegate.swift
//  MyPorject
//
//  Created by Владимир on 06.02.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let tabBarController = UITabBarController()
        let firsViewController  = FirstViewController()
        let secondViewController = SecondViewController()
        let navigatioController = UINavigationController(rootViewController: ThirdViewConroller())
        firsViewController.tabBarItem = UITabBarItem.init(title: "task 1", image: nil, selectedImage: nil)
        secondViewController.tabBarItem = UITabBarItem.init(title: "task 2", image: nil, selectedImage: nil)
        navigatioController.tabBarItem = UITabBarItem.init(title: "task 3", image: nil, selectedImage: nil)
        tabBarController.viewControllers = [firsViewController,secondViewController,navigatioController]
        window.rootViewController = tabBarController
        
        self.window = window
        window.makeKeyAndVisible()
    }
    func sceneDidDisconnect(_ scene: UIScene) {
    }
    func sceneDidBecomeActive(_ scene: UIScene) {
    }
    func sceneWillResignActive(_ scene: UIScene) {
    }
    func sceneWillEnterForeground(_ scene: UIScene) {
    }
    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

