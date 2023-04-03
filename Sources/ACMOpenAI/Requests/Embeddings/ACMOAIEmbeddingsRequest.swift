//
//  ACMOAIEmbeddingsRequest.swift
//

/// Request model for holding embedding endpoint
public enum ACMOAIEmbeddingsRequest {}

public extension ACMOAIEmbeddingsRequest {
    /// Request model for holding create
    struct Create {
        /// model: required*
        public var model: String
        /// input: optional
        public var input: String
        /// user: optional
        public var user: String?

        /// Init function for creating request
        public init(model: String, input: String, user: String? = nil) {
            self.model = model
            self.input = input
            self.user = user
        }
    }
}
