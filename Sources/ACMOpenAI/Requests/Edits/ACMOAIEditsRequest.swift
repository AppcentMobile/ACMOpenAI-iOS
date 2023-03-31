//
//  ACMOAIEditRequest.swift
//

public struct ACMOAIEditRequest {
    public var model: String
    public var input: String?
    public var instruction: String
    public var n: Int?
    public var temperature: Double?
    public var top_p: Double?

    public init(model: String, input: String? = nil, instruction: String, n: Int? = nil, temperature: Double? = nil, top_p: Double? = nil) {
        self.model = model
        self.input = input
        self.instruction = instruction
        self.n = n
        self.temperature = temperature
        self.top_p = top_p
    }
}
