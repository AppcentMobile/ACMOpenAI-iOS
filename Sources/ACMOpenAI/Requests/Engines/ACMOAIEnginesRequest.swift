//
//  ACMOAIEnginesRequest.swift
//

/// Request model for holding engines endpoint
public enum ACMOAIEnginesRequest {}

public extension ACMOAIEnginesRequest {
    /// Request model for holding create
    struct Create {
        /// engine_id: required*
        public var engine_id: String

        /// Init function for creating request
        init(engine_id: String) {
            self.engine_id = engine_id
        }
    }
}
