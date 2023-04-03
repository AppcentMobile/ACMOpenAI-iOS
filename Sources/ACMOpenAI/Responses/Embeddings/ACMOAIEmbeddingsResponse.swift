//
//  ACMOAIEmbeddingsResponse.swift
//

/// Response model for holding embeddings endpoint
public enum ACMOAIEmbeddingsResponse {}

public extension ACMOAIEmbeddingsResponse {
    /// Response model for create
    struct Create: Codable {
        /// object: optional
        public let object: String?
        /// data: optional
        public let data: [CreateData]?
        /// model: optional
        public let model: String?
        /// usage: optional
        public let usage: CreateUsage?
    }

    /// Response model for create data
    struct CreateData: Codable {
        /// object: optional
        public let object: String?
        /// embedding: optional
        public let embedding: [Double]?
        /// index: optional
        public let index: Int?
    }

    /// Response model for create usage
    struct CreateUsage: Codable {
        /// prompt_tokens: optional
        public let prompt_tokens: Int?
        /// total_tokens: optional
        public let total_tokens: Int?
    }
}
