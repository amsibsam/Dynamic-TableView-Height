//
//  PollingCellTableViewCell.swift
//  Testing Nested Table
//
//  Created by Rahardyan Bisma on 12/08/18.
//  Copyright © 2018 amsibsam. All rights reserved.
//

import UIKit

class PollingCell: UITableViewCell {
    @IBOutlet weak var lbName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func bindDataToView(polling: String) {
        lbName.text = polling
    }
    
}
