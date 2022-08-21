//
//  ContentView.swift
//  day8 mynote
//
//  Created by Ammar Emad on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.purple, Color.red, Color.yellow, Color.green]
    @State var mynote = ""
    @State var selected : Color = Color.indigo
    var body: some View {
        NavigationView{
            ZStack{
                Color.pink
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("اختر اللون المفضل")
                        .font(.system(size: 25))
                    HStack{
                        ForEach(colors, id:\.self){
                            color in
                            Circle()
                                .fill(color)
                                .frame(width: 50, height: 50)
                                .onTapGesture {
                                selected = color
                                    
                                }
                        }.padding()
                            }
                        Text("ماذا تريد ان تكتب")
                            TextField("اكتب هنا", text: $mynote)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    Spacer()
                    NavigationLink(destination: SecondView(myc: selected, mys: mynote)) {
                        Text("حفظ")
                            .frame(width: 200, height: 50)
                            .background(.green)
                            .cornerRadius(10)
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            
                            
                    }
                        
                                
                    
                    
                
                
            }
        }.navigationTitle("دفتر يومياتي")
    }
}
}
struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
