//
//  ACMOAIChatManager.swift
//

import ACMNetworking

/// Chat manager for calling audio endpoints of Open AI
public class ACMOAIChatManager: BaseAPIManager {}

public extension ACMOAIChatManager {
    #warning("BETA: https://platform.openai.com/docs/api-reference/chat")
    /// Create chat based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIChatRequest` Model of possible requests
    ///
    func create(request: ACMOAIChatRequest.Create, onSuccess: ChatCallback.Create, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: ChatRoute.create)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "model", value: request.model))
            .add(param: ACMBodyModel(key: "messages", value: request.messages))

        if let temperature = request.temperature {
            to = to.add(param: ACMBodyModel(key: "temperature", value: temperature))
        }

        if let top_p = request.top_p {
            to = to.add(param: ACMBodyModel(key: "top_p", value: top_p))
        }

        if let n = request.n {
            to = to.add(param: ACMBodyModel(key: "n", value: n))
        }

        if let stream = request.stream {
            to = to.add(param: ACMBodyModel(key: "stream", value: stream))
        }

        if let stop = request.stop {
            to = to.add(param: ACMBodyModel(key: "stop", value: stop))
        }

        if let max_tokens = request.max_tokens {
            to = to.add(param: ACMBodyModel(key: "max_tokens", value: max_tokens))
        }

        if let presence_penalty = request.presence_penalty {
            to = to.add(param: ACMBodyModel(key: "presence_penalty", value: presence_penalty))
        }

        if let frequency_penalty = request.frequency_penalty {
            to = to.add(param: ACMBodyModel(key: "frequency_penalty", value: frequency_penalty))
        }

        if let logit_bias = request.logit_bias {
            to = to.add(param: ACMBodyModel(key: "logit_bias", value: logit_bias))
        }

        if let user = request.user {
            to = to.add(param: ACMBodyModel(key: "user", value: user))
        }

        let buildEndpoint = to.build()

        if request.stream == true {
            network.request(to: buildEndpoint) { (response: [ACMOAIChatResponse.Create]) in
                onSuccess?(response)
            } onError: { error in
                onError?(error)
            }
        } else {
            network.request(to: buildEndpoint) { (response: ACMOAIChatResponse.Create) in
                onSuccess?([response])
            } onError: { error in
                onError?(error)
            }
        }
    }
}
