//
//  GameOverView.swift
//  NinetyNine
//
//  Created by User14 on 2021/3/31.
//

import SwiftUI

struct GameOverView: View {
    
    @EnvironmentObject var Coin: Coin
    @State private var returnHome = false
    
    var body: some View {
        if(returnHome == true) {
            ContentView()
        }
        else {
            if(Coin.winOrNot == "win") {
                ZStack {
                    Image("endWin")
                        .opacity(0.7)
                    VStack {
                        Text("恭喜你把電腦搞到破產！")
                            .bold()
                        Text("你是好棒棒大贏家🥳🥳🥳🥳🥳")
                            .bold()
                        
                        Button(action: {
                            returnHome = true
                        }, label: {
                            Text("回到主畫面")
                                .padding(3)
                                .foregroundColor(.blue)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white))
                        })
                    }
                }
            }
            else {
                ZStack {
                    Image("endLose")
                        .opacity(0.7)
                    VStack {
                        Text("真可惜！你竟然輸給我寫的電腦😨")
                            .bold()
                        Text("沒關係，再重新來一次吧！")
                            .bold()
                        
                        Button(action: {
                            returnHome = true
                        }, label: {
                            Text("回到主畫面")
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
}

struct GameOverView_Previews: PreviewProvider {
    static var previews: some View {
        GameOverView()
    }
}
