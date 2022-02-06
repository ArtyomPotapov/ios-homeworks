//
//  ProfileView.swift
//  Navigation
//
//  Created by Artyom Potapov on 07.02.2022.
//

import UIKit

class ProfileView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        addXib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addXib()

    }
    
    private func addXib() {
        
        let bundle = Bundle.init(for: ProfileView.self)
        if let viewToAdd = bundle.loadNibNamed("ProfileView", owner: self, options: nil)?.first as? UIView {
            addSubview(viewToAdd)
            viewToAdd.frame = self.bounds
            viewToAdd.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
}
