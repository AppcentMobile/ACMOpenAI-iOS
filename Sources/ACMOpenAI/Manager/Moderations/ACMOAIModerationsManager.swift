//
//  ACMOAIModerationsManager.swift
//

import ACMNetworking

/// Moderations manager for calling moderations endpoints of Open AI
public final class ACMOAIModerationsManager: BaseAPIManager {}

public extension ACMOAIModerationsManager {
    /// Create moderations based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIModerationsRequest` Model of possible requests
    ///
    func create(request: ACMOAIModerationsRequest.Create, onSuccess: ModerationsCallback.Create, onError: ACMGenericCallbacks.ErrorCallback) {
        guard var to = endpoint?.set(path: ModerationsRoute.create)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "input", value: request.input))
        else {
            return
        }

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
