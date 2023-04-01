//
//  ACMOAIEmbeddingsResponse.swift
//

public enum ACMOAIEmbeddingsResponse {}

public extension ACMOAIEmbeddingsResponse {
    struct Create: Codable {
        public let object: String?
        public let data: [CreateData]?
        public let model: String?
        public let usage: CreateUsage?
    }

    struct CreateData: Codable {
        public let object: String?
        public let embedding: [Double]?
        public let index: Int?
    }

    struct CreateUsage: Codable {
        public let prompt_tokens: Int?
        public let total_tokens: Int?
    }
}
