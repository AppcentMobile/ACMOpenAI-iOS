//
//  ACMOAIEditsManager.swift
//

import ACMNetworking

public class ACMOAIEditsManager: BaseAPIManager {}

public extension ACMOAIEditsManager {
    func create(request: ACMOAIEditRequest, onSuccess: EditsCallback.Create, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: EditsRoute.create)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "model", value: request.model))
            .add(param: ACMBodyModel(key: "instruction", value: request.instruction))

        if let input = request.input {
            to = to.add(param: ACMBodyModel(key: "input", value: input))
        }

        if let n = request.n {
            to = to.add(param: ACMBodyModel(key: "n", value: n))
        }

        if let temperature = request.temperature {
            to = to.add(param: ACMBodyModel(key: "temperature", value: temperature))
        }

        if let top_p = request.top_p {
            to = to.add(param: ACMBodyModel(key: "top_p", value: top_p))
        }

        network.request(to: to.build()) { (response: ACMOAIEditsResponse.Create) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
