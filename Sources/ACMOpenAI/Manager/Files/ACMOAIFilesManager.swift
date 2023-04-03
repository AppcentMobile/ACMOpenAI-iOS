//
//  ACMOAIFilesManager.swift
//

import ACMNetworking

/// Files manager for calling files endpoints of Open AI
public class ACMOAIFilesManager: BaseAPIManager {}

public extension ACMOAIFilesManager {
    /// Lists files based on giving parameters and returns closure
    func list(onSuccess: FilesCallback.List, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: FilesRoute.list)
            .set(method: .get)

        network.request(to: to.build()) { (response: ACMOAIFilesResponse.List) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIFilesManager {
    /// Upload files based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIFilesRequest.Upload` Model of possible requests
    ///
    func upload(request: ACMOAIFilesRequest.Upload, onSuccess: FilesCallback.Upload, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: FilesRoute.upload)
            .set(method: .post)
            .add(param: ACMBodyModel(key: "file", value: request.file))
            .add(param: ACMBodyModel(key: "purpose", value: request.purpose))

        network.request(to: to.build()) { (response: ACMOAIFilesResponse.Upload) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIFilesManager {
    /// Delete files based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIFilesRequest.Delete` Model of possible requests
    ///
    func delete(request: ACMOAIFilesRequest.Delete, onSuccess: FilesCallback.Delete, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: String(format: FilesRoute.delete, request.file_id))
            .set(method: .delete)

        network.request(to: to.build()) { (response: ACMOAIFilesResponse.Delete) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIFilesManager {
    /// Retrieves files based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIFilesRequest.Retrieve` Model of possible requests
    ///
    func retrieve(request: ACMOAIFilesRequest.Retrieve, onSuccess: FilesCallback.Retrieve, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: String(format: FilesRoute.retrieve, request.file_id))
            .set(method: .get)

        network.request(to: to.build()) { (response: ACMOAIFilesResponse.Retrieve) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}

public extension ACMOAIFilesManager {
    /// Retrieves the contents of files based on giving parameters and returns closure
    ///
    ///  - Parameters:
    ///    - request: `ACMOAIFilesRequest.RetrieveContent` Model of possible requests
    ///
    func retrieveContent(request: ACMOAIFilesRequest.RetrieveContent, onSuccess: FilesCallback.RetrieveContent, onError: ACMGenericCallbacks.ErrorCallback) {
        let to = endpoint.set(path: String(format: FilesRoute.retrieveContent, request.file_id))
            .set(method: .get)

        network.request(to: to.build()) { (response: String) in
            onSuccess?(response)
        } onError: { error in
            onError?(error)
        }
    }
}
