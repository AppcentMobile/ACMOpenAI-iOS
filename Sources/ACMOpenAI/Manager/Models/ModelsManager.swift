//
//  ModelsManager.swift
//

import ACMNetworking

public final class ModelsManager: BaseAPIManager {}

public extension ModelsManager {
    func list(onSuccess: ModelsCallback.List, onError: ACMGenericCallbacks.ErrorCallback) {
        let endpoint = endpoint.set(path: "v1/models")
            .build()

        network.request(to: endpoint) { (response: ACMOAIModelsResponse.List) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ModelsManager {
    func retrieve(model: String, onSuccess: ModelsCallback.Retrieve, onError: ACMGenericCallbacks.ErrorCallback) {
        let endpoint = endpoint.set(path: "v1/models")
            .set(path: model)
            .build()

        network.request(to: endpoint) { (response: ACMOAIModelsResponse.Retrieve) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
