//
//  SnapkitViewController.swift
//  MyProject
//
//  Created by Winitech on 2023/06/25.
//

import UIKit
import SnapKit

class SnapkitViewController: UIViewController {
    
    lazy var box = UIView()
    
    lazy var redBox = UIView()
    lazy var orangeBox = UIView()
    lazy var blueBox = UIView()
    lazy var greenBox = UIView()
    lazy var uiUpdateButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        self.view.addSubview(box)
//        box.backgroundColor = .green
//        box.snp.makeConstraints { (make) -> Void in
//            make.width.height.equalTo(50)
//            make.center.equalTo(self.view)
//        }
        
        self.view.addSubview(redBox)
        self.view.addSubview(orangeBox)
        self.view.addSubview(blueBox)
        self.view.addSubview(greenBox)
        self.view.addSubview(uiUpdateButton)
        
        redBox.backgroundColor = .red
        orangeBox.backgroundColor = .orange
        blueBox.backgroundColor = .blue
        greenBox.backgroundColor = .green
        
        redBox.snp.remakeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(50)
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(10)
        }
        
        orangeBox.snp.makeConstraints { make in
            make.top.equalTo(redBox.snp.bottom).offset(10)
            make.left.right.equalTo(redBox)
            make.height.equalTo(50)
        }
        
        blueBox.snp.makeConstraints { make in
            make.left.equalTo(orangeBox)
            make.height.equalTo(50)
            make.top.equalTo(orangeBox.snp.bottom).offset(10)
            make.right.equalTo(greenBox.snp.left).offset(-10)
            make.width.equalTo(greenBox)
        }
        
        greenBox.snp.makeConstraints { make in
            make.right.equalTo(orangeBox)
            make.height.equalTo(50)
            make.top.equalTo(orangeBox.snp.bottom).offset(10)
            make.left.equalTo(blueBox.snp.right).offset(10)
            make.width.equalTo(blueBox)
        }
        
        uiUpdateButton.backgroundColor = .gray
        uiUpdateButton.setTitle("Update", for: .normal)
        uiUpdateButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(50)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide).offset(-10)
        }
        uiUpdateButton.addTarget(self, action: #selector(updateUILayout), for: .touchUpInside)
    }
    
    @objc func updateUILayout() {
            
            redBox.snp.updateConstraints { make in
                make.height.equalTo(100)
            }
            orangeBox.snp.updateConstraints { make in
                make.height.equalTo(100)
            }
            blueBox.snp.updateConstraints { make in
                make.height.equalTo(100)
            }
            greenBox.snp.updateConstraints { make in
                make.height.equalTo(100)
            }
            uiUpdateButton.snp.updateConstraints { make in
                make.height.equalTo(100)
            }
        }
}


// https://junsangkwon.tistory.com/17
