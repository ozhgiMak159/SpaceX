//
//  SceneDelegate.swift
//  SpaceX
//
//  Created by Maksim  on 10.09.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let rootViewController = NavigationController()
        let assemblyBuilder = AssemblyBuilder()
        let router = Router(navigationController: rootViewController,
                            assemblyBuilder: assemblyBuilder)
        router.activateBaseModule()
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
}

