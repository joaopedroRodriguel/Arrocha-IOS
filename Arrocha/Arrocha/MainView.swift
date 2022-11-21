//
//  MainView.swift
//  Arrocha
//
//  Created by ifpb on 21/11/22.
//

import SwiftUI

struct MainView: View {
    @State var chute: String = ""
    @ObservedObject var avm: ArrochaViewModel
    var body: some View {
        VStack {
            Spacer()
            HStack{
                Text(self.avm.menor.description).padding()
                Text("e")
                Text(self.avm.maior.description).padding()
            }
            Spacer()
            TextField("CHUTE", text: self.$chute).padding().fixedSize().border(Color.black)
            Spacer()
            Button("CHUTE"){
                let valor = Int(self.chute) ?? 0
                self.avm.Jogar(chute: valor)
                
            }
            Spacer()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(avm: ArrochaViewModel())
    }
}
