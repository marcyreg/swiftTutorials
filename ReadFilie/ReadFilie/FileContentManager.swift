//
//  FileContentManager.swift
//  ReadFilie
//
//  Created by Marcy Regalado on 9/30/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class FileContentManager: NSObject {
    
    
    init(file:String) {
        
        if !FileManager.exists(file) {
            
            FileManager.create(file)
        }
    }
    
    func read() -> String {
    
        var text:String
        
        do {
            
            text = try String(contentsOfFile: FileManager.filePath)
            
        }catch{
            
            text = ""
            
        }
        
        return text
        
    }
    
    func write(content:String) {
        
        let contentToWrite = content as NSString
        
        do {
            
            try contentToWrite.writeToFile(FileManager.filePath, atomically: true, encoding: NSUTF8StringEncoding)
            
        }catch{
            
            print("Something went wrong")
            
        }
        
    }

}
