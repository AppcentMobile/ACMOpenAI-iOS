//
//  ACMOAIFilesResponse.swift
//

/// Response model for holding files endpoint
public enum ACMOAIFilesResponse {}

public extension ACMOAIFilesResponse {
    /// Response model for create
    struct List: Codable {
        /// data: optional
        let data: [DataList]?
        /// object: optional
        let object: String?
    }

    /// Response model for data list
    struct DataList: Codable {
        /// id: optional
        let id: String?
        /// object: optional
        let object: String?
        /// bytes: optional
        let bytes: Int?
        /// created_at: optional
        let created_at: Int?
        /// filename: optional
        let filename: String?
        /// purpose: optional
        let purpose: String?
    }
}

public extension ACMOAIFilesResponse {
    /// Response model for upload
    struct Upload: Codable {
        /// id: optional
        let id: String?
        /// object: optional
        let object: String?
        /// bytes: optional
        let bytes: Int?
        /// created_at: optional
        let created_at: Int?
        /// filename: optional
        let filename: String?
        /// purpose: optional
        let purpose: String?
    }
}

public extension ACMOAIFilesResponse {
    /// Response model for delete
    struct Delete: Codable {
        /// id: optional
        let id: String?
        /// object: optional
        let object: String?
        /// deleted: optional
        let deleted: Bool?
    }
}

public extension ACMOAIFilesResponse {
    /// Response model for retrieve
    struct Retrieve: Codable {
        /// id: optional
        let id: String?
        /// object: optional
        let object: String?
        /// bytes: optional
        let bytes: Int
        /// created_at: optional
        let created_at: Int?
        /// filename: optional
        let filename: String?
        /// purpose: optional
        let purpose: String?
    }
}
