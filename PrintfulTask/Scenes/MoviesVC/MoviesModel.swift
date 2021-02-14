//
//  MoviesModel.swift
//  PrintfulTask
//
//  Created by Karim on 2/3/21.
//  Copyright © 2021 Karim. All rights reserved.
//

import Foundation

struct Movies : Codable {

        let meta : meta?
        let data : MoviesData?
        let status : String?
        let statusMessage : String?

        enum CodingKeys: String, CodingKey {
                case meta = "@meta"
                case data = "data"
                case status = "status"
                case statusMessage = "status_message"
        }

}

struct MoviesData : Codable {

        let limit : Int?
        let movieCount : Int?
        let movies : [Movie]?
        let pageNumber : Int?

        enum CodingKeys: String, CodingKey {
                case limit = "limit"
                case movieCount = "movie_count"
                case movies = "movies"
                case pageNumber = "page_number"
        }

}

struct Movie : Codable {

        let backgroundImage : String?
        let backgroundImageOriginal : String?
        let dateUploaded : String?
        let dateUploadedUnix : Int?
        let descriptionFull : String?
        let genres : [String]?
        let id : Int?
        let imdbCode : String?
        let language : String?
        let largeCoverImage : String?
        let mediumCoverImage : String?
        let mpaRating : String?
        let rating : Float?
        let runtime : Int?
        let slug : String?
        let smallCoverImage : String?
        let state : String?
        let summary : String?
        let synopsis : String?
        let title : String?
        let titleEnglish : String?
        let titleLong : String?
        let torrents : [Torrent]?
        let url : String?
        let year : Int?
        let ytTrailerCode : String?

        enum CodingKeys: String, CodingKey {
                case backgroundImage = "background_image"
                case backgroundImageOriginal = "background_image_original"
                case dateUploaded = "date_uploaded"
                case dateUploadedUnix = "date_uploaded_unix"
                case descriptionFull = "description_full"
                case genres = "genres"
                case id = "id"
                case imdbCode = "imdb_code"
                case language = "language"
                case largeCoverImage = "large_cover_image"
                case mediumCoverImage = "medium_cover_image"
                case mpaRating = "mpa_rating"
                case rating = "rating"
                case runtime = "runtime"
                case slug = "slug"
                case smallCoverImage = "small_cover_image"
                case state = "state"
                case summary = "summary"
                case synopsis = "synopsis"
                case title = "title"
                case titleEnglish = "title_english"
                case titleLong = "title_long"
                case torrents = "torrents"
                case url = "url"
                case year = "year"
                case ytTrailerCode = "yt_trailer_code"
        }
    
        
}

struct Torrent : Codable {

        let dateUploaded : String?
        let dateUploadedUnix : Int?
        let hash : String?
        let peers : Int?
        let quality : String?
        let seeds : Int?
        let size : String?
        let sizeBytes : Int?
        let type : String?
        let url : String?

        enum CodingKeys: String, CodingKey {
                case dateUploaded = "date_uploaded"
                case dateUploadedUnix = "date_uploaded_unix"
                case hash = "hash"
                case peers = "peers"
                case quality = "quality"
                case seeds = "seeds"
                case size = "size"
                case sizeBytes = "size_bytes"
                case type = "type"
                case url = "url"
        }

}

struct meta : Codable {

        let apiVersion : Int?
        let executionTime : String?
        let serverTime : Int?
        let serverTimezone : String?

        enum CodingKeys: String, CodingKey {
                case apiVersion = "api_version"
                case executionTime = "execution_time"
                case serverTime = "server_time"
                case serverTimezone = "server_timezone"
        }

}
