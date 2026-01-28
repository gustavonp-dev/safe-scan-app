//
//  DocSeletor.swift
//  SafeScan
//
//  Created by Gustavo Nunes Pereira on 28/01/26.
//

import SwiftUI

struct DocSelectorView: View {
    
    @Environment(\.navigate) private var navigate
    
    var body: some View {
        Button {
            navigate(.push(.docScan))
        } label: {
            HStack {
                Text("Começar Verificação")
                    .fontWeight(.semibold)
            }
            .padding()
            .frame(width: 320, height: 60)
            .background(Color.red)
            .foregroundStyle(.white)
            .cornerRadius(10)
        }
    }
}
