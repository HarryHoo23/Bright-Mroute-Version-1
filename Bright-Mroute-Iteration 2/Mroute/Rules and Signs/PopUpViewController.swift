//
//  PopUpViewController.swift
//  Mroute
//
//  Created by zhongheng on 27/4/19.
//  Copyright © 2019 Zhongheng Hu. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var descriptionImage: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBAction func closePopUp(_ sender: Any) {
        removeAnimate() // disappear the PopUp window when click the close button.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        self.showAnimate()
        // Do any additional setup after loading the view.
    }
    
    func showAnimate(){
        self.view.transform = CGAffineTransform(scaleX: 1.3,y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25) {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    } //show the pop up window with animation.
    
    func removeAnimate(){ // this function will close the pop up window.
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3,y: 1.3)
            self.view.alpha = 0.0
        }) { (finished: Bool) in
            if (finished){
                self.view.removeFromSuperview()
            }
        }
    }
}
