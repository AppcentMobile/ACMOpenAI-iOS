//
//  ACMOAIFineTunesRequest.swift
//

/// Request model for holding fine tunes endpoint
public enum ACMOAIFineTunesRequest {}

public extension ACMOAIFineTunesRequest {
    /// Request model for holding create
    struct Create {
        /// training_file: required*
        public var training_file: String
        /// validation_file: optional
        public var validation_file: String?
        /// model: optional
        public var model: String?
        /// n_epochs: optional
        public var n_epochs: Int?
        /// batch_size: optional
        public var batch_size: Int?
        /// learning_rate_multiplier: optional
        public var learning_rate_multiplier: Double?
        /// prompt_loss_weight: optional
        public var prompt_loss_weight: Double?
        /// compute_classification_metrics: optional
        public var compute_classification_metrics: Bool?
        /// classification_n_classes: optional
        public var classification_n_classes: Int?
        /// classification_positive_class: optional
        public var classification_positive_class: String?
        /// classification_betas: optional
        public var classification_betas: [String]?
        /// suffix: optional
        public var suffix: String?

        /// Init function for creating request
        init(training_file: String, validation_file: String? = nil, model: String? = nil, n_epochs: Int? = nil, batch_size: Int? = nil, learning_rate_multiplier: Double? = nil, prompt_loss_weight: Double? = nil, compute_classification_metrics: Bool? = nil, classification_n_classes: Int? = nil, classification_positive_class: String? = nil, classification_betas: [String]? = nil, suffix: String? = nil) {
            self.training_file = training_file
            self.validation_file = validation_file
            self.model = model
            self.n_epochs = n_epochs
            self.batch_size = batch_size
            self.learning_rate_multiplier = learning_rate_multiplier
            self.prompt_loss_weight = prompt_loss_weight
            self.compute_classification_metrics = compute_classification_metrics
            self.classification_n_classes = classification_n_classes
            self.classification_positive_class = classification_positive_class
            self.classification_betas = classification_betas
            self.suffix = suffix
        }
    }
}

public extension ACMOAIFineTunesRequest {
    /// Request model for holding retrieve
    struct Retrieve {
        /// fine_tune_id: required*
        public var fine_tune_id: String

        /// Init function for creating request
        init(fine_tune_id: String) {
            self.fine_tune_id = fine_tune_id
        }
    }
}

public extension ACMOAIFineTunesRequest {
    /// Request model for holding cancel
    struct Cancel {
        /// fine_tune_id: required*
        public var fine_tune_id: String

        /// Init function for creating request
        init(fine_tune_id: String) {
            self.fine_tune_id = fine_tune_id
        }
    }
}

public extension ACMOAIFineTunesRequest {
    /// Request model for holding list events
    struct ListEvents {
        /// fine_tune_id: required*
        public var fine_tune_id: String
        /// stream: optional
        public var stream: Bool?

        /// Init function for creating request
        init(fine_tune_id: String, stream: Bool? = nil) {
            self.fine_tune_id = fine_tune_id
            self.stream = stream
        }
    }
}

public extension ACMOAIFineTunesRequest {
    /// Request model for holding delete
    struct Delete {
        /// model: required*
        public var model: String

        /// Init function for creating request
        init(model: String) {
            self.model = model
        }
    }
}
