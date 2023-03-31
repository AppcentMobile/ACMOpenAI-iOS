//
//  ACMOAICompletionsRequest.swift
//

public struct ACMOAICompletionsRequest {
    public var model: String
    public var prompt: [String]?
    public var suffix: String?
    public var max_tokens: Int?
    public var temperature: Double?
    public var top_p: Double?
    public var n: Int?
    public var stream: Bool?
    public var logprobs: Int?
    public var echo: Bool?
    public var stop: String?
    public var presence_penalty: Double?
    public var frequency_penalty: Double?
    public var best_of: Int?
    public var logit_bias: [String: Int]?
    public var user: String?

    init(model: String, prompt: [String]? = nil, suffix: String? = nil, max_tokens: Int? = nil, temperature: Double? = nil, top_p: Double? = nil, n: Int? = nil, stream: Bool? = nil, logprobs: Int? = nil, echo: Bool? = nil, stop: String? = nil, presence_penalty: Double? = nil, frequency_penalty: Double? = nil, best_of: Int? = nil, logit_bias: [String : Int]? = nil, user: String? = nil) {
        self.model = model
        self.prompt = prompt
        self.suffix = suffix
        self.max_tokens = max_tokens
        self.temperature = temperature
        self.top_p = top_p
        self.n = n
        self.stream = stream
        self.logprobs = logprobs
        self.echo = echo
        self.stop = stop
        self.presence_penalty = presence_penalty
        self.frequency_penalty = frequency_penalty
        self.best_of = best_of
        self.logit_bias = logit_bias
        self.user = user
    }
}
