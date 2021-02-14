//
//  MoviesDetailsVC.swift
//  PrintfulTask
//
//  Created by Karim on 2/3/21.
//  Copyright © 2021 Karim. All rights reserved.
//

import UIKit

class MoviesDetailsVC: UIViewController {
    //MARK:- Variables
    var image, name, year, genres, language, runtime, rating, summary, url: String?
    var qualities = [Torrent]()
    let layoutManager = NSLayoutManager()
    let textContainer = NSTextContainer(size: CGSize.zero)
    
    //MARK:- Outlets
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var imageIndicator: UIActivityIndicatorView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var movieGenres: UILabel!
    @IBOutlet weak var qualityTable: UITableView!
    @IBOutlet weak var qualityTableHeight: NSLayoutConstraint!
    @IBOutlet weak var movieLanguage: UILabel!
    @IBOutlet weak var movieRuntime: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieSummary: UILabel!
    @IBOutlet weak var movieUrl: UILabel!
    
    //MARK:- View Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- Functions
    func setData() {
        qualityTable.register(UINib(nibName: "QualitiesCell", bundle: nil), forCellReuseIdentifier: "QualitiesCell")
        title = "\(name ?? "")"
        let url = URL(string: image ?? "")
        imageIndicator.isHidden = false
        movieImage.sd_setImage(with: url) { (_, _, _, _) in
            self.imageIndicator.isHidden = true
            if let _ = url {
                
            } else {
                
            }
        }
        movieName.text = name
        movieYear.text = year
        movieGenres.text = genres
        movieLanguage.text = language
        movieRuntime.text = "\(runtime ?? "") minutes"
        movieRating.text = rating
        movieSummary.text = summary
        movieUrl.text = self.url
    }
    
    
}
