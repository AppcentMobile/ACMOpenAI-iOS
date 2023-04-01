//
//  ACMOAIEmbeddingsManager.swift
//

import ACMNetworking

public class ACMOAIEmbeddingsManager: BaseAPIManager {}

public extension ACMOAIEmbeddingsManager {
    func create(request: ACMOAIEmbeddingsRequest, onSuccess: EmbeddingsCallback.Create, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: EmbeddingsRoute.create)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "model", value: request.model))
            .add(param: ACMBodyModel(key: "input", value: request.input))

        if let user = request.user {
            to = to.add(param: ACMBodyModel(key: "user", value: user))
        }

        network.request(to: to.build()) { (response: ACMOAIEmbeddingsResponse.Create) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
