//
//  InstagramPostTableViewCell.swift
//  Instagram
//
//  Created by Elijah Bullard on 3/6/16.
//  Copyright © 2016 Elijah Bullard. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class InstagramPostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photoView: PFImageView!
    
    var instagramPost: PFObject! {
        didSet {
            self.photoView.file = instagramPost["image"] as? PFFile
            self.photoView.loadInBackground()
        }
    }
}