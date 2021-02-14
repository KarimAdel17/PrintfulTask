//
//  GeneralProtocol.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/25/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import Foundation
protocol AlertProtocol: class {
    func show(Alert: String)
}

protocol FetchedProtocol: class {
    func fetchedSuccessfully()
}
