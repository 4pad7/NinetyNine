//
//  ContentView.swift
//  NinetyNine
//
//  Created by User14 on 2021/3/10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var judgeBtn : Bool = true
    @State private var showRule : Bool = false
    
    var body: some View {
        if(judgeBtn){
            ZStack {
                Image("background")
                VStack {
                    HStack {
                        Button(action: {
                            showRule = true
                        }, label: {
                            Text("規則說明")
                                .bold()
                                .font(.system(size: 20))
                                .foregroundColor(.blue)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(20)
                                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white))
                        })
                        .sheet(isPresented: $showRule, content: {
                            RuleView()
                        })
                        
                        Button(action: {
                            judgeBtn = false
                        }, label: {
                            Text("Start Game")
                                .bold()
                                .font(.system(size: 20))
                                .foregroundColor(.blue)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(20)
                                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white))
                        })
                    }
                }
            }
        }
        else{
            GameView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
