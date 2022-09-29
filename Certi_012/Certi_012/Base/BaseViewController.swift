//
//  BaseViewController.swift
//  Certi
//
//  Created by 소정의 Mac on 2022/09/29.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //NavigationController
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .clear
            appearance.shadowColor = .lightGray
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
        navigationController?.navigationBar.isTranslucent = true
    }


    @objc func goToMenu() {
        self.dismiss(animated: true)
        self.present(AddSubViewController(), animated: false)
    }
 
    func setMenuButton() {
        let menuButton: UIButton = UIButton()
        menuButton.setImage(UIImage(named: "menuNav")?.withTintColor(.black), for: .normal)
        menuButton.tintColor = .black
        menuButton.addTarget(self, action: #selector(goToMenu), for: .touchUpInside)
        menuButton.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        let addMenuButton = UIBarButtonItem(customView: menuButton)
        navigationItem.setLeftBarButton(addMenuButton, animated: false)
    }
}

