//
//  ViewController.swift
//  TablesAppForKids
//
//  Created by IFOCUS on 4/17/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addTablesInfoView()
    }

    func addTablesInfoView() {
            let childView = UIHostingController(rootView: TablesView())
            addChild(childView)
            childView.view.frame = self.view.bounds
            self.view.addSubview(childView.view)
            self.view.backgroundColor = .black
            childView.didMove(toParent: self)
    }
}

