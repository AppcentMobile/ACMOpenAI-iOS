//
//  ACMOAIModelsManager.swift
//

import ACMNetworking

public final class ACMOAIModelsManager: BaseAPIManager {}

public extension ACMOAIModelsManager {
    func list(onSuccess: ModelsCallback.List, onError: ACMGenericCallbacks.ErrorCallback) {
        let endpoint = endpoint.set(path: ModelsRoute.list)
            .build()

        network.request(to: endpoint) { (response: ACMOAIModelsResponse.List) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIModelsManager {
    func retrieve(model: String, onSuccess: ModelsCallback.Retrieve, onError: ACMGenericCallbacks.ErrorCallback) {
        let endpoint = endpoint.set(path: ModelsRoute.retrieve)
            .set(path: model)
            .build()

        network.request(to: endpoint) { (response: ACMOAIModelsResponse.Retrieve) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
