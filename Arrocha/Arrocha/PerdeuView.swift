//
//  PerdeuView.swift
//  Arrocha
//
//  Created by ifpb on 21/11/22.
//

import SwiftUI

struct PerdeuView: View {
    @ObservedObject var avm: ArrochaViewModel
    var body: some View {
        VStack{
            Spacer()
            Text("PERDEU").foregroundColor(.white).font(.largeTitle)
            Spacer()
            Button("VOLTAR"){
                
            }.foregroundColor(.white).padding().border(Color.black)
            Spacer()
        }.frame(maxWidth:.infinity,maxHeight: .infinity).background(Color.red)
    }
}

struct PerdeuView_Previews: PreviewProvider {
    static var previews: some View {
        PerdeuView(avm: ArrochaViewModel())
    }
}
