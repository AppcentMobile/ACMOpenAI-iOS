//
//  ACMOAIModelsManager.swift
//

import ACMNetworking

public final class ACMOAIModelsManager: BaseAPIManager {}

public extension ACMOAIModelsManager {
    func list(onSuccess: ModelsCallback.List, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: ModelsRoute.list)
            .set(method: .get)

        network.request(to: to.build()) { (response: ACMOAIModelsResponse.List) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIModelsManager {
    func retrieve(model: String, onSuccess: ModelsCallback.Retrieve, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: ACMPathModel(path: ModelsRoute.retrieve, value: model))
            .set(method: .get)

        network.request(to: to.build()) { (response: ACMOAIModelsResponse.Retrieve) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
