//
//  TextFieldCollectionViewCell.swift
//  EmojiArtPersistantDataP1
//
//  Created by MB on 5/22/19.
//  Copyright © 2019 MB. All rights reserved.
//

import UIKit

class TextFieldCollectionViewCell: UICollectionViewCell,UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!{
        didSet{
            //Assigning delegate and implementing its protocol
            textField.delegate = self
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // relinquish its status as first responder in its window. means it stops using keyboard and keyboard disappears , if you dont this keyboard stays up
        textField.resignFirstResponder()
        
        return true
    }
}
