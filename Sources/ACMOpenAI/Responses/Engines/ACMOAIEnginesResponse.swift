//
//  ACMOAIEnginesResponse.swift
//

public enum ACMOAIEnginesResponse {}

public extension ACMOAIEnginesResponse {
    class List: Codable {
        public let object: String?
        public let data: [EnginesData]?
    }

    class Retrieve: EnginesData {}

    class EnginesData: Codable {
        public let id: String?
        public let object: String?
        public let owner: String?
        public let ready: Bool?
    }
}
