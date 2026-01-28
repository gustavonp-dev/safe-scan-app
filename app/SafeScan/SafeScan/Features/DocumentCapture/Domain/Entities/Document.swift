//
//  Document.swift
//  SafeScan
//
//  Created by Gustavo Nunes Pereira on 28/01/26.
//

import Foundation

struct Document: Identifiable {
    let id: UUID
    let name: String
    let description: String
    let icon: String
}
