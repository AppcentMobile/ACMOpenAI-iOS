//
//  ACMOAIChatRequest.swift
//

/// Request model for holding chat endpoint
public enum ACMOAIChatRequest {}

public extension ACMOAIChatRequest {
    /// Request model for holding create
    struct Create {
        /// model: required*
        public var model: String
        /// messages: required*
        public var messages: [ACMChatMessageModel]
        /// tools
        public var tools: [ACMToolsModel]?
        /// tool choice
        public var tool_choice: ACMToolChoiceModel?
        /// temperature: optional
        public var temperature: Double?
        /// top_p: optional
        public var top_p: Double?
        /// n: optional
        public var n: Int?
        /// stream: optional
        public var stream: Bool?
        /// stop: optional
        public var stop: [String]?
        /// max_tokens: optional
        public var max_tokens: Int?
        /// presence_penalty: optional
        public var presence_penalty: Double?
        /// frequency_penalty: optional
        public var frequency_penalty: Double?
        /// logit_bias: optional
        public var logit_bias: [String: Int]?
        /// user: optional
        public var user: String?

        /// Init function for creating request
        public init(model: String, messages: [ACMChatMessageModel], tools: [ACMToolsModel]? = nil, temperature: Double? = nil, top_p: Double? = nil, n: Int? = nil, stream: Bool? = nil, stop: [String]? = nil, max_tokens: Int? = nil, presence_penalty: Double? = nil, frequency_penalty: Double? = nil, logit_bias: [String: Int]? = nil, user: String? = nil) {
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
            self.tools = tools
        }
    }
}
