//
//  ACMOAIAudioCreateRequest.swift
//

public enum ACMOAIAudioCreateRequest {}

public extension ACMOAIAudioCreateRequest {
    struct Transcriptions {
        public var file: String
        public var model: String
        public var prompt: String?
        public var response_format: String?
        public var temperature: Double?
        public var language: String?

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
    struct Translations {
        public var file: String
        public var model: String
        public var prompt: String?
        public var response_format: String?
        public var temperature: Double?

        public init(file: String, model: String, prompt: String? = nil, response_format: String? = nil, temperature: Double? = nil) {
            self.file = file
            self.model = model
            self.prompt = prompt
            self.response_format = response_format
            self.temperature = temperature
        }
    }
}
