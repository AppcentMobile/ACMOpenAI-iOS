//
//  AudioCallback.swift
//

/// Callback for holding audio endpoint
public struct AudioCallback {}

public extension AudioCallback {
    /// Create transcriptions typealias
    typealias CreateTranscriptions = ((ACMOAIAudioResponse.CreateTranscriptions?) -> Void)?
    /// Create translations typealias
    typealias CreateTranslations = ((ACMOAIAudioResponse.CreateTranslations?) -> Void)?
}
