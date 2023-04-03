//
//  ACMOAICompletionsResponse.swift
//

/// Response model for holding completions endpoint
public enum ACMOAICompletionsResponse {}

public extension ACMOAICompletionsResponse {
    /// Response model for create
    struct Create: Codable {
        /// model: optional
        public let model: String?
        /// prompt: optional
        public let prompt: String?
        /// max_tokens: optional
        public let max_tokens: Int?
        /// temperature: optional
        public let temperature: Double?
        /// top_p: optional
        public let top_p: Double?
        /// n: optional
        public let n: Int?
        /// stream: optional
        public let stream: Bool?
        /// logprobs: optional
        public let logprobs: Int?
        /// stop: optional
        public let stop: String?
    }
}
