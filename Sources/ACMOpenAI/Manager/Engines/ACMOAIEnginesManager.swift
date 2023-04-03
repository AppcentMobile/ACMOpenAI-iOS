//
//  ACMOAIEnginesManager.swift
//

import ACMNetworking

#warning("The Engines endpoints are deprecated. Please use their replacement, Models, instead. Learn more.")
/// Engines manager for calling engines endpoints of Open AI
public final class ACMOAIEnginesManager: BaseAPIManager {}

public extension ACMOAIEnginesManager {
    /// Create embeddings based on giving parameters and returns closure
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
    /// Retrieves embedding based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIEnginesRequest` Model of possible requests
    ///
    func retrieve(request: ACMOAIEnginesRequest.Create, onSuccess: EnginesCallback.Retrieve, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: String(format: EnginesRoute.retrieve, request.engine_id))
            .set(method: .get)

        network.request(to: to.build()) { (response: ACMOAIEnginesResponse.Retrieve) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
