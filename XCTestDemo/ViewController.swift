//
//  ViewController.swift
//  XCTestDemo
//
//  Created by Guo on 2020/12/20.
//

import UIKit

class ViewController: UIViewController {

    lazy var button: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("点我", for: .normal)
        btn.addTarget(self, action: #selector(didClick(_:)), for: .touchUpInside)
        btn.accessibilityValue = "0"
        return btn
    }()
    
    lazy var existBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("显示", for: .normal)
        btn.accessibilityValue = "show"
        btn.isHidden = true
        return btn
    }()
    
    lazy var showView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.accessibilityIdentifier = "showView"
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        view.addSubview(button)
        view.addSubview(showView)
        view.addSubview(existBtn)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        existBtn.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        showView.frame = CGRect(x: 100, y: 300, width: 300, height: 300)
        showView.isAccessibilityElement = true
        showView.accessibilityTraits = [.button]
        // Do any additional setup after loading the view.
    }

    @objc func didClick(_ sender: UIButton) {
        showView.removeFromSuperview()
    }

    @IBAction func rightItemClick(_ sender: Any) {
        existBtn.isHidden = !existBtn.isHidden
    }
}


extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
}
