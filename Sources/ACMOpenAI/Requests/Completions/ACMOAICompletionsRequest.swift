//
//  ACMOAICompletionsRequest.swift
//

/// Request model for holding completions endpoint
public enum ACMOAICompletionsRequest {}

public extension ACMOAICompletionsRequest {
    /// Request model for holding create
    struct Create {
        /// model: required*
        public var model: String
        /// prompt: optional
        public var prompt: [String]?
        /// suffix: optional
        public var suffix: String?
        /// max_tokens: optional
        public var max_tokens: Int?
        /// temperature: optional
        public var temperature: Double?
        /// top_p: optional
        public var top_p: Double?
        /// n: optional
        public var n: Int?
        /// stream: optional
        public var stream: Bool?
        /// logprobs: optional
        public var logprobs: Int?
        /// echo: optional
        public var echo: Bool?
        /// stop: optional
        public var stop: String?
        /// presence_penalty: optional
        public var presence_penalty: Double?
        /// frequency_penalty: optional
        public var frequency_penalty: Double?
        /// best_of: optional
        public var best_of: Int?
        /// logit_bias: optional
        public var logit_bias: [String: Int]?
        /// user: optional
        public var user: String?

        /// Init function for creating request
        public init(model: String, prompt: [String]? = nil, suffix: String? = nil, max_tokens: Int? = nil, temperature: Double? = nil, top_p: Double? = nil, n: Int? = nil, stream: Bool? = nil, logprobs: Int? = nil, echo: Bool? = nil, stop: String? = nil, presence_penalty: Double? = nil, frequency_penalty: Double? = nil, best_of: Int? = nil, logit_bias: [String: Int]? = nil, user: String? = nil) {
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
}
