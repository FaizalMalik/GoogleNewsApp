//
//  TotalArticlesList.swift
//  GoogleNewsApp
//
//  Created by Faizal on 17/05/19.
//  Copyright © 2019 Faizal. All rights reserved.
//

import Foundation


// holds the updated list after each fetch  response from api

class TotalArticleList{
    static let shared = TotalArticleList()
    
    var loadedArticleList : [News]?
    var totalItems : Int?
    
    init() {
        loadedArticleList = []
        totalItems = 0
    }
    
    func update(with newList : [News], totalResults : Int){
        loadedArticleList?.append(contentsOf: newList)
        totalItems = totalResults
    }
}
