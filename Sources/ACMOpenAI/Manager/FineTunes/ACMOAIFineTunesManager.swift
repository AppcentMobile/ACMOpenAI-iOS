//
//  ACMOAIFineTunesManager.swift
//

import ACMNetworking

public final class ACMOAIFineTunesManager: BaseAPIManager {}

public extension ACMOAIFineTunesManager {
    func create(request: ACMOAIFineTunesRequest.Create, onSuccess: FineTunesCallback.Create, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: FineTunesRoute.create)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "training_file", value: request.training_file))

        if let validation_file = request.validation_file {
            to = to.add(param: ACMBodyModel(key: "validation_file", value: validation_file))
        }

        if let model = request.model {
            to = to.add(param: ACMBodyModel(key: "model", value: model))
        }

        if let n_epochs = request.n_epochs {
            to = to.add(param: ACMBodyModel(key: "n_epochs", value: n_epochs))
        }

        if let batch_size = request.batch_size {
            to = to.add(param: ACMBodyModel(key: "batch_size", value: batch_size))
        }

        if let learning_rate_multiplier = request.learning_rate_multiplier {
            to = to.add(param: ACMBodyModel(key: "learning_rate_multiplier", value: learning_rate_multiplier))
        }

        if let prompt_loss_weight = request.prompt_loss_weight {
            to = to.add(param: ACMBodyModel(key: "prompt_loss_weight", value: prompt_loss_weight))
        }

        if let compute_classification_metrics = request.compute_classification_metrics {
            to = to.add(param: ACMBodyModel(key: "compute_classification_metrics", value: compute_classification_metrics))
        }

        if let classification_n_classes = request.classification_n_classes {
            to = to.add(param: ACMBodyModel(key: "classification_n_classes", value: classification_n_classes))
        }

        if let classification_positive_class = request.classification_positive_class {
            to = to.add(param: ACMBodyModel(key: "classification_positive_class", value: classification_positive_class))
        }

        if let classification_betas = request.classification_betas {
            to = to.add(param: ACMBodyModel(key: "classification_betas", value: classification_betas))
        }

        if let suffix = request.suffix {
            to = to.add(param: ACMBodyModel(key: "suffix", value: suffix))
        }

        network.request(to: to.build()) { (response: ACMOAIFineTunesResponse.Create) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIFineTunesManager {
    func list(onSuccess: FineTunesCallback.List, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: FineTunesRoute.list)
            .set(method: .get)

        network.request(to: to.build()) { (response: ACMOAIFineTunesResponse.List) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIFineTunesManager {
    func retrieve(request: ACMOAIFineTunesRequest.Retrieve, onSuccess: FineTunesCallback.Retrieve, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: String(format: FineTunesRoute.retrieve, request.fine_tune_id))
            .set(method: .get)

        network.request(to: to.build()) { (response: ACMOAIFineTunesResponse.Retrieve) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIFineTunesManager {
    func cancel(request: ACMOAIFineTunesRequest.Cancel, onSuccess: FineTunesCallback.Cancel, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: String(format: FineTunesRoute.cancel, request.fine_tune_id))
            .set(method: .post)

        network.request(to: to.build()) { (response: ACMOAIFineTunesResponse.Cancel) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIFineTunesManager {
    func listEvents(request: ACMOAIFineTunesRequest.ListEvents, onSuccess: FineTunesCallback.ListEvents, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: String(format: FineTunesRoute.listEvents, request.fine_tune_id))
            .set(method: .get)

        if let stream = request.stream {
            to = to.add(param: ACMBodyModel(key: "stream", value: stream))
        }

        network.request(to: to.build()) { (response: ACMOAIFineTunesResponse.ListEvents) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIFineTunesManager {
    func delete(request: ACMOAIFineTunesRequest.Delete, onSuccess: FineTunesCallback.Delete, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: String(format: FineTunesRoute.delete, request.model))
            .set(method: .delete)

        network.request(to: to.build()) { (response: ACMOAIFineTunesResponse.Delete) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
