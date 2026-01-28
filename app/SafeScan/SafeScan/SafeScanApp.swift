//
//  SafeScanApp.swift
//  SafeScan
//
//  Created by Gustavo Nunes Pereira on 28/01/26.
//

import SwiftUI

@main
struct SafeScanApp: App {
    
    @State private var routes: [Route] = []
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $routes){
                HomeView()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .home:
                            HomeView()
                        case .docSelector:
                            DocSelectorView()
                        case .docScan:
                            DocScanView()
                        case .docValidation:
                            DocValidationView()
                        case .aiAnalysis:
                            AIAnalysisView()
                        case .result:
                            ResultView()
                        }
                    }
            }
            .onNavigate { navType in
                switch navType {
                case .push(let route):
                    routes.append(route)
                case .unwind(let route):
                    if route == .home {
                        routes = []
                    } else {
                        guard let index = routes.firstIndex(where: { $0 == route}) else { return }
                        routes = Array(routes.prefix(upTo: index + 1))
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        Text("Content View")
    }
}
