//
//  ViewController.swift
//  TabNavigationBarTest
//
//  Created by Karlo A. López on 10/5/19.
//  Copyright © 2019 Karlo A. López. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate{
    
    
    @IBOutlet weak var tabBar: UITabBar!
    @IBOutlet weak var contentScrollView: UIScrollView!
    
    //Content views
    @IBOutlet weak var container1: UIView!
    @IBOutlet weak var container2: UIView!
    
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        let indexOfTab = tabBar.items?.index(of: item)
        
        if(indexOfTab == 0){
            contentScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        }else{
            contentScrollView.setContentOffset(CGPoint(x: contentScrollView.bounds.width, y: 0), animated: true)
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.layoutIfNeeded()
        contentScrollView.contentSize = CGSize(width: (contentScrollView.bounds.width * 2), height: contentScrollView.bounds.height)
        self.view.layoutIfNeeded()
        contentScrollView.isPagingEnabled = true;
    }


}

