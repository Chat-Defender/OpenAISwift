//
//  File.swift
//  
//
//  Created by Rob Jonson on 23/03/2023.
//

import Foundation

public struct CDMessage: Codable {
    /// The key referencing your message in Chat Defender
    let key:String
    
    /// The variables for substitution into your message
    let variables: [String:String]?
    
    /// Creates a new CDMessage with a given key and variables
    /// - Parameters:
    ///   - key: key for message in ChatDefender
    ///   - variables: optional variables for substitution
    public init(key: String, variables: [String : String]? = nil) {
        self.key = key
        self.variables = variables
    }

}
