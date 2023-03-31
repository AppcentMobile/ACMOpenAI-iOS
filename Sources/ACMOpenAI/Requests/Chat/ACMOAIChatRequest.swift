//
//  ACMOAIChatRequest.swift
//

public struct ACMOAIChatRequest {
    public var model: String
    public var messages: [String: String]
    public var temperature: Double?
    public var top_p: Double?
    public var n: Int?
    public var stream: Bool?
    public var stop: [String]?
    public var max_tokens: Int?
    public var presence_penalty: Double?
    public var frequency_penalty: Double?
    public var logit_bias: [String: Int]?
    public var user: String?

    public init(model: String, messages: [String: String], temperature: Double? = nil, top_p: Double? = nil, n: Int? = nil, stream: Bool? = nil, stop: [String]? = nil, max_tokens: Int? = nil, presence_penalty: Double? = nil, frequency_penalty: Double? = nil, logit_bias: [String: Int]? = nil, user: String? = nil) {
        self.model = model
        self.messages = messages
        self.temperature = temperature
        self.top_p = top_p
        self.n = n
        self.stream = stream
        self.stop = stop
        self.max_tokens = max_tokens
        self.presence_penalty = presence_penalty
        self.frequency_penalty = frequency_penalty
        self.logit_bias = logit_bias
        self.user = user
    }
}
