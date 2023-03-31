//
//  ACMOAIModelsManager.swift
//

import ACMNetworking

public final class ACMOAIModelsManager: BaseAPIManager {}

public extension ACMOAIModelsManager {
    func list(onSuccess: ModelsCallback.List, onError: ACMGenericCallbacks.ErrorCallback) {
        let endpoint = endpoint.set(path: ModelsRoute.list)
            .set(method: .get)

        network.request(to: endpoint.build()) { (response: ACMOAIModelsResponse.List) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIModelsManager {
    func retrieve(model _: String, onSuccess: ModelsCallback.Retrieve, onError: ACMGenericCallbacks.ErrorCallback) {
        let endpoint = endpoint.set(path: ModelsRoute.retrieve)
            .set(method: .get)

        network.request(to: endpoint.build()) { (response: ACMOAIModelsResponse.Retrieve) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
