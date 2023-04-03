//
//  EmbeddingsCallback.swift
//

/// Callback for holding embeddings endpoint
public struct EmbeddingsCallback {}

public extension EmbeddingsCallback {
    /// Create embeddings typealias
    typealias Create = ((ACMOAIEmbeddingsResponse.Create?) -> Void)?
}
