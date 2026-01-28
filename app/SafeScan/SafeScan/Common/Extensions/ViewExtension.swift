//
//  ViewExtensions.swift
//  SafeScan
//
//  Created by Gustavo Nunes Pereira on 28/01/26.
//

import SwiftUI

extension View {
    func onNavigate(_ action: @escaping NavigationAction.Action) -> some View {
        self.environment(\.navigate, NavigationAction(action: action))
    }
}
