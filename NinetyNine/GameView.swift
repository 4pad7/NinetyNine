//
//  GameView.swift
//  NinetyNine
//
//  Created by User14 on 2021/3/10.
//

import SwiftUI

struct GameView: View {
    
    var cards = [
        Card(suit: "spade", rank: "A"),
        Card(suit: "spade", rank: "2"),
        Card(suit: "spade", rank: "3"),
        Card(suit: "spade", rank: "4"),
        Card(suit: "spade", rank: "5"),
        Card(suit: "spade", rank: "6"),
        Card(suit: "spade", rank: "7"),
        Card(suit: "spade", rank: "8"),
        Card(suit: "spade", rank: "9"),
        Card(suit: "spade", rank: "10"),
        Card(suit: "spade", rank: "J"),
        Card(suit: "spade", rank: "Q"),
        Card(suit: "spade", rank: "K"),
        Card(suit: "heart", rank: "A"),
        Card(suit: "heart", rank: "2"),
        Card(suit: "heart", rank: "3"),
        Card(suit: "heart", rank: "4"),
        Card(suit: "heart", rank: "5"),
        Card(suit: "heart", rank: "6"),
        Card(suit: "heart", rank: "7"),
        Card(suit: "heart", rank: "8"),
        Card(suit: "heart", rank: "9"),
        Card(suit: "heart", rank: "10"),
        Card(suit: "heart", rank: "J"),
        Card(suit: "heart", rank: "Q"),
        Card(suit: "heart", rank: "K"),
        Card(suit: "diamond", rank: "A"),
        Card(suit: "diamond", rank: "2"),
        Card(suit: "diamond", rank: "3"),
        Card(suit: "diamond", rank: "4"),
        Card(suit: "diamond", rank: "5"),
        Card(suit: "diamond", rank: "6"),
        Card(suit: "diamond", rank: "7"),
        Card(suit: "diamond", rank: "8"),
        Card(suit: "diamond", rank: "9"),
        Card(suit: "diamond", rank: "10"),
        Card(suit: "diamond", rank: "J"),
        Card(suit: "diamond", rank: "Q"),
        Card(suit: "diamond", rank: "K"),
        Card(suit: "club", rank: "A"),
        Card(suit: "club", rank: "2"),
        Card(suit: "club", rank: "3"),
        Card(suit: "club", rank: "4"),
        Card(suit: "club", rank: "5"),
        Card(suit: "club", rank: "6"),
        Card(suit: "club", rank: "7"),
        Card(suit: "club", rank: "8"),
        Card(suit: "club", rank: "9"),
        Card(suit: "club", rank: "10"),
        Card(suit: "club", rank: "J"),
        Card(suit: "club", rank: "Q"),
        Card(suit: "club", rank: "K")
    ]
    
    //四人玩家
    @State private var CPUplayer1 = ["", "", "", "", ""]
    @State private var CPUplayer2 = ["", "", "", "", ""]
    @State private var CPUplayer3  = ["", "", "", "", ""]
    @State private var player = ["", "", "", "", ""]
    //牌庫
    //籌碼
    
    var body: some View {
        //先洗第一次牌後發給四位玩家 剩餘的牌放入牌庫
        
        Text(cards[47].rank)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
