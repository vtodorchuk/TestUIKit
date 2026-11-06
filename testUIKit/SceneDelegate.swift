//
//  SceneDelegate.swift
//  testUIKit
//
//  Created by Vladyslav Todorchuk on 05.11.2026.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = createTabbar()
        window?.makeKeyAndVisible()
    }

    func createTabbar() -> UITabBarController {
        let tabbar = UITabBarController()
        
        UITabBar.appearance().tintColor = .systemPink
        tabbar.viewControllers = [
            createSearchNavigationController(tag: 0),
            createFavoritesListViewController(tag: 0)
        ]
        
        return tabbar
    }
    
    func createSearchNavigationController(tag: Int) -> UINavigationController {
        let searchNC = SearchViewController()
        searchNC.title = "Search"
        searchNC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: tag)
        
        return UINavigationController(rootViewController: searchNC)
    }
    
    func createFavoritesListViewController(tag: Int) -> UINavigationController {
        let favoriteNC = FavoritesListViewController()
        favoriteNC.title = "Favorites"
        favoriteNC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: tag)
        
        return  UINavigationController(rootViewController: favoriteNC)
    }
    
    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }
}

