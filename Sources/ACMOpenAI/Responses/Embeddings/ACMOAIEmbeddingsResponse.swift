//
//  ACMOAIEmbeddingsResponse.swift
//

public enum ACMOAIEmbeddingsResponse {
    public struct Create: Codable {
        public let object: String?
        public let data: [CreateData]?
        public let model: String?
        public let usage: CreateUsage?
    }

    public struct CreateData: Codable {
        public let object: String?
        public let embedding: [Double]?
        public let index: Int?
    }

    public struct CreateUsage: Codable {
        public let prompt_tokens: Int?
        public let total_tokens: Int?
    }
}
