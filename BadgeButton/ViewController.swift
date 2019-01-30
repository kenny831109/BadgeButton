//
//  ViewController.swift
//  BadgeButton
//
//  Created by 逸唐陳 on 2018/8/6.
//  Copyright © 2018年 逸唐陳. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cart: BadgeButton = {
        let button = BadgeButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("cart", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(testBadge), for: .touchUpInside)
        return button
    }()
    
    @objc func testBadge() {
        num += 1
        cart.badgeLabel.text = "\(num)"
    }
    
    var num: Int = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(cart)
        cart.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cart.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cart.widthAnchor.constraint(equalToConstant: 100).isActive = true
        cart.heightAnchor.constraint(equalToConstant: 20).isActive = true
        cart.badgeEdgeInsets = UIEdgeInsets(top: 0, left: 100, bottom: 18, right: 0)
        cart.addBadgeToButon(badge: "\(num)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

