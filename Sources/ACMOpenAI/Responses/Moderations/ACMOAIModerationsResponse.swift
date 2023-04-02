//
//  ACMOAIModerationsResponse.swift
//

public enum ACMOAIModerationsResponse {}

public extension ACMOAIModerationsResponse {
    struct Create: Codable {
        public let id: String?
        public let model: String?
        public let results: [Results]?
    }
}

public extension ACMOAIModerationsResponse {
    struct Results: Codable {
        public let categories: Categories?
        public let category_scores: CategoryScores?
        public let flagged: Bool?
    }
}

public extension ACMOAIModerationsResponse {
    struct Categories: Codable {
        public let hate: Bool?
        public let hate_threatening: Bool?
        public let self_harm: Bool?
        public let sexual: Bool?
        public let sexual_minors: Bool?
        public let violence: Bool?
        public let violence_graphic: Bool?

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            hate = try values.decodeIfPresent(Bool.self, forKey: .hate)
            hate_threatening = try values.decodeIfPresent(Bool.self, forKey: .hate_threatening)
            self_harm = try values.decodeIfPresent(Bool.self, forKey: .self_harm)
            sexual = try values.decodeIfPresent(Bool.self, forKey: .sexual)
            sexual_minors = try values.decodeIfPresent(Bool.self, forKey: .sexual_minors)
            violence = try values.decodeIfPresent(Bool.self, forKey: .violence)
            violence_graphic = try values.decodeIfPresent(Bool.self, forKey: .violence_graphic)
        }
    }
}

public extension ACMOAIModerationsResponse {
    struct CategoryScores: Codable {
        public let hate: Double?
        public let hate_threatening: Double?
        public let self_harm: Double?
        public let sexual: Double?
        public let sexual_minors: Double?
        public let violence: Double?
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
