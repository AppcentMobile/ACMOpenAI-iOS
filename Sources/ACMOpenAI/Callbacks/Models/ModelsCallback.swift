//
//  ModelsCallback.swift
//

public struct ModelsCallback {}

public extension ModelsCallback {
    typealias List = ((ACMOAIModelsResponse.List?) -> Void)?
    typealias Retrieve = ((ACMOAIModelsResponse.Retrieve?) -> Void)?
}
