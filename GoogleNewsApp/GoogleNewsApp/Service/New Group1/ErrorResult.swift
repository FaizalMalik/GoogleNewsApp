//
//  Error.swift
//  
//
//  Created by Faizal on 19/06/19.
//  Copyright © 2019 Faizal. All rights reserved.
//

import Foundation

enum ErrorResult : Error {
    case network(string : String)
    case parser(string:String)
    case custom(string:String)
}
