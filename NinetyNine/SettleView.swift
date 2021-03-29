//
//  SettleView.swift
//  NinetyNine
//
//  Created by User14 on 2021/3/29.
//

import SwiftUI

struct SettleView: View {
    
    //籌碼
    @EnvironmentObject var Coin: Coin
    @State private var returnHome = 0 //回主畫面或繼續ＰＫ
    
    var body: some View {
        if(returnHome == 1) {
            GameView()
        }
        else if(returnHome == 2){
            ContentView()
        }
        else{
            ZStack {
                VStack {
                    Group {     //結果訊息
                        Text(Coin.judgeMessage)
                        Text("電腦籌碼：\(Coin.CPUCoin)")
                        Text("玩家籌碼：\(Coin.playerCoin)")
                    }
                    HStack {
                        Button(action: {
                            returnHome = 1
                        }, label: {
                            Text("繼續ＰＫ")
                        })
                        
                        Button(action: {
                            returnHome = 2
                        }, label: {
                            Text("回到主畫面")
                        })
                    }
                }
            }
        }
    }
}


struct SettleView_Previews: PreviewProvider {
    static var previews: some View {
        SettleView()
    }
}
