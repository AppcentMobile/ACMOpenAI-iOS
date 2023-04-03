//
//  ACMOAIImagesManager.swift
//

import ACMNetworking

/// Image manager for calling images endpoints of Open AI
public final class ACMOAIImagesManager: BaseAPIManager {}

public extension ACMOAIImagesManager {
    #warning("BETA: https://api.openai.com/v1/images/generations")
    /// Creates image based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIImagesCreateRequest` Model of possible requests
    ///
    func create(request: ACMOAIImagesRequest.Create, onSuccess: ImagesCallback.Create, onError: ACMGenericCallbacks.ErrorCallback) {
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
    /// Creates edit image based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIImagesCreateEditRequest` Model of possible requests
    ///
    func createEdit(request: ACMOAIImagesRequest.CreateEdit, onSuccess: ImagesCallback.CreateEdit, onError: ACMGenericCallbacks.ErrorCallback) {
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
    /// Creates variation image based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIImagesCreateVariationRequest` Model of possible requests
    ///
    func createVariation(request: ACMOAIImagesRequest.CreateVariation, onSuccess: ImagesCallback.CreateVariation, onError: ACMGenericCallbacks.ErrorCallback) {
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
