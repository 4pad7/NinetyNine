//
//  GameView.swift
//  NinetyNine
//
//  Created by User14 on 2021/3/10.
//

import SwiftUI

struct GameView: View {
    
    @State private var cards = [
        Card(suit: "Spade", rank: "A", value: 1),
        Card(suit: "Spade", rank: "2", value: 2),
        Card(suit: "Spade", rank: "3", value: 3),
        Card(suit: "Spade", rank: "4", value: 4),
        Card(suit: "Spade", rank: "5", value: 5),
        Card(suit: "Spade", rank: "6", value: 6),
        Card(suit: "Spade", rank: "7", value: 7),
        Card(suit: "Spade", rank: "8", value: 8),
        Card(suit: "Spade", rank: "9", value: 9),
        Card(suit: "Spade", rank: "10", value: 10),
        Card(suit: "Spade", rank: "J", value: 11),
        Card(suit: "Spade", rank: "Q", value: 12),
        Card(suit: "Spade", rank: "K", value: 13),
        Card(suit: "Heart", rank: "A", value: 1),
        Card(suit: "Heart", rank: "2", value: 2),
        Card(suit: "Heart", rank: "3", value: 3),
        Card(suit: "Heart", rank: "4", value: 4),
        Card(suit: "Heart", rank: "5", value: 5),
        Card(suit: "Heart", rank: "6", value: 6),
        Card(suit: "Heart", rank: "7", value: 7),
        Card(suit: "Heart", rank: "8", value: 8),
        Card(suit: "Heart", rank: "9", value: 9),
        Card(suit: "Heart", rank: "10", value: 10),
        Card(suit: "Heart", rank: "J", value: 11),
        Card(suit: "Heart", rank: "Q", value: 12),
        Card(suit: "Heart", rank: "K", value: 13),
        Card(suit: "Diamond", rank: "A", value: 1),
        Card(suit: "Diamond", rank: "2", value: 2),
        Card(suit: "Diamond", rank: "3", value: 3),
        Card(suit: "Diamond", rank: "4", value: 4),
        Card(suit: "Diamond", rank: "5", value: 5),
        Card(suit: "Diamond", rank: "6", value: 6),
        Card(suit: "Diamond", rank: "7", value: 7),
        Card(suit: "Diamond", rank: "8", value: 8),
        Card(suit: "Diamond", rank: "9", value: 9),
        Card(suit: "Diamond", rank: "10", value: 10),
        Card(suit: "Diamond", rank: "J", value: 11),
        Card(suit: "Diamond", rank: "Q", value: 12),
        Card(suit: "Diamond", rank: "K", value: 13),
        Card(suit: "Club", rank: "A", value: 1),
        Card(suit: "Club", rank: "2", value: 2),
        Card(suit: "Club", rank: "3", value: 3),
        Card(suit: "Club", rank: "4", value: 4),
        Card(suit: "Club", rank: "5", value: 5),
        Card(suit: "Club", rank: "6", value: 6),
        Card(suit: "Club", rank: "7", value: 7),
        Card(suit: "Club", rank: "8", value: 8),
        Card(suit: "Club", rank: "9", value: 9),
        Card(suit: "Club", rank: "10", value: 10),
        Card(suit: "Club", rank: "J", value: 11),
        Card(suit: "Club", rank: "Q", value: 12),
        Card(suit: "Club", rank: "K", value: 13)
    ]
    
