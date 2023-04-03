//
//  ACMOAIAudioCreateRequest.swift
//

/// Request model for holding audio endpoint
public enum ACMOAIAudioCreateRequest {}

public extension ACMOAIAudioCreateRequest {
    /// Request model for holding transcriptions
    struct Transcriptions {
        /// file: required*
        public var file: String
        /// model: required*
        public var model: String
        /// prompt: optional
        public var prompt: String?
        /// response_format: optional
        public var response_format: String?
        /// temperature: optional
        public var temperature: Double?
        /// language: optional
        public var language: String?

        /// Init function for creating request
        public init(file: String, model: String, prompt: String? = nil, response_format: String? = nil, temperature: Double? = nil, language: String? = nil) {
            self.file = file
            self.model = model
            self.prompt = prompt
            self.response_format = response_format
            self.temperature = temperature
            self.language = language
        }
    }
}

public extension ACMOAIAudioCreateRequest {
    /// Request model for holding translations
    struct Translations {
        /// file: required*
        public var file: String
        /// model: required*
        public var model: String
        /// prompt: optional
        public var prompt: String?
        /// response_format: optional
        public var response_format: String?
        /// temperature: optional
        public var temperature: Double?

        /// Init function for creating request
        public init(file: String, model: String, prompt: String? = nil, response_format: String? = nil, temperature: Double? = nil) {
            self.file = file
            self.model = model
            self.prompt = prompt
            self.response_format = response_format
            self.temperature = temperature
        }
    }
}
