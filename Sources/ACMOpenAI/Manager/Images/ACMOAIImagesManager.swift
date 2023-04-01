//
//  ACMOAIImagesManager.swift
//

import ACMNetworking

public final class ACMOAIImagesManager: BaseAPIManager {}

public extension ACMOAIImagesManager {
    #warning("BETA: https://api.openai.com/v1/images/generations")
    func create(request: ACMOAIImagesCreateRequest, onSuccess: ImagesCallback.Create, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: ImagesRoute.create)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "prompt", value: request.prompt))

        if let n = request.n {
            to = to.add(param: ACMBodyModel(key: "n", value: n))
        }

        if let size = request.size {
            to = to.add(param: ACMBodyModel(key: "size", value: size))
        }

        if let response_format = request.response_format {
            to = to.add(param: ACMBodyModel(key: "response_format", value: response_format))
        }

        if let user = request.user {
            to = to.add(param: ACMBodyModel(key: "user", value: user))
        }

        network.request(to: to.build()) { (response: ACMOAIImagesResponse.Create) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIImagesManager {
    #warning("BETA: https://api.openai.com/v1/images/edits")
    func createEdit(request: ACMOAIImagesCreateEditRequest, onSuccess: ImagesCallback.CreateEdit, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: ImagesRoute.createEdit)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "image", value: request.image))
            .add(param: ACMBodyModel(key: "prompt", value: request.prompt))

        if let mask = request.mask {
            to = to.add(param: ACMBodyModel(key: "mask", value: mask))
        }

        if let n = request.n {
            to = to.add(param: ACMBodyModel(key: "n", value: n))
        }

        if let size = request.size {
            to = to.add(param: ACMBodyModel(key: "size", value: size))
        }

        if let response_format = request.response_format {
            to = to.add(param: ACMBodyModel(key: "response_format", value: response_format))
        }

        if let user = request.user {
            to = to.add(param: ACMBodyModel(key: "user", value: user))
        }

        network.request(to: endpoint.build()) { (response: ACMOAIImagesResponse.CreateEdit) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIImagesManager {
    #warning("BETA: https://api.openai.com/v1/images/variations")
    func createVariation(request: ACMOAIImagesCreateVariationRequest, onSuccess: ImagesCallback.CreateVariation, onError: ACMGenericCallbacks.ErrorCallback) {
        var to = endpoint.set(path: ImagesRoute.createVariation)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "image", value: request.image))

        if let n = request.n {
            to = to.add(param: ACMBodyModel(key: "n", value: n))
        }

        if let size = request.size {
            to = to.add(param: ACMBodyModel(key: "size", value: size))
        }

        if let response_format = request.response_format {
            to = to.add(param: ACMBodyModel(key: "response_format", value: response_format))
        }

        if let user = request.user {
            to = to.add(param: ACMBodyModel(key: "user", value: user))
        }

        network.request(to: endpoint.build()) { (response: ACMOAIImagesResponse.CreateVariation) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
