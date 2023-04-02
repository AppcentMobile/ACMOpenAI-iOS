//
//  ACMOAIEnginesManager.swift
//

import ACMNetworking

#warning("The Engines endpoints are deprecated. Please use their replacement, Models, instead. Learn more.")
public final class ACMOAIEnginesManager: BaseAPIManager {}

public extension ACMOAIEnginesManager {
    func list(onSuccess: EnginesCallback.List, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: EnginesRoute.list)
            .set(method: .get)

        network.request(to: to.build()) { (response: ACMOAIEnginesResponse.List) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIEnginesManager {
    func retrieve(request: ACMOAIEnginesRequest, onSuccess: EnginesCallback.Retrieve, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: String(format: EnginesRoute.retrieve, request.engine_id))
            .set(method: .get)

        network.request(to: to.build()) { (response: ACMOAIEnginesResponse.Retrieve) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
