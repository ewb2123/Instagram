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
    @IBOutlet var captionLabel: UILabel!
    
    var instagramPost: PFObject! {
        didSet {
            self.photoView.file = instagramPost["media"] as? PFFile
            self.captionLabel.text = instagramPost["caption"] as? String
            self.photoView.loadInBackground()
        }
    }
}