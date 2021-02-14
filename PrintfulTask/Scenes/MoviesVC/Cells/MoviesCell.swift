//
//  MoviesCell.swift
//  PrintfulTask
//
//  Created by Karim on 2/3/21.
//  Copyright © 2021 Karim. All rights reserved.
//

import UIKit
import SDWebImage
protocol MoviesCellView {
    func set(name: String, year: String, image: String)
}
class MoviesCell: UITableViewCell, MoviesCellView {

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var imageIndicator: UIActivityIndicatorView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(name: String, year: String, image: String) {
        movieName.text = name
        movieYear.text = year
        
        let url = URL(string: image)
        imageIndicator.isHidden = false
        movieImage.sd_setImage(with: url) { (_, _, _, _) in
            self.imageIndicator.isHidden = true
            if let _ = url {
                
            } else {
//                self.movieImage.image = #imageLiteral(resourceName: <#T##String#>)
            }
        }
    }
    
}
