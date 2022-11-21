//
//  GanhouView.swift
//  Arrocha
//
//  Created by ifpb on 21/11/22.
//

import SwiftUI

struct GanhouView: View {
    @ObservedObject var avm: ArrochaViewModel
    var body: some View {
        VStack{
            Spacer()
            Text("GANHOU").foregroundColor(.white).font(.largeTitle)
            Spacer()
            Button("VOLTAR"){
                
            }.foregroundColor(.white).padding().border(Color.black)
            Spacer()
        }.frame(maxWidth:.infinity,maxHeight: .infinity).background(Color.green)
    }
}

struct GanhouView_Previews: PreviewProvider {
    static var previews: some View {
        GanhouView(avm: ArrochaViewModel())
    }
}
