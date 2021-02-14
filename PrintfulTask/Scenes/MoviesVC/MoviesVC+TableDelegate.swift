//
//  MoviesVC+TableDelegate.swift
//  PrintfulTask
//
//  Created by Karim on 2/3/21.
//  Copyright © 2021 Karim. All rights reserved.
//

import UIKit

extension MoviesVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getMoviesCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesCell", for: indexPath) as! MoviesCell
        
        presenter?.configure(cell: cell, of: indexPath.row)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "MoviesDetailsVC") as! MoviesDetailsVC
        
        VC.image = presenter?.getMovieImage(index: indexPath.row)
        VC.name = presenter?.getMovieName(index: indexPath.row)
        VC.year = "\(presenter?.getMovieYear(index: indexPath.row) ?? 0)"
        VC.genres = presenter?.getMovieGenres(index: indexPath.row)
        VC.language = presenter?.getMovieLanguage(index: indexPath.row)
        VC.runtime = "\(presenter?.getMovieRuntime(index: indexPath.row) ?? 0)"
        VC.rating = "\(presenter?.getMovieRating(index: indexPath.row) ?? 0.0)"
        VC.summary = presenter?.getMovieSummary(index: indexPath.row)
        VC.url = presenter?.getMovieUrl(index: indexPath.row)
        VC.qualities = presenter?.getMovieQuality(index: indexPath.row) ?? []
        navigationController?.pushViewController(VC, animated: true)
    }
}
