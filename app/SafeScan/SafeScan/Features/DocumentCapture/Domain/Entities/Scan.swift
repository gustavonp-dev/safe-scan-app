//
//  Scan.swift
//  SafeScan
//
//  Created by Gustavo Nunes Pereira on 28/01/26.
//

import Foundation

struct Scan: Identifiable, Codable {
    
    let id: UUID
    
    var captureImage: Data
    
    var isReadable: Bool
    var isWellLit: Bool
    var isInFrame: Bool
    var isSharp: Bool
    
}
