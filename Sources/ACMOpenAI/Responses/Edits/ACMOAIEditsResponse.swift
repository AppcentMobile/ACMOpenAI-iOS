//
//  ACMOAIEditsResponse.swift
//

public enum ACMOAIEditsResponse {}

public extension ACMOAIEditsResponse {
    struct Create: Codable {
        public let object: String?
        public let created: Int?
        public let choices: [Choices]?
        public let usage: Usage?
    }

    struct Choices: Codable {
        public let text: String?
        public let index: Int?
    }

    struct Usage: Codable {
        public let prompt_tokens: Int?
        public let completion_tokens: Int?
        public let total_tokens: Int?
    }
}
