//
//  ACMOAIEmbeddingsRequest.swift
//

public struct ACMOAIEmbeddingsRequest {
    public var model: String
    public var input: String
    public var user: String?

    public init(model: String, input: String, user: String? = nil) {
        self.model = model
        self.input = input
        self.user = user
    }
}
