//
//  Result.swift
//  SafeScan
//
//  Created by Gustavo Nunes Pereira on 28/01/26.
//

import Foundation

struct Result {
    let id: String
    let proccessedAt: Date
    let status: Status
}

enum Status {
    case success
    case failure
}
