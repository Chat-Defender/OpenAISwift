//
//  File.swift
//
//
//  Created by Bogdan Farca on 02.03.2023.
//

import Foundation

public enum ChatRole: String, Codable {
    case system, user, assistant
}

public struct ChatMessage: Codable {
    public let role: ChatRole
    public let content: String?
    public let cd_key: String?
    public let cd_variables: [String:String]?
    
    /// public initialiser for ChatMessage
    /// Note - the content value is still available for responses - though you cannot initialise it directly
    /// - Parameters:
    ///   - role: user role
    ///   - cd_key: key for message in ChatDefender
    ///   - cd_variables: optional variables for substitution
    public init(role: ChatRole, cd_key: String,cd_variables:[String:String]? = nil) {
        self.role = role
        self.content = nil
        self.cd_key = cd_key
        self.cd_variables = cd_variables
    }
}

public struct ChatConversation: Encodable {
    let user: String?
    let messages: [ChatMessage]
    let model: String
    let temperature: Double?
    let topProbabilityMass: Double?
    let choices: Int?
    let stop: [String]?
    let maxTokens: Int?
    let presencePenalty: Double?
    let frequencyPenalty: Double?

    enum CodingKeys: String, CodingKey {
        case user
        case messages
        case model
        case temperature
        case topProbabilityMass = "top_p"
        case choices = "n"
        case stop
        case maxTokens = "max_tokens"
        case presencePenalty = "presence_penalty"
        case frequencyPenalty = "frequency_penalty"
    }

}
