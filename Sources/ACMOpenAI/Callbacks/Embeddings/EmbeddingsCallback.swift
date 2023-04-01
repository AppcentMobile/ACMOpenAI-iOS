//
//  EmbeddingsCallback.swift
//

public struct EmbeddingsCallback {}

public extension EmbeddingsCallback {
    typealias Create = ((ACMOAIEmbeddingsResponse.Create?) -> Void)?
}
