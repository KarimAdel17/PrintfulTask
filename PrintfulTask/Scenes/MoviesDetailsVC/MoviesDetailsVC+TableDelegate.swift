//
//  MoviesDetailsVC+TableDelegate.swift
//  PrintfulTask
//
//  Created by Karim on 2/3/21.
//  Copyright © 2021 Karim. All rights reserved.
//

import UIKit

extension MoviesDetailsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return qualities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QualitiesCell", for: indexPath) as! QualitiesCell
        
        let quality = qualities[indexPath.row]
        
        cell.set(name: "\(quality.quality ?? "").\(quality.type ?? "")", size: quality.size ?? "")
        
        qualityTableHeight.constant = qualityTable.contentSize.height
        
        return cell
    }
    
    
}
