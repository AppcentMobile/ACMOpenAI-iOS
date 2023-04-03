//
//  ACMOAIEditRequest.swift
//

/// Request model for holding edit endpoint
public enum ACMOAIEditRequest {}

public extension ACMOAIEditRequest {
    /// Request model for holding create
    struct Create {
        /// model: required*
        public var model: String
        /// input: optional
        public var input: String?
        /// instruction: required*
        public var instruction: String
        /// n: optional
        public var n: Int?
        /// temperature: optional
        public var temperature: Double?
        /// top_p: optional
        public var top_p: Double?

        /// Init function for creating request
        public init(model: String, input: String? = nil, instruction: String, n: Int? = nil, temperature: Double? = nil, top_p: Double? = nil) {
            self.model = model
            self.input = input
            self.instruction = instruction
            self.n = n
            self.temperature = temperature
            self.top_p = top_p
        }
    }
}
