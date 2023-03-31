//
//  ACMOAICompletionsManager.swift
//

import ACMNetworking

public final class ACMOAICompletionsManager: BaseAPIManager {}

public extension ACMOAICompletionsManager {
    func create(request: ACMOAICompletionsRequest, onSuccess: CompletionsCallback.Create, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: "v1/completions")
            .set(method: .post)
            .add(param: ACMBodyModel(key: "model", value: request.model))

        if let prompt = request.prompt {
            to = to.add(param: ACMBodyModel(key: "prompt", value: prompt))
        }

        if let suffix = request.suffix {
            to = to.add(param: ACMBodyModel(key: "suffix", value: suffix))
        }

        if let max_tokens = request.max_tokens {
            to = to.add(param: ACMBodyModel(key: "max_tokens", value: max_tokens))
        }

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

        if let logprobs = request.logprobs {
            to = to.add(param: ACMBodyModel(key: "logprobs", value: logprobs))
        }

        if let echo = request.echo {
            to = to.add(param: ACMBodyModel(key: "echo", value: echo))
        }

        if let stop = request.stop {
            to = to.add(param: ACMBodyModel(key: "stop", value: stop))
        }

        if let presence_penalty = request.presence_penalty {
            to = to.add(param: ACMBodyModel(key: "presence_penalty", value: presence_penalty))
        }

        if let frequency_penalty = request.frequency_penalty {
            to = to.add(param: ACMBodyModel(key: "frequency_penalty", value: frequency_penalty))
        }

        if let best_of = request.best_of {
            to = to.add(param: ACMBodyModel(key: "best_of", value: best_of))
        }

        if let logit_bias = request.logit_bias {
            to = to.add(param: ACMBodyModel(key: "logit_bias", value: logit_bias))
        }

        if let user = request.user {
            to = to.add(param: ACMBodyModel(key: "user", value: user))
        }

        network.request(to: to.build()) { (response: ACMOAICompletionsResponse.Create) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
