//
//  AudioCallback.swift
//

public struct AudioCallback {}

public extension AudioCallback {
    typealias CreateTranscriptions = ((ACMOAIAudioResponse.CreateTranscriptions?) -> Void)?
    typealias CreateTranslations = ((ACMOAIAudioResponse.CreateTranslations?) -> Void)?
}
