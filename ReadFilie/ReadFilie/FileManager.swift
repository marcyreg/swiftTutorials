//
//  FileManager.swift
//  ReadFilie
//
//  Created by Marcy Regalado on 9/30/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class FileManager: NSObject {
    
    static let root = NSSearchPathDirectory.DocumentDirectory
    static let paths = NSSearchPathForDirectoriesInDomains(root, NSSearchPathDomainMask.UserDomainMask, true)
    static let documentDirectory = paths[0] as String
    static var filePath: String!
    
    static func exists(file:String) -> Bool {
        filePath = documentDirectory + "/" + file
        return NSFileManager().fileExistsAtPath(filePath)
    }
    
    static func create(file:String) {
        let writePath = NSURL(fileURLWithPath: documentDirectory).URLByAppendingPathComponent(file)
        NSFileManager().createFileAtPath(writePath.path!, contents: nil, attributes: nil)
        print(filePath)
    }

}
