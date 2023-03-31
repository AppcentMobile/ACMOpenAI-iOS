//
//  ACMOAICompletionsResponse.swift
//

public enum ACMOAICompletionsResponse {
    public struct Create: Codable {
        public let model: String?
        public let prompt: String?
        public let max_tokens: Int?
        public let temperature: Double?
        public let top_p: Double?
        public let n: Int?
        public let stream: Bool?
        public let logprobs: Int?
        public let stop: String?
    }
}
