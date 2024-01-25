//
//  ACMOAIEmbeddingsManager.swift
//

import ACMNetworking

/// Embedding manager for calling embedding endpoints of Open AI
public class ACMOAIEmbeddingsManager: BaseAPIManager {}

public extension ACMOAIEmbeddingsManager {
    /// Create embeddings based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIEmbeddingsRequest` Model of possible requests
    ///
    func create(request: ACMOAIEmbeddingsRequest.Create, onSuccess: EmbeddingsCallback.Create, onError: ACMGenericCallbacks.ErrorCallback) {
        guard var to = endpoint?.set(path: EmbeddingsRoute.create)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "model", value: request.model))
            .add(param: ACMBodyModel(key: "input", value: request.input)) else { return }

        if let user = request.user {
            to = to.add(param: ACMBodyModel(key: "user", value: user))
        }

        network.request(to: to.build()) { (response: ACMOAIEmbeddingsResponse.Create) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
