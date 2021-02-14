//
//  MoviesVC+PresenterDelegate.swift
//  PrintfulTask
//
//  Created by Karim on 2/3/21.
//  Copyright © 2021 Karim. All rights reserved.
//

import UIKit

extension MoviesVC: FetchedProtocol {
    func fetchedSuccessfully() {
        moviesTable.reloadData()
    }
}

extension MoviesVC: AlertProtocol {
    func show(Alert: String) {
        
    }
}
