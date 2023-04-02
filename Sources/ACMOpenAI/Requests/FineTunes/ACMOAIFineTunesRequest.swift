//
//  ACMOAIFineTunesRequest.swift
//

public enum ACMOAIFineTunesRequest {}

public extension ACMOAIFineTunesRequest {
    struct Create {
        public var training_file: String
        public var validation_file: String?
        public var model: String?
        public var n_epochs: Int?
        public var batch_size: Int?
        public var learning_rate_multiplier: Double?
        public var prompt_loss_weight: Double?
        public var compute_classification_metrics: Bool?
        public var classification_n_classes: Int?
        public var classification_positive_class: String?
        public var classification_betas: [String]?
        public var suffix: String?

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
    struct Retrieve {
        public var fine_tune_id: String

        init(fine_tune_id: String) {
            self.fine_tune_id = fine_tune_id
        }
    }
}

public extension ACMOAIFineTunesRequest {
    struct Cancel {
        public var fine_tune_id: String

        init(fine_tune_id: String) {
            self.fine_tune_id = fine_tune_id
        }
    }
}

public extension ACMOAIFineTunesRequest {
    struct ListEvents {
        public var fine_tune_id: String
        public var stream: Bool?

        init(fine_tune_id: String, stream: Bool? = nil) {
            self.fine_tune_id = fine_tune_id
            self.stream = stream
        }
    }
}

public extension ACMOAIFineTunesRequest {
    struct Delete {
        public var model: String

        init(model: String) {
            self.model = model
        }
    }
}
