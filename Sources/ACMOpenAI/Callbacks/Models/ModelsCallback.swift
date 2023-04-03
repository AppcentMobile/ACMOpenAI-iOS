//
//  ModelsCallback.swift
//

/// Callback for holding models endpoint
public struct ModelsCallback {}

public extension ModelsCallback {
    /// List models typealias
    typealias List = ((ACMOAIModelsResponse.List?) -> Void)?
    /// Retrieve models typealias
    typealias Retrieve = ((ACMOAIModelsResponse.Retrieve?) -> Void)?
}
