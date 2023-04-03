//
//  ACMOAIFineTunesResponse.swift
//

/// Response model for holding fine tunes endpoint
public enum ACMOAIFineTunesResponse {}

public extension ACMOAIFineTunesResponse {
    /// Response model for base
    class Base: Codable {
        /// id: optional
        let id: String?
        /// object: optional
        let object: String?
        /// model: optional
        let model: String?
        /// created_at: optional
        let created_at: Int?
        /// events: optional
        let events: [Events]?
        /// fine_tuned_model: optional
        let fine_tuned_model: String?
        /// hyperparams: optional
        let hyperparams: Hyperparams?
        /// organization_id: optional
        let organization_id: String?
        /// result_files: optional
        let result_files: [String]?
        /// status: optional
        let status: String?
        /// validation_files: optional
        let validation_files: [String]?
        /// training_files: optional
        let training_files: [TrainingFiles]?
        /// updated_at: optional
        let updated_at: Int?
    }

    /// Response model for create
    class Create: Base {}

    /// Response model for list
    struct List: Codable {
        /// object: optional
        let object: String?
        /// data: optional
        let data: [Base]?
    }

    /// Response model for retrieve
    class Retrieve: Base {}

    /// Response model for cancel
    class Cancel: Base {}

    /// Response model for list events
    struct ListEvents: Codable {
        /// object: optional
        let object: String?
        /// data: optional
        let data: [ListEventsData]?
    }

    /// Response model for delete
    struct Delete: Codable {
        /// id: optional
        let id: String?
        /// object: optional
        let object: String?
        /// deleted: optional
        let deleted: Bool?
    }
}

public extension ACMOAIFineTunesResponse {
    /// Response model for events
    struct Events: Codable {
        /// object: optional
        let object: String?
        /// created_at: optional
        let created_at: Int?
        /// level: optional
        let level: String?
        /// message: optional
        let message: String?
    }
}

public extension ACMOAIFineTunesResponse {
    /// Response model for hyper params
    struct Hyperparams: Codable {
        /// batch_size: optional
        let batch_size: Int?
        /// learning_rate_multiplier: optional
        let learning_rate_multiplier: Double?
        /// n_epochs: optional
        let n_epochs: Int?
        /// prompt_loss_weight: optional
        let prompt_loss_weight: Double?
    }
}

public extension ACMOAIFineTunesResponse {
    /// Response model for result files
    struct ResultFiles: Codable {
        /// id: optional
        let id: String?
        /// object: optional
        let object: String?
        /// bytes: optional
        let bytes: Int?
        /// created_at: optional
        let created_at: Int?
        /// filename: optional
        let filename: String?
        /// purpose: optional
        let purpose: String?
    }
}

public extension ACMOAIFineTunesResponse {
    /// Response model for training files
    struct TrainingFiles: Codable {
        /// id: optional
        let id: String?
        /// object: optional
        let object: String?
        /// bytes: optional
        let bytes: Int?
        /// created_at: optional
        let created_at: Int?
        /// filename: optional
        let filename: String?
        /// purpose: optional
        let purpose: String?
    }
}

public extension ACMOAIFineTunesResponse {
    /// Response model for list events data
    struct ListEventsData: Codable {
        /// object: optional
        let object: String?
        /// created_at: optional
        let created_at: Int?
        /// level: optional
        let level: String?
        /// message: optional
        let message: String?
    }
}
