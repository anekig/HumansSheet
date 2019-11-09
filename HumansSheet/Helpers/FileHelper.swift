//
//  FileHelper.swift
//  HumansSheet
//
//  Created by Kate on 09/11/2019.
//  Copyright © 2019 Anekig. All rights reserved.
//

import Foundation

class FileHelper {
    
    static func writeToFile(fileName: String, writeText: String) -> (Bool, String) {
        let desktopURL = try! FileManager.default.url(for: .desktopDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let fileURL = desktopURL.appendingPathComponent(fileName).appendingPathExtension("csv")
        
        do {
            try writeText.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("Error: fileURL failed to write: \(error)" )
            return (false, fileURL.path)
        }
        return (true, fileURL.path)
    }

}
