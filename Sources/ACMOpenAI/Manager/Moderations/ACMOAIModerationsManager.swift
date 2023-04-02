//
//  ACMOAIModerationsManager.swift
//

import ACMNetworking

public final class ACMOAIModerationsManager: BaseAPIManager {}

public extension ACMOAIModerationsManager {
    func create(request: ACMOAIModerationsRequest, onSuccess: ModerationsCallback.Create, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: ModerationsRoute.create)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "input", value: request.input))

        if let model = request.model {
            to = to.add(param: ACMBodyModel(key: "model", value: model))
        }

        network.request(to: to.build()) { (response: ACMOAIModerationsResponse.Create) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
