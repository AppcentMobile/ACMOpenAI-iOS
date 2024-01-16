//
//  ACMOAIAudioManager.swift
//

import ACMNetworking

/// Audio manager for calling audio endpoints of Open AI
public class ACMOAIAudioManager: BaseAPIManager {}

public extension ACMOAIAudioManager {
    /// Create transcriptions based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIAudioCreateRequest.Transcriptions` Model of possible requests
    ///
    func createTranscriptions(request: ACMOAIAudioCreateRequest.Transcriptions, onSuccess: AudioCallback.CreateTranscriptions, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: AudioRoute.Create.transcriptions)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "file", value: request.file))
            .add(param: ACMBodyModel(key: "model", value: request.model))

        if let prompt = request.prompt {
            to = to.add(param: ACMBodyModel(key: "prompt", value: prompt))
        }

        if let response_format = request.response_format {
            to = to.add(param: ACMBodyModel(key: "response_format", value: response_format))
        }

        if let temperature = request.temperature {
            to = to.add(param: ACMBodyModel(key: "temperature", value: temperature))
        }

        if let language = request.language {
            to = to.add(param: ACMBodyModel(key: "language", value: language))
        }

        network.request(to: to.build()) { (response: ACMOAIAudioResponse.CreateTranscriptions) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIAudioManager {
    /// Create translations based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIAudioCreateRequest.Transcriptions` Model of possible requests
    ///
    func createTranslations(request: ACMOAIAudioCreateRequest.Translations, onSuccess: AudioCallback.CreateTranslations, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: AudioRoute.Create.translations)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "file", value: request.file))
            .add(param: ACMBodyModel(key: "model", value: request.model))

        if let prompt = request.prompt {
            to = to.add(param: ACMBodyModel(key: "prompt", value: prompt))
        }

        if let response_format = request.response_format {
            to = to.add(param: ACMBodyModel(key: "response_format", value: response_format))
        }

        if let temperature = request.temperature {
            to = to.add(param: ACMBodyModel(key: "temperature", value: temperature))
        }

        network.request(to: to.build()) { (response: ACMOAIAudioResponse.CreateTranslations) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
