//
//  QualitiesCell.swift
//  PrintfulTask
//
//  Created by Karim on 2/3/21.
//  Copyright © 2021 Karim. All rights reserved.
//

import UIKit
protocol QualitiesCellView {
    func set(name: String, size: String)
}
class QualitiesCell: UITableViewCell, QualitiesCellView {

    @IBOutlet weak var qualityName: UILabel!
    @IBOutlet weak var size: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(name: String, size: String) {
        qualityName.text = name
        self.size.text = size
    }
    
}
