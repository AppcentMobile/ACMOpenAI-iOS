//
//  ACMOAIFilesRequest.swift
//

public enum ACMOAIFilesRequest {}

public extension ACMOAIFilesRequest {
    struct Upload {
        public var file: String
        public var purpose: String

        public init(file: String, purpose: String) {
            self.file = file
            self.purpose = purpose
        }
    }
}

public extension ACMOAIFilesRequest {
    struct Delete {
        public var file_id: String

        init(file_id: String) {
            self.file_id = file_id
        }
    }
}

public extension ACMOAIFilesRequest {
    struct Retrieve {
        public var file_id: String

        init(file_id: String) {
            self.file_id = file_id
        }
    }
}

public extension ACMOAIFilesRequest {
    struct RetrieveContent {
        public var file_id: String

        init(file_id: String) {
            self.file_id = file_id
        }
    }
}
