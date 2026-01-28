//
//  EnviromentExtensions.swift
//  SafeScan
//
//  Created by Gustavo Nunes Pereira on 28/01/26.
//

import SwiftUI

extension EnvironmentValues {
    var navigate: (NavigationAction) {
        get { self[NavigationEnviromentKey.self] }
        set { self[NavigationEnviromentKey.self] = newValue }
    }
}
