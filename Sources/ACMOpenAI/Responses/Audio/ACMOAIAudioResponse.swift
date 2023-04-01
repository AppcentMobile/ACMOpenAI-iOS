//
//  ACMOAIAudioResponse.swift
//

public enum ACMOAIAudioResponse {}

public extension ACMOAIAudioResponse {
    struct CreateTranscriptions: Codable {
        public let text: String?
    }

    struct CreateTranslations: Codable {
        public let text: String?
    }
}
