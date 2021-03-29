//
//  CardbackView.swift
//  NinetyNine
//
//  Created by User14 on 2021/3/29.
//

import SwiftUI

struct CardbackView: View {
    
    @EnvironmentObject var Coin: Coin
    @State private var returnPlay = false
    
    var body: some View {
        if(returnPlay == true) {
            ContentView()
        }
        else {
            ZStack {
                Image("background")
                    .opacity(0.2)
                
                VStack {
                    Text("請選擇你想要的貓貓牌背🐱")
                    
                    HStack {
                        Button(action: {
                            Coin.backImgMessage = "cat1"
                            returnPlay = true
                        }) {
                            Image("cat1")
                                .resizable()
                                .frame(width: 62.04, height: 94.52)
                                .cornerRadius(7)
                        }
                        
                        Button(action: {
                            Coin.backImgMessage = "cat2"
                            returnPlay = true
                        }) {
                            Image("cat2")
                                .resizable()
                                .frame(width: 62.04, height: 94.52)
                                .cornerRadius(7)
                        }
                        
                        Button(action: {
                            Coin.backImgMessage = "cat3"
                            returnPlay = true
                        }) {
                            Image("cat3")
                                .resizable()
                                .frame(width: 62.04, height: 94.52)
                                .cornerRadius(7)
                        }
                    }
                }
            }
        }
    }
}

struct CardbackView_Previews: PreviewProvider {
    static var previews: some View {
        CardbackView()
    }
}
