//
//  MoviesVCPresenter.swift
//  PrintfulTask
//
//  Created by Karim on 2/3/21.
//  Copyright © 2021 Karim. All rights reserved.
//

import Foundation

class MoviesVCPresenter {
    private weak var view: FetchedProtocol?
    private weak var alert: AlertProtocol?
    private var moviesData = [Movie]()
    private var API = APIClient()
    
    init(view: FetchedProtocol, alert: AlertProtocol) {
        self.view = view
        self.alert = alert
    }
    
    func getMovies() {
        API.getMoviesData { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success(let movies):
                self.saveData(movies: movies)
            case .failure(_):
                self.alert?.show(Alert: "No Internet")
            }
        }
    }
    
    private func saveData(movies: Movies) {

        moviesData = movies.data?.movies ?? []
        
        view?.fetchedSuccessfully()
    }
    
    func getMoviesCount() -> Int {
            return moviesData.count
        }
        
        func configure(cell: MoviesCellView, of index: Int) {
            let movie = moviesData[index]
            cell.set(name: movie.title ?? "", year: "\(movie.year ?? 0)", image: movie.largeCoverImage ?? "")
        }
    
    func getMovieImage(index: Int)->String {
        return moviesData[index].largeCoverImage ?? ""
    }
        
    func getMovieName(index: Int) -> String {
        return moviesData[index].title ?? ""
    }
    
    func getMovieYear(index: Int)->Int {
        return moviesData[index].year ?? 0
    }
    
    func getMovieGenres(index: Int)->String {
        var genres = ""
        for genre in moviesData[index].genres ?? [] {
            if genre == moviesData[index].genres?.first {
                genres = "\(genre) \(genres)"
            } else {
                genres = "\(genre), \(genres)"
            }
//            genres = "\(genre), \(genres)"
        }
        return genres
    }
    
    func getMovieLanguage(index: Int)->String {
        return moviesData[index].language ?? ""
    }
    
    func getMovieRuntime(index: Int)->Int {
        return moviesData[index].runtime ?? 0
    }
    
    func getMovieRating(index: Int)->Float {
        return moviesData[index].rating ?? 0.0
    }
    
    func getMovieSummary(index: Int)->String {
        return moviesData[index].summary ?? ""
    }
    
    func getMovieUrl(index: Int)->String {
        return moviesData[index].url ?? ""
    }

    func getMovieQuality(index: Int)->[Torrent] {
        return moviesData[index].torrents ?? []
    }
}
