//
//  Router.swift
//  SafeScan
//
//  Created by Gustavo Nunes Pereira on 28/01/26.
//

import SwiftUI
import Combine

class Router: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func navigate(to route: Route) {
        path.append(route)
    }
    
    func goBack() {
        path.removeLast()
    }
    
    func navigateToRoot() {
        path.removeLast(path.count)
    }
    
    func popToView(count: Int) {
        path.removeLast(count)
    }
}

// MARK: - Go Back Extension

private extension Router {
    func canGoBack() -> Bool {
        return path.count > 0
    }
}
