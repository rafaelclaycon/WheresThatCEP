//
//  ContentView.swift
//  WheresThatCEP
//
//  Created by Rafael Schmitt on 16/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var cepInput = ""
    @State var showBackgroundColor = false
    @State var backgroundColor = Color.red
    
    var body: some View {
        ZStack {
            if showBackgroundColor {
                Rectangle()
                    .fill(backgroundColor)
                    .ignoresSafeArea()
            }
            
            VStack {
                TextField("CEP", text: $cepInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 170)
                
                Button("Consultar") {
                    showBackgroundColor = true
                    print(cepInput)
                }
                
                Text("")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
