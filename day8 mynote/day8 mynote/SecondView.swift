//
//  SecondView.swift
//  day8 mynote
//
//  Created by Ammar Emad on 20/08/2022.
//

import SwiftUI

struct SecondView: View {
    let myc : Color
    let mys : String
    var body: some View {
        ZStack{
            myc.ignoresSafeArea()
            VStack{
                Text(mys)
            }
        }
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(myc: Color.green, mys: "hi")
    }
}
