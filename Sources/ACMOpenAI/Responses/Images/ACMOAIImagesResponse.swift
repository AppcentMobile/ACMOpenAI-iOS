//
//  ACMOAIImagesResponse.swift
//

public enum ACMOAIImagesResponse {
    public struct Create: Codable {
        public let created: Int?
        public let data: [CreateData]?
    }

    public struct CreateData: Codable {
        public let url: String?
    }
}

public extension ACMOAIImagesResponse {
    struct CreateVariation: Codable {
        public let created: Int?
        public let data: [CreateVariationData]?
    }

    struct CreateVariationData: Codable {
        public let url: String?
    }
}

public extension ACMOAIImagesResponse {
    struct CreateEdit: Codable {
        public let created: Int?
        public let data: [CreateEditData]?
    }

    struct CreateEditData: Codable {
        public let url: String?
    }
}
