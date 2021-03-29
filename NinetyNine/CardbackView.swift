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
            GameView()
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
                        }) {
                            Image("cat1")
                                .resizable()
                                .frame(width: 62.04, height: 94.52)
                                .cornerRadius(7)
                        }
                        
                        Button(action: {
                            Coin.backImgMessage = "cat2"
                        }) {
                            Image("cat2")
                                .resizable()
                                .frame(width: 62.04, height: 94.52)
                                .cornerRadius(7)
                        }
                        
                        Button(action: {
                            Coin.backImgMessage = "cat3"
                        }) {
                            Image("cat3")
                                .resizable()
                                .frame(width: 62.04, height: 94.52)
                                .cornerRadius(7)
                        }
                    }
                    
                    Button(action: {
                        returnPlay = true
                    }, label: {
                        Text("確定好ㄌ!開始遊戲")
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

struct CardbackView_Previews: PreviewProvider {
    static var previews: some View {
        CardbackView()
    }
}
