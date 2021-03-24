//
//  FirstViewController.swift
//  PageViewController
//
//  Created by Sarika Thakur on 2021/03/20.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView : UIImageView!
    @IBOutlet weak var nameLbl : UILabel!

    let arr = ["Rahul", "Gaurav", "Sneha", "Amita", "Pranali"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController.setra
    }
    
    @IBAction func fetchPhotoBtnClicked(_ sender : UIButton) {
        
        let str = arr.randomElement()
        nameLbl.text = str!
        
//        let diceNumber = ([1 ... 6]).randomElement()
        
//        let imagePickerViewObj = UIImagePickerController()
//        imagePickerViewObj.delegate = self
//        imagePickerViewObj.sourceType = .savedPhotosAlbum
////        imagePickerViewObj.allowsEditing = true
//        self.present(imagePickerViewObj, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print(info)
        let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerOriginalImage")] as? UIImage
        imageView.image = image
        
        picker.dismiss(animated: true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("No Photo Selected")
    }
    

}
