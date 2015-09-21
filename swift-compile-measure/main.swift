//
//  main.swift
//  swift-compile-measure
//
//  Created by jeffery on 15/9/21.
//  Copyright (c) 2015 jeffery. All rights reserved.
//

import Foundation


print("Hello, World!")

let path = "/Users/jeffery/tmp/sample.txt";
//let path = "sample";
//let text = String(contentsOfFile: path, encoding: NSUTF8StringEncoding)
//do {
//    try "dddddd".writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
//}
//catch {/* error handling here */}
do {
    let text = try NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding) as String
//    print(text2)
    let lines = split(text.characters){$0 == "\n"}.map{String($0)}
    for line in lines{
        if line.hasPrefix("CompileSwift"){
            print(line)
        }
    }
}
catch {/* error handling here */}

