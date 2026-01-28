//
//  Home.swift
//  SafeScan
//
//  Created by Gustavo Nunes Pereira on 28/01/26.
//

import SwiftUI

struct HomeView: View {
    
    @Environment(\.navigate) private var navigate
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                Image(systemName: "shield")
                    .foregroundStyle(.white)
                    .font(.system(size: 50))
            }
            Text("Verificação de \nIdentidade")
                .multilineTextAlignment(.center)
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .padding()
            Text("Precisamos verificar sua identidade\npara garantir a segurança da sua conta")
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray)
                .padding()
            
            HStack {
                Card(icon: "shield", title: "Seguro", subtitle: "Seus dados protegidos")
                Card(icon: "bolt", title: "Rápido", subtitle: "Verificação em segundos")
                Card(icon: "qrcode.viewfinder", title: "Confiável", subtitle: "Tecnologia avançada")
                
            }
            Spacer()
            Button {
                navigate(.push(.docSelector))
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
            Text("Ao continuar, você concorda com nossos Termos de Uso")
                .font(.system(size: 12))
                .foregroundStyle(.gray)
                .padding(.top, 10)
        }
        .preferredColorScheme(.light)
    }
}

struct Card: View {
    
    let icon: String
    let title: String
    let subtitle: String

    var body: some View {
        VStack {
            Image(systemName: icon)
                .foregroundStyle(.red)
                .font(.system(size: 30))
            
            Text(title)
                .fontWeight(.semibold)
                .padding(.top, 5)
                .foregroundColor(.black) // Mantendo visível no fundo branco
            
            Text(subtitle)
                .font(.system(size: 12))
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray)
                .padding(.top, 1)
        }
        .frame(width: 100, height: 130)
        .background(Color("HomeCardsColor"))
        .cornerRadius(15)
    }
}

#Preview {
    HomeView()
}
