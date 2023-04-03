//
//  ACMOAIImagesRequest.swift
//

/// Request model for holding images endpoint
public enum ACMOAIImagesRequest {}

public extension ACMOAIImagesRequest {
    /// Request model for holding create
    struct Create {
        /// image: required*
        public var image: String
        /// mask: optional
        public var mask: String?
        /// prompt: required*
        public var prompt: String
        /// n: optional
        public var n: Int?
        /// size: optional
        public var size: String?
        /// response_format: optional
        public var response_format: String?
        /// user: optional
        public var user: String?

        /// Init function for creating request
        public init(image: String, mask: String? = nil, prompt: String, n: Int? = nil, size: String? = nil, response_format: String? = nil, user: String? = nil) {
            self.image = image
            self.mask = mask
            self.prompt = prompt
            self.n = n
            self.size = size
            self.response_format = response_format
            self.user = user
        }
    }
}

public extension ACMOAIImagesRequest {
    /// Request model for holding edit
    struct CreateEdit {
        /// image: required*
        public var image: String
        /// mask: optional
        public var mask: String?
        /// prompt: required*
        public var prompt: String
        /// n: optional
        public var n: Int?
        /// size: optional
        public var size: String?
        /// response_format: optional
        public var response_format: String?
        /// user: optional
        public var user: String?

        /// Init function for creating request
        public init(image: String, mask: String? = nil, prompt: String, n: Int? = nil, size: String? = nil, response_format: String? = nil, user: String? = nil) {
            self.image = image
            self.mask = mask
            self.prompt = prompt
            self.n = n
            self.size = size
            self.response_format = response_format
            self.user = user
        }
    }
}

public extension ACMOAIImagesRequest {
    /// Request model for holding create variation
    struct CreateVariation {
        /// image: required*
        public var image: String
        /// n: optional
        public var n: Int?
        /// size: optional
        public var size: String?
        /// response_format: optional
        public var response_format: String?
        /// user: optional
        public var user: String?

        /// Init function for creating request
        public init(image: String, n: Int? = nil, size: String? = nil, response_format: String? = nil, user: String? = nil) {
            self.image = image
            self.n = n
            self.size = size
            self.response_format = response_format
            self.user = user
        }
    }
}
