//
//  ACMOAIModerationsResponse.swift
//

/// Response model for holding moderations endpoint
public enum ACMOAIModerationsResponse {}

public extension ACMOAIModerationsResponse {
    /// Response model for create
    struct Create: Codable {
        /// id: optional
        public let id: String?
        /// model: optional
        public let model: String?
        /// results: optional
        public let results: [Results]?
    }
}

public extension ACMOAIModerationsResponse {
    /// Response model for results
    struct Results: Codable {
        /// categories: optional
        public let categories: Categories?
        /// category_scores: optional
        public let category_scores: CategoryScores?
        /// flagged: optional
        public let flagged: Bool?
    }
}

public extension ACMOAIModerationsResponse {
    /// Response model for categories
    struct Categories: Codable {
        /// flagged: optional
        public let hate: Bool?
        /// hate_threatening: optional
        public let hate_threatening: Bool?
        /// self_harm: optional
        public let self_harm: Bool?
        /// sexual: optional
        public let sexual: Bool?
        /// sexual_minors: optional
        public let sexual_minors: Bool?
        /// violence: optional
        public let violence: Bool?
        /// violence_graphic: optional
        public let violence_graphic: Bool?
    }
}

public extension ACMOAIModerationsResponse {
    /// Response model for category success
    struct CategoryScores: Codable {
        /// hate: optional
        public let hate: Double?
        /// hate_threatening: optional
        public let hate_threatening: Double?
        /// self_harm: optional
        public let self_harm: Double?
        /// sexual: optional
        public let sexual: Double?
        /// sexual_minors: optional
        public let sexual_minors: Double?
        /// violence: optional
        public let violence: Double?
        /// violence_graphic: optional
        public let violence_graphic: Double?

        enum CodingKeys: String, CodingKey {
            case hate
            case hate_threatening = "hate/threatening"
            case self_harm = "self-harm"
            case sexual
            case sexual_minors = "sexual/minors"
            case violence
            case violence_graphic = "violence/graphic"
        }

        /// Init function for decoding response
        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            hate = try values.decodeIfPresent(Double.self, forKey: .hate)
            hate_threatening = try values.decodeIfPresent(Double.self, forKey: .hate_threatening)
            self_harm = try values.decodeIfPresent(Double.self, forKey: .self_harm)
            sexual = try values.decodeIfPresent(Double.self, forKey: .sexual)
            sexual_minors = try values.decodeIfPresent(Double.self, forKey: .sexual_minors)
            violence = try values.decodeIfPresent(Double.self, forKey: .violence)
            violence_graphic = try values.decodeIfPresent(Double.self, forKey: .violence_graphic)
        }
    }
}
