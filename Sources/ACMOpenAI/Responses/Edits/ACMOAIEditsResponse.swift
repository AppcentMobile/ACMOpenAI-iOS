//
//  ACMOAIEditsResponse.swift
//

/// Response model for holding edits endpoint
public enum ACMOAIEditsResponse {}

public extension ACMOAIEditsResponse {
    struct Create: Codable {
        /// object: optional
        public let object: String?
        /// created: optional
        public let created: Int?
        /// choices: optional
        public let choices: [Choices]?
        /// usage: optional
        public let usage: Usage?
    }

    struct Choices: Codable {
        /// text: optional
        public let text: String?
        /// index: optional
        public let index: Int?
    }

    struct Usage: Codable {
        /// prompt_tokens: optional
        public let prompt_tokens: Int?
        /// completion_tokens: optional
        public let completion_tokens: Int?
        /// total_tokens: optional
        public let total_tokens: Int?
    }
}