    //四人玩家
    @State private var CPUplayer1 = [
        Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0)
    ]
    
    @State private var player = [
        Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0)
    ]
    
    //牌庫
    @State private var backpack = [
        Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0),
        Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0), Card(suit: "", rank: "", value: 0)
    ]
    
    //籌碼
    
    @State private var num = 0  //中間牌堆加起來的點數
    
    var body: some View {
        
        VStack {
            Text("\(num)")
            
            ZStack {
                ForEach(0..<5) { (index) in
                    Image("\(CPUplayer1[index].suit)" + "_" + "\(CPUplayer1[index].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                        .offset(x: CGFloat(30*index), y: 0)
                }
            }
            ZStack {
                Button(action: {
                    print("\(player[0].rank) + \(player[0].suit)")
                    //先出牌 判斷牌 再拿牌
                    judgeCard(selected: 0, player: player, num: num)
                    getCard(selected: 0, backpack: backpack, player: player)
                    shuffleAfterGet(backpack: backpack)
                    print("\(CPUplayer1[0].rank) + \(CPUplayer1[0].suit)")
                    CPUplayCard1(CPUplayer1: CPUplayer1, backpack: backpack, num: num)
                    print("num = \(num)")
                }) {
                    Image("\(player[0].suit)" + "_" + "\(player[0].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                }
                    .offset(x: CGFloat(0), y: 0)
                
                Button(action: {
                    print("\(player[1].rank) + \(player[1].suit)")
                    judgeCard(selected: 1, player: player, num: num)
                    getCard(selected: 1, backpack: backpack, player: player)
                    shuffleAfterGet(backpack: backpack)
                    print("\(CPUplayer1[0].rank) + \(CPUplayer1[0].suit)")
                    CPUplayCard1(CPUplayer1: CPUplayer1, backpack: backpack, num: num)
                    print("num = \(num)")
                    
                }) {
                    Image("\(player[1].suit)" + "_" + "\(player[1].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                }
                    .offset(x: CGFloat(30), y: 0)
                
                Button(action: {
                    print("\(player[2].rank) + \(player[2].suit)")
                    judgeCard(selected: 2, player: player, num: num)
                    getCard(selected: 2, backpack: backpack, player: player)
                    shuffleAfterGet(backpack: backpack)
                    print("\(CPUplayer1[0].rank) + \(CPUplayer1[0].suit)")
                    CPUplayCard1(CPUplayer1: CPUplayer1, backpack: backpack, num: num)
                    print("num = \(num)")
                }) {
                    Image("\(player[2].suit)" + "_" + "\(player[2].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                }
                    .offset(x: CGFloat(60), y: 0)
                
                Button(action: {
                    print("\(player[3].rank) + \(player[3].suit)")
                    judgeCard(selected: 3, player: player, num: num)
                    getCard(selected: 3, backpack: backpack, player: player)
                    shuffleAfterGet(backpack: backpack)
                    print("\(CPUplayer1[0].rank) + \(CPUplayer1[0].suit)")
                    CPUplayCard1(CPUplayer1: CPUplayer1, backpack: backpack, num: num)
                    print("num = \(num)")
                }) {
                    Image("\(player[3].suit)" + "_" + "\(player[3].rank)")
                        .resizable()
                        .frame(width: 62.04, height: 94.52)
                }
                    .offset(x: CGFloat(90), y: 0)
                
                Button(action: {
                    print("\(player[4].rank) + \(player[4].suit)")
                    judgeCard(selected: 4, player: player, num: num)
                    getCard(selected: 4, backpack: backpack, player: player)
                    shuffleAfterGet(backpack: backpack)
                    print("\(CPUplayer1[0].rank) + \(CPUplayer1[0].suit)")
                    CPUplayCard1(CPUplayer1: CPUplayer1, backpack: backpack, num: num)
                    print("num = \(num)")
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
                CPUplayer1[i] = cards[i+42]
                player[i] = cards[i+47]
            }
            for i in 0...41 {
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
        let tmp = backpack[0]
        for i in 0...40 {
            self.backpack[i] = backpack[i+1]
        }
        self.backpack[41] = tmp
    }
    
    //換電腦出牌
    func CPUplayCard1(CPUplayer1 : [Card], backpack : [Card], num : Int) {
        //黑桃Ａ歸零
        if (CPUplayer1[0].rank == "A" && CPUplayer1[0].suit == "Spade") {
            self.num = 0
        }
        //４迴轉
        else if (CPUplayer1[0].rank == "4") {
            
        }
        //５指定
        else if (CPUplayer1[0].rank == "5") {
            
        }
        //１０加減１０
        else if (CPUplayer1[0].rank == "10") {
            if (self.num + 10 > 99) {
                self.num -= 10
            }
            else {
                self.num += 10
            }
        }
        //Ｊ跳過
        else if (CPUplayer1[0].rank == "J") {
            
        }
        //Ｑ加減２０
        else if (CPUplayer1[0].rank == "Q") {
            if (self.num + 20 > 99) {
                self.num -= 20
            }
            else {
                self.num += 20
            }
        }
        //Ｋ直接９９
        else if (CPUplayer1[0].rank == "K") {
            self.num = 99
        }
        //數字即為增加點數
        else {
            self.num += CPUplayer1[0].value
        }
        
        //大於９９就爆掉
        if (self.num>99) {
            print("CPU lose")
        }
        
        //跟牌庫拿牌～～
        self.CPUplayer1[0] = backpack[0]
        var tmp = Card(suit: "", rank: "", value: 0)
        tmp = backpack[0]
        for i in 0...40 {
            self.backpack[i] = backpack[i+1]
        }
        self.backpack[41] = tmp
        
    }
    
    //９９ player 條件判斷
    func judgeCard(selected : Int, player : [Card], num : Int) {
        //黑桃Ａ歸零
        if (player[selected].rank == "A" && player[selected].suit == "Spade") {
            self.num = 0
        }
        //４迴轉
        else if (player[selected].rank == "4") {
           
        }
        //５指定
        else if (player[selected].rank == "5") {
            
        }
        //１０加減１０
        else if (player[selected].rank == "10") {
            if (self.num + 10 > 99) {
                self.num -= 10
            }
            else {
                self.num += 10
            }
        }
        //Ｊ跳過
        else if (player[selected].rank == "J") {
            
        }
        //Ｑ加減２０
        else if (player[selected].rank == "Q") {
            if (self.num + 20 > 99) {
                self.num -= 20
            }
            else {
                self.num += 20
            }
        }
        //Ｋ直接９９
        else if (player[selected].rank == "K") {
            self.num = 99
        }
        //數字即為增加點數
        else {
            self.num += player[selected].value
        }
        
        //大於９９就爆掉
        if (self.num>99) {
            print("player lose")
        }
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
