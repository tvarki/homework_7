//
//  MyView.swift
//  HomeWork_7
//
//  Created by Дмитрий Яковлев on 08.11.2019.
//  Copyright © 2019 Дмитрий Яковлев. All rights reserved.
//

import UIKit


class MyView : UIView {
    private var nameButton = UIButton(frame: CGRect(x: 5,y: 20,width: 200,height: 200))
    private var nameLabel = UILabel(frame: CGRect(x: 5,y: 65,width: 200,height: 200))
    
    var i = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder:coder)
        setup()
        
    }
    
    private func setup(){
        

        nameButton.setImage(UIImage(named: "off"), for: .normal)

        nameButton.addTarget(self, action: #selector(editText), for: .touchDown)
        
        addSubview(nameButton)
            
        nameLabel.textColor = UIColor.red
        nameLabel.text = "Вы пока не нажали на кнопку"
        nameLabel.numberOfLines = 0
        nameLabel.lineBreakMode = .byWordWrapping
        nameLabel.frame.size.width = 200
        nameLabel.textAlignment = .center
        addSubview(nameLabel)
    }
    
    
    
    @objc private func editText(){
        i += 1
        nameLabel.text = "Вы нажали на кнопку \(i) раз"
        if(i%2 == 1 ){
            nameButton.setImage(UIImage(named: "on"), for: .normal)
        }else{
            nameButton.setImage(UIImage(named: "off"), for: .normal)
        }
        
    }
    
}
