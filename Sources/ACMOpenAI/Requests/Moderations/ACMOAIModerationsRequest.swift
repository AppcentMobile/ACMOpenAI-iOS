//
//  ACMOAIModerationsRequest.swift
//

public struct ACMOAIModerationsRequest {
    public var input: String
    public var model: String?

    public init(input: String, model: String? = nil) {
        self.input = input
        self.model = model
    }
}
