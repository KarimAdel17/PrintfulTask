//
//  MoviesVC.swift
//  PrintfulTask
//
//  Created by Karim on 2/3/21.
//  Copyright © 2021 Karim. All rights reserved.
//

import UIKit

class MoviesVC: UIViewController {
    //MARK:- Variables
    var presenter: MoviesVCPresenter?
    
    //MARK:- Outlets
    @IBOutlet weak var moviesTable: UITableView!
    
    //MARK:- View functions
    override func viewDidLoad() {
        super.viewDidLoad()
        display()
        // Do any additional setup after loading the view.
    }

    //MARK:- Functions
    func display() {
        presenter = MoviesVCPresenter(view: self, alert: self)
        moviesTable.register(UINib(nibName: "MoviesCell", bundle: nil), forCellReuseIdentifier: "MoviesCell")
        presenter?.getMovies()
    }
}
