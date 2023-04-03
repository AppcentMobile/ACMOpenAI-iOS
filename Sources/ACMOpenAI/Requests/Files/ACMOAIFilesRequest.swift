//
//  ACMOAIFilesRequest.swift
//

/// Request model for holding files endpoint
public enum ACMOAIFilesRequest {}

public extension ACMOAIFilesRequest {
    /// Request model for holding upload
    struct Upload {
        /// file: required*
        public var file: String
        /// purpose: required*
        public var purpose: String

        /// Init function for creating request
        public init(file: String, purpose: String) {
            self.file = file
            self.purpose = purpose
        }
    }
}

public extension ACMOAIFilesRequest {
    /// Request model for holding delete
    struct Delete {
        /// file_id: required*
        public var file_id: String

        /// Init function for creating request
        public init(file_id: String) {
            self.file_id = file_id
        }
    }
}

public extension ACMOAIFilesRequest {
    /// Request model for holding retrieve
    struct Retrieve {
        /// file_id: required*
        public var file_id: String

        /// Init function for creating request
        public init(file_id: String) {
            self.file_id = file_id
        }
    }
}

public extension ACMOAIFilesRequest {
    /// Request model for holding retrieve content
    struct RetrieveContent {
        /// file_id: required*
        public var file_id: String

        /// Init function for creating request
        public init(file_id: String) {
            self.file_id = file_id
        }
    }
}
