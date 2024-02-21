//
//  ACMOAIChatManager.swift
//

import ACMNetworking
import Foundation

/// Chat manager for calling audio endpoints of Open AI
public class ACMOAIChatManager: BaseAPIManager {}

public extension ACMOAIChatManager {
    /// Create chat based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIChatRequest` Model of possible requests
    ///
    func create(request: ACMOAIChatRequest.Create, onSuccess: ChatCallback.Create = nil, onPartial: ChatCallback.Create = nil, onError: ACMGenericCallbacks.ErrorCallback) {
        guard var to = endpoint?.set(path: ChatRoute.create)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "model", value: request.model))
            .add(param: ACMBodyModel(key: "messages", value: request.messages))
        else {
            return
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

        if let tools = request.tools {
            to = to.add(param: ACMBodyModel(key: "tools", value: tools))
        }

        if let tool_choice = request.tool_choice {
            if let strChoice = tool_choice.strChoice {
                to = to.add(param: ACMBodyModel(key: "tool_choice", value: strChoice))
            } else if let objChoice = tool_choice.objChoice {
                to = to.add(param: ACMBodyModel(key: "tool_choice", value: ACMToolChoiceObjectModel(type: objChoice.type, function: objChoice.function)))
            }
        }

        let buildEndpoint = to.build()

        if request.stream == true {
            network.stream(to: buildEndpoint) { data in
                let response = try? JSONDecoder().decode(ACMOAIChatResponse.Create.self, from: data)
                onPartial?(response)
            } onError: { error in
                onError?(error)
            }
        } else {
            network.request(to: buildEndpoint) { (response: ACMOAIChatResponse.Create) in
                onSuccess?(response)
            } onError: { error in
                onError?(error)
            }
        }
    }
}
