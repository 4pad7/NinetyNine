//
//  ContentView.swift
//  NinetyNine
//
//  Created by User14 on 2021/3/10.
//

import SwiftUI

class Coin: ObservableObject {
    @Published var playerCoin = 1000
    @Published var CPUCoin = 1000
    @Published var judgeMessage = ""
    @Published var backImgMessage = "cat1"
}

struct ContentView: View {

    @StateObject var playerCoin = Coin()
    @StateObject var CPUCoin = Coin()
    @StateObject var judgeMessage = Coin()
    @StateObject var backImgMessage = Coin()
    @State private var judgeBtn = 0
    @State private var showRule : Bool = false
    
    var body: some View {
        if(judgeBtn == 1) {
            GameView().environmentObject(playerCoin).environmentObject(CPUCoin).environmentObject(judgeMessage).environmentObject(backImgMessage)
        }
        else if(judgeBtn == 2) {
            CardbackView().environmentObject(backImgMessage)
        }
        else{
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
                            judgeBtn = 1
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
                    
                    Button(action: {
                        judgeBtn = 2
                    }, label: {
                        Text("🥺🥺🥺點我點我點我選牌的背面🥺🥺🥺")
                            .bold()
                            .font(.system(size: 13))
                            .padding(3)
                            .foregroundColor(.blue)
                            .background(Color.white)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white))
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
