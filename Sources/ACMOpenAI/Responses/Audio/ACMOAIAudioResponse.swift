//
//  ACMOAIAudioResponse.swift
//

public enum ACMOAIAudioResponse {
    public struct CreateTranscriptions: Codable {
        public let text: String?
    }

    public struct CreateTranslations: Codable {
        public let text: String?
    }
}
