//
//  ACMOAIAudioResponse.swift
//

/// Response model for holding audio endpoint
public enum ACMOAIAudioResponse {}

public extension ACMOAIAudioResponse {
    /// Response model for create transcriptions
    struct CreateTranscriptions: Codable {
        /// text: optional
        public let text: String?
    }

    /// Response model for create translations
    struct CreateTranslations: Codable {
        /// text: optional
        public let text: String?
    }
}
