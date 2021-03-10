//
//  RuleView.swift
//  NinetyNine
//
//  Created by User14 on 2021/3/10.
//

import SwiftUI

struct RuleView: View {
    var body: some View {
        VStack {
            Group {
                Text("♠️♥️特殊功能牌♦️♣️")
                    .bold()
                Text("黑桃A：歸零")
                Text("4：迴轉")
                Text("5：指定")
                Text("10：加10或減10")
                Text("J：Pass")
                Text("Q：加20或減20")
                Text("K：99")
                Text("♠️♥️其餘牌隻♦️♣️")
                    .bold()
                Text("其數字為加上的數字大小\n")
            }
            Text("")
            Link("線上遊戲規則說明", destination: URL(string: "https://zh.wikipedia.org/wiki/%E4%B9%9D%E4%B9%9D_(%E6%92%B2%E5%85%8B%E7%89%8C)")!)
        }
    }
}

struct RuleView_Previews: PreviewProvider {
    static var previews: some View {
        RuleView()
    }
}
