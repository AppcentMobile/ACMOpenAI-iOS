//
//  ACMOAIModerationsRequest.swift
//

/// Request model for holding moderations endpoint
public enum ACMOAIModerationsRequest {}

public extension ACMOAIModerationsRequest {
    /// Request model for holding create
    struct Create {
        /// input: required*
        public var input: String
        /// model: optional
        public var model: String?

        /// Init function for creating request
        public init(input: String, model: String? = nil) {
            self.input = input
            self.model = model
        }
    }
}
