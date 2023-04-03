//
//  ACMOAIImagesResponse.swift
//

/// Response model for holding images endpoint
public enum ACMOAIImagesResponse {}

public extension ACMOAIImagesResponse {
    /// Response model for create
    struct Create: Codable {
        /// created: optional
        public let created: Int?
        /// data: optional
        public let data: [CreateData]?
    }

    /// Response model for create data
    struct CreateData: Codable {
        /// url: optional
        public let url: String?
    }
}

public extension ACMOAIImagesResponse {
    /// Response model for create variation
    struct CreateVariation: Codable {
        /// created: optional
        public let created: Int?
        /// data: optional
        public let data: [CreateVariationData]?
    }

    /// Response model for create variation data
    struct CreateVariationData: Codable {
        /// url: optional
        public let url: String?
    }
}

public extension ACMOAIImagesResponse {
    /// Response model for create edit
    struct CreateEdit: Codable {
        /// created: optional
        public let created: Int?
        /// data: optional
        public let data: [CreateEditData]?
    }

    /// Response model for create edit data
    struct CreateEditData: Codable {
        /// url: optional
        public let url: String?
    }
}
