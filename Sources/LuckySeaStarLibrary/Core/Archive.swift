//
//  File.swift
//  
//
//  Created by vitus on 2021/07/23.
//

import Foundation
import SwiftyJSON

public class Archive {
    

    public static var docsDir : NSString {

        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docsDir = dirPath[0] as NSString
        return docsDir
    }
    
    //cate.archive
    public class func save(filename: String , data: JSON ) {

        let dataFilePath = Archive.docsDir.appendingPathComponent(filename )
        //Debug.line(type: .signle)
        //Debug.log(dataFilePath)
        
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: data.rawData(), requiringSecureCoding: false)
            try data.write(to: URL(fileURLWithPath: dataFilePath))
        } catch {
            Debug.log("파일을 작성하지 못하였습니다.")
        }
    }
    
    //
    public class func read(filename: String ) ->JSON? {

        let dataFilePath =  Archive.docsDir.appendingPathComponent(filename )
        if FileManager.default.fileExists(atPath: dataFilePath) {
            
            
            
            if let ndata = NSData(contentsOf: URL(fileURLWithPath: dataFilePath)) {
                do {
                    let data = Data(referencing: ndata)
                    let r = try! NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? Data
                    
                    return try JSON(data:r!)
                    
                }catch {
                    return nil
                }
            }

            

        }
        return nil

    }
    
    //remove
    
    public class func remove(filename : String ) {

        let dataFilePath =  Archive.docsDir.appendingPathComponent(filename )
        if FileManager.default.fileExists(atPath: dataFilePath) {
            do {
                try FileManager.default.removeItem(atPath: dataFilePath)
            }catch {
                Debug.log("파일을 삭제하지 못하였습니다.")
            }
           
        }
    }
}
