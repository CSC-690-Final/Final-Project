//
//  ViewController.swift
//  CNPPopupControllerExampleSwift
//
//  Created by Carson Perrotti on 2016-01-14.
//  Copyright © 2016 Carson Perrotti. All rights reserved.
//


// A big thank you to Alessandro Miliucci - lifeisfoo@gmail.com for helping with the swift example.

import UIKit

class ViewController: UIViewController {
    
    var popupController:CNPPopupController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showPopupWithStyle(_ popupStyle: CNPPopupStyle) {
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = NSLineBreakMode.byWordWrapping
        paragraphStyle.alignment = NSTextAlignment.center
        
        let title = NSAttributedString(string: "Guess the answer!", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 24), NSAttributedStringKey.paragraphStyle: paragraphStyle])
        
        let button = CNPPopupButton.init(frame: CGRect(x: 0, y: 0, width: 200, height: 60))
        button.setTitleColor(UIColor.white, for: UIControlState())
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitle("Submit", for: UIControlState())
        
        button.backgroundColor = UIColor.blue  //(colorLiteralRed: 0.46, green: 0.8, blue: 1.0, alpha: 1.0)
        
        button.layer.cornerRadius = 4;
        button.selectionHandler = { (button) -> Void in
            self.popupController?.dismiss(animated: true)
            print("Block for button: \(String(describing: button.titleLabel?.text))")
        }
        
        let titleLabel = UILabel()
        titleLabel.numberOfLines = 0;
        titleLabel.attributedText = title
        
        let lineOneLabel = UILabel()
        lineOneLabel.numberOfLines = 0;
        
        
        let imageView = UIImageView.init(image: UIImage.init(named: "icon"))
        
        let lineTwoLabel = UILabel()
        lineTwoLabel.numberOfLines = 0;
      
        
        let customView = UIView.init(frame: CGRect(x: 0, y: 0, width: 250, height: 55))
        customView.backgroundColor = UIColor.lightGray
        
        let textField = UITextField.init(frame: CGRect(x: 10, y: 10, width: 230, height: 35))
        textField.borderStyle = UITextBorderStyle.roundedRect
        textField.placeholder = "Type your answer here"
        customView.addSubview(textField)
        
        let popupController = CNPPopupController(contents:[titleLabel, lineOneLabel, imageView, lineTwoLabel, customView, button])
        popupController.theme = CNPPopupTheme.default()
        popupController.theme.popupStyle = popupStyle
        // LFL added settings for custom color and blur
        popupController.theme.maskType = .custom
        popupController.theme.customMaskColor = UIColor.red
        popupController.theme.blurEffectAlpha = 1.0
        popupController.delegate = self
        self.popupController = popupController
        popupController.present(animated: true)
    }
    
    // Example action - TODO: replace with yours
   /* @IBAction func showPopupCentered(_ sender: AnyObject) {
        self.showPopupWithStyle(CNPPopupStyle.centered)
    }
     @IBAction func showPopupFormSheet(_ sender: AnyObject) {
        self.showPopupWithStyle(CNPPopupStyle.actionSheet)
    }
    @IBAction func showPopupFullscreen(_ sender: AnyObject) {
        self.showPopupWithStyle(CNPPopupStyle.fullscreen)
    }
    */
    @IBAction func answerButton(_ sender: AnyObject) {
        self.showPopupWithStyle(CNPPopupStyle.centered)
    }
    
    
}

extension ViewController : CNPPopupControllerDelegate {
    
    func popupControllerWillDismiss(_ controller: CNPPopupController) {
        print("Popup controller will be dismissed")
    }
    
    func popupControllerDidPresent(_ controller: CNPPopupController) {
        print("Popup controller presented")
    }
    
}
