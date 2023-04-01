//
//  ACMOAIFilesResponse.swift
//

public enum ACMOAIFilesResponse {}

public extension ACMOAIFilesResponse {
    struct List: Codable {
        let data: [DataList]?
        let object: String?
    }

    struct DataList: Codable {
        let id: String?
        let object: String?
        let bytes: Int?
        let created_at: Int?
        let filename: String?
        let purpose: String?
    }
}

public extension ACMOAIFilesResponse {
    struct Upload: Codable {
        let id: String?
        let object: String?
        let bytes: Int?
        let created_at: Int?
        let filename: String?
        let purpose: String?
    }
}

public extension ACMOAIFilesResponse {
    struct Delete: Codable {
        let id: String?
        let object: String?
        let deleted: Bool?
    }
}

public extension ACMOAIFilesResponse {
    struct Retrieve: Codable {
        let id: String?
        let object: String?
        let bytes: Int
        let created_at: Int?
        let filename: String?
        let purpose: String?
    }
}
