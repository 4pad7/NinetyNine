//
//  GameView.swift
//  NinetyNine
//
//  Created by User14 on 2021/3/10.
//

import SwiftUI

struct GameView: View {
    
    @State private var cards = [
        Card(suit: "Spade", rank: "A"),
        Card(suit: "Spade", rank: "2"),
        Card(suit: "Spade", rank: "3"),
        Card(suit: "Spade", rank: "4"),
        Card(suit: "Spade", rank: "5"),
        Card(suit: "Spade", rank: "6"),
        Card(suit: "Spade", rank: "7"),
        Card(suit: "Spade", rank: "8"),
        Card(suit: "Spade", rank: "9"),
        Card(suit: "Spade", rank: "10"),
        Card(suit: "Spade", rank: "J"),
        Card(suit: "Spade", rank: "Q"),
        Card(suit: "Spade", rank: "K"),
        Card(suit: "Heart", rank: "A"),
        Card(suit: "Heart", rank: "2"),
        Card(suit: "Heart", rank: "3"),
        Card(suit: "Heart", rank: "4"),
        Card(suit: "Heart", rank: "5"),
        Card(suit: "Heart", rank: "6"),
        Card(suit: "Heart", rank: "7"),
        Card(suit: "Heart", rank: "8"),
        Card(suit: "Heart", rank: "9"),
        Card(suit: "Heart", rank: "10"),
        Card(suit: "Heart", rank: "J"),
        Card(suit: "Heart", rank: "Q"),
        Card(suit: "Heart", rank: "K"),
        Card(suit: "Diamond", rank: "A"),
        Card(suit: "Diamond", rank: "2"),
        Card(suit: "Diamond", rank: "3"),
        Card(suit: "Diamond", rank: "4"),
        Card(suit: "Diamond", rank: "5"),
        Card(suit: "Diamond", rank: "6"),
        Card(suit: "Diamond", rank: "7"),
        Card(suit: "Diamond", rank: "8"),
        Card(suit: "Diamond", rank: "9"),
        Card(suit: "Diamond", rank: "10"),
        Card(suit: "Diamond", rank: "J"),
        Card(suit: "Diamond", rank: "Q"),
        Card(suit: "Diamond", rank: "K"),
        Card(suit: "Club", rank: "A"),
        Card(suit: "Club", rank: "2"),
        Card(suit: "Club", rank: "3"),
        Card(suit: "Club", rank: "4"),
        Card(suit: "Club", rank: "5"),
        Card(suit: "Club", rank: "6"),
        Card(suit: "Club", rank: "7"),
        Card(suit: "Club", rank: "8"),
        Card(suit: "Club", rank: "9"),
        Card(suit: "Club", rank: "10"),
        Card(suit: "Club", rank: "J"),
        Card(suit: "Club", rank: "Q"),
        Card(suit: "Club", rank: "K")
    ]
    
    //四人玩家
    @State private var CPUplayer1 = [
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: "")
    ]
    
    @State private var CPUplayer2 = [
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: "")
    ]
    
    @State private var CPUplayer3 = [
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: "")
    ]
    
    @State private var player = [
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: ""),
        Card(suit: "", rank: "")
    ]
    
    //牌庫
    @State private var backpack = [
        Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""),
        Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""),
        Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""),
        Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""),
        Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""),
        Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""),
        Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""),
        Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: ""), Card(suit: "", rank: "")
    ]
    
    //籌碼
    
    var body: some View {
        
        VStack {
            ZStack {
                ForEach(0..<5) { (index) in
                    Image("\(CPUplayer1[index].suit)" + "_" + "\(CPUplayer1[index].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                        .offset(x: CGFloat(30*index), y: 0)
                }
            }
            ZStack {
                ForEach(0..<5) { (index) in
                    Image("\(CPUplayer2[index].suit)" + "_" + "\(CPUplayer2[index].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                        .offset(x: CGFloat(30*index), y: 0)
                }
            }
            ZStack {
                ForEach(0..<5) { (index) in
                    Image("\(CPUplayer3[index].suit)" + "_" + "\(CPUplayer3[index].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                        .offset(x: CGFloat(30*index), y: 0)
                }
            }
            ZStack {
                /*ForEach(0..<5) { (index) in
                    Image("\(player[index].suit)" + "_" + "\(player[index].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                        .offset(x: CGFloat(30*index), y: 0)
                        .onTapGesture {
                            print("ahhh")
                        }
                }*/
                Button(action: {
                    getCard(selected: 0, backpack: backpack, player: player)
                    shuffleAfterGet(backpack: backpack)
                }) {
                    Image("\(player[0].suit)" + "_" + "\(player[0].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                }
                    .offset(x: CGFloat(0), y: 0)
                
                Button(action: {
                    getCard(selected: 1, backpack: backpack, player: player)
                    shuffleAfterGet(backpack: backpack)
                }) {
                    Image("\(player[1].suit)" + "_" + "\(player[1].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                }
                    .offset(x: CGFloat(30), y: 0)
                
                Button(action: {
                    getCard(selected: 2, backpack: backpack, player: player)
                    shuffleAfterGet(backpack: backpack)
                }) {
                    Image("\(player[2].suit)" + "_" + "\(player[2].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                }
                    .offset(x: CGFloat(60), y: 0)
                
                Button(action: {
                    getCard(selected: 3, backpack: backpack, player: player)
                    shuffleAfterGet(backpack: backpack)
                }) {
                    Image("\(player[3].suit)" + "_" + "\(player[3].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                }
                    .offset(x: CGFloat(90), y: 0)
                
                Button(action: {
                    getCard(selected: 4, backpack: backpack, player: player)
                    shuffleAfterGet(backpack: backpack)
                }) {
                    Image("\(player[4].suit)" + "_" + "\(player[4].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                }
                    .offset(x: CGFloat(120), y: 0)
                
                
            }
            
        }
        
        .onAppear {
            //發牌
            cards.shuffle()
            for i in 0...4 {
                CPUplayer1[i] = cards[i+31]
                CPUplayer2[i] = cards[i+36]
                CPUplayer3[i] = cards[i+41]
                player[i] = cards[i+46]
            }
            for i in 0...30 {
                backpack[i] = cards[i]
            }
        }
    }
    
    //丟牌後拿牌庫的牌 (將丟掉的那張牌跟牌庫做交換)
    func getCard(selected : Int, backpack : [Card], player : [Card]) {
        self.player[selected] = backpack[0]
        
    }
    
    //讓丟出的牌變成牌庫的最後一張牌
    func shuffleAfterGet(backpack : [Card]) {
        var tmp = Card(suit: "", rank: "")
        tmp = backpack[0]
        for i in 0...30 {
            self.backpack[i] = backpack[i+1]
        }
        self.backpack[31] = tmp
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
