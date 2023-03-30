//
//  ModelsManager.swift
//
//
//  Created by burak on 31.03.2023.
//

import ACMNetworking

public final class ModelsManager: BaseAPIManager {
    public func list(onSuccess: ModelsCallback.List, onError: ACMGenericCallbacks.ErrorCallback) {
        let endpoint = endpoint.set(path: "v1/models")
            .build()

        network.request(to: endpoint) { (response: String) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
