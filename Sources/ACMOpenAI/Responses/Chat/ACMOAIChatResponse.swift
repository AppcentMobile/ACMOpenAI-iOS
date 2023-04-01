//
//  ACMOAIChatResponse.swift
//

public enum ACMOAIChatResponse {}

public extension ACMOAIChatResponse {
    struct Create: Codable {
        public let id: String?
        public let object: String?
        public let created: Int?
        public let choices: [Choices]?
        public let usage: Usage?
    }

    struct Usage: Codable {
        public let prompt_tokens: Int?
        public let completion_tokens: Int?
        public let total_tokens: Int?
    }

    struct Choices: Codable {
        public let index: Int?
        public let message: Message?
        public let finish_reason: String?
    }

    struct Message: Codable {
        public let role: String?
        public let content: String?
    }
}
