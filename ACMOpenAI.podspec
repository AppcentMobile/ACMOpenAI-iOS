Pod::Spec.new do |spec|
    spec.name         = "ACMOpenAI"
    spec.version      = "1.0.0"
    spec.summary      = "ACMOpenAI iOS Library"
    spec.description  = <<-DESC
            ACMOpenAI is a library that help developers to use Open AI API easily.
                     DESC

    spec.homepage     = "https://github.com/AppcentMobile/ACMOpenAI-iOS"  
    spec.license      = { :type => "Apache License, Version 2.0", :file => "LICENCE" }  
    spec.author       = "burak"
    spec.platform     = :ios
    spec.ios.deployment_target  = '13.0'
    spec.swift_version = '5.0'  
    spec.source       = { :git => "https://github.com/AppcentMobile/ACMOpenAI-iOS.git", :tag => "#{spec.version}" }
    spec.source_files  = "Sources/**/*.{h,m,swift}"
    spec.dependency 'ACMNetworking', '~> 1.1.3'
  end
