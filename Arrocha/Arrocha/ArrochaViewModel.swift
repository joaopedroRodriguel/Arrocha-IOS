//
//  ArrochaViewModel.swift
//  Arrocha
//
//  Created by ifpb on 21/11/22.
//

import Foundation
class ArrochaViewModel: ObservableObject{
    @Published var menor: Int = 1
    @Published var maior: Int = 100
    @Published var status: Status = .EXECUTANDO
    var secreto: Int
    
    init() {
        self.status = .EXECUTANDO
        self.menor = 1
        self.maior = 100
        self.secreto = Int.random(in: 2 ... 99)
        <#statements#>
    }
    
    func Jogar(chute: Int){
        if (chute <= self.menor) || (chute >= self.maior) || (chute == self.secreto) {
            self.status = .PERDEU
        }
        else {
            if (chute < self.secreto){
                status = Status.PERDEU
            }
            else if (chute < secreto){
                menor = chute
            }
            else if (chute > secreto){
                maior = chute
            }
        }
        else if (menor )
    }
}
