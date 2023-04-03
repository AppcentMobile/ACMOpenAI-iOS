//
//  ACMOAIModelsManager.swift
//

import ACMNetworking

/// Models manager for calling models endpoints of Open AI
public final class ACMOAIModelsManager: BaseAPIManager {}

public extension ACMOAIModelsManager {
    /// Lists models based on giving parameters and returns closure
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
    /// Retrieves model based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - model: `String` Model of possible requests
    ///
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
