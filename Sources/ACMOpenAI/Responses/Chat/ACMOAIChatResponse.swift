//
//  ACMOAIChatResponse.swift
//

/// Response model for holding chat endpoint
public enum ACMOAIChatResponse {}

public extension ACMOAIChatResponse {
    /// Response model for create
    struct Create: Codable {
        /// id: optional
        public let id: String?
        /// object: optional
        public let object: String?
        /// created: optional
        public let created: Int?
        /// choices: optional
        public let choices: [Choices]?
        /// usage: optional
        public let usage: Usage?
    }

    /// Response model for usage
    struct Usage: Codable {
        /// prompt_tokens: optional
        public let prompt_tokens: Int?
        /// completion_tokens: optional
        public let completion_tokens: Int?
        /// total_tokens: optional
        public let total_tokens: Int?
    }

    /// Response model for choices
    struct Choices: Codable {
        /// index: optional
        public let index: Int?
        /// message: optional
        public let message: Message?
        /// finish_reason: optional
        public let finish_reason: String?
    }

    /// Response model for message
    struct Message: Codable {
        /// role: optional
        public let role: String?
        /// content: optional
        public let content: String?
    }
}
