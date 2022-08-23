//
//  Landmark.swift
//  SwiftUI-01
//
//  Created by 明先伟 on 2022/10/11.
//

import SwiftUI

struct Landmark: Identifiable {
    var id = UUID()
    var name:String
    var EnglishName: String
    var Location: String
    
    var imageName: String {EnglishName}
    var thumbnailName: String {EnglishName}
}

let landmarkArray = [
    Landmark(name: "长城", EnglishName: "Greate Wall", Location: "北京"),
    Landmark(name: "自由女神像", EnglishName: "Statue of Liberty", Location: "纽约"),
    Landmark(name: "大本钟", EnglishName: "Big Ben", Location: "伦敦"),
    Landmark(name: "基督像", EnglishName: "Eiffel Tower", Location: "里约热内卢"),
    Landmark(name: "埃菲尔铁塔", EnglishName: "Jesus Christ", Location: "巴黎"),
    Landmark(name: "比萨斜塔", EnglishName: "Leaning Tower of Pisa", Location: "比萨"),
    Landmark(name: "莫斯科红场", EnglishName: "Red Square in Moscow", Location: "莫斯科"),
    Landmark(name: "泰姬陵", EnglishName: "Taj Mahal", Location: "阿格拉"),
    Landmark(name: "荷兰风车", EnglishName: "windmill", Location: "阿姆斯特丹")
]
