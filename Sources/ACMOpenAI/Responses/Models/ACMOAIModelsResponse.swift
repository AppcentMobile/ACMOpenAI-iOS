//
//  ACMOAIModelsResponse.swift
//

/// Response model for holding models endpoint
public enum ACMOAIModelsResponse {}

public extension ACMOAIModelsResponse {
    /// Response model for list
    struct List: Codable {
        /// data: optional
        public let data: [ListData]?
        /// object: optional
        public let object: String?
    }

    /// Response model for retrieve
    struct Retrieve: Codable {
        /// id: optional
        let id: String?
        /// object: optional
        let object: String?
        /// owned_by: optional
        let owned_by: String?
    }
}

public extension ACMOAIModelsResponse {
    /// Response model for list data
    struct ListData: Codable {
        /// id: optional
        let id: String?
        /// object: optional
        let object: String?
        /// owned_by: optional
        let owned_by: String?
    }
}
