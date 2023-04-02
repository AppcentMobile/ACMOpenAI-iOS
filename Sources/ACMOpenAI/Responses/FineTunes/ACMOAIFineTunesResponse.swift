//
//  ACMOAIFineTunesResponse.swift
//

public enum ACMOAIFineTunesResponse {}

public extension ACMOAIFineTunesResponse {
    class Base: Codable {
        let id: String?
        let object: String?
        let model: String?
        let created_at: Int?
        let events: [Events]?
        let fine_tuned_model: String?
        let hyperparams: Hyperparams?
        let organization_id: String?
        let result_files: [String]?
        let status: String?
        let validation_files: [String]?
        let training_files: [TrainingFiles]?
        let updated_at: Int?
    }

    class Create: Base {}

    struct List: Codable {
        let object: String?
        let data: [Base]?
    }

    class Retrieve: Base {}

    class Cancel: Base {}

    struct ListEvents: Codable {
        let object: String?
        let data: [ListEventsData]?
    }

    struct Delete: Codable {
        let id: String?
        let object: String?
        let deleted: Bool?
    }
}

public extension ACMOAIFineTunesResponse {
    struct Events: Codable {
        let object: String?
        let created_at: Int?
        let level: String?
        let message: String?
    }
}

public extension ACMOAIFineTunesResponse {
    struct Hyperparams: Codable {
        let batch_size: Int?
        let learning_rate_multiplier: Double?
        let n_epochs: Int?
        let prompt_loss_weight: Double?
    }
}

public extension ACMOAIFineTunesResponse {
    struct ResultFiles: Codable {
        let id: String?
        let object: String?
        let bytes: Int?
        let created_at: Int?
        let filename: String?
        let purpose: String?
    }
}

public extension ACMOAIFineTunesResponse {
    struct TrainingFiles: Codable {
        let id: String?
        let object: String?
        let bytes: Int?
        let created_at: Int?
        let filename: String?
        let purpose: String?
    }
}

public extension ACMOAIFineTunesResponse {
    struct ListEventsData: Codable {
        let object: String?
        let created_at: Int?
        let level: String?
        let message: String?
    }
}
