//
//  ACMOAIEditsResponse.swift
//

public enum ACMOAIEditsResponse {
    public struct Create: Codable {
        public let object: String?
        public let created: Int?
        public let choices: [Choices]?
        public let usage: Usage?
    }

    public struct Choices: Codable {
        public let text: String?
        public let index: Int?
    }

    public struct Usage: Codable {
        public let prompt_tokens: Int?
        public let completion_tokens: Int?
        public let total_tokens: Int?
    }
}
