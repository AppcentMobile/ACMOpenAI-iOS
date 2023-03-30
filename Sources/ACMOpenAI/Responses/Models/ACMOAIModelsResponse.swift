//
//  ACMOAIModelsResponse.swift
//

public enum ACMOAIModelsResponse {
    public struct List: Codable {
        public let data: [ListData]?
        public let object: String?
    }

    public struct Retrieve: Codable {
        let id: String?
        let object: String?
        let owned_by: String?
    }
}

public extension ACMOAIModelsResponse {
    struct ListData: Codable {
        let id: String?
        let object: String?
        let owned_by: String?
    }
}
