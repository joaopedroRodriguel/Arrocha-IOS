//
//  ContentView.swift
//  Arrocha
//
//  Created by ifpb on 21/11/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var avm: ArrochaViewModel
    var body: some View {
        VStack{
            if (self.avm.status == .EXECUTANDO){
                MainView(avm: ArrochaViewModel())
            }
            else if (self.avm.status == .GANHOU){
                GanhouView(avm: ArrochaViewModel())
            }
            else {
                PerdeuView(avm: ArrochaViewModel())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(avm: ArrochaViewModel())
    }
}
