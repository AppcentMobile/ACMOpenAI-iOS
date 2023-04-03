//
//  ACMOAIEnginesResponse.swift
//

/// Response model for holding engines endpoint
public enum ACMOAIEnginesResponse {}

public extension ACMOAIEnginesResponse {
    /// Response model for list
    class List: Codable {
        /// object: optional
        public let object: String?
        /// data: optional
        public let data: [EnginesData]?
    }

    /// Response model for retrieve
    class Retrieve: EnginesData {}

    /// Response model for engines data
    class EnginesData: Codable {
        /// id: optional
        public let id: String?
        /// object: optional
        public let object: String?
        /// owner: optional
        public let owner: String?
        /// ready: optional
        public let ready: Bool?
    }
}
