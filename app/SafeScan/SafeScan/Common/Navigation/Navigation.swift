//
//  Router.swift
//  SafeScan
//
//  Created by Gustavo Nunes Pereira on 28/01/26.
//

import SwiftUI

struct NavigationAction {
    typealias Action = (NavigationType) -> ()
    
    let action: Action
    
    func callAsFunction(_ navigationType: NavigationType) {
        action(navigationType)
    }
}

enum NavigationType: Hashable {
    case push(Route)
    case unwind(Route)
}

struct NavigationEnviromentKey: EnvironmentKey {
    static var defaultValue: NavigationAction = NavigationAction(action: { _ in })
}
