# ACMOpenAI

ACMOpenAI is a library that help developers to use Open AI API easily.

[![GitHub tag](https://img.shields.io/github/tag/AppcentMobile/ACMOpenAI-iOS?include_prereleases=&sort=semver&color=blue)](https://github.com/AppcentMobile/ACMOpenAI-iOS/releases/)
[![License](https://img.shields.io/badge/License-Apache--2.0-blue)](#license)
[![issues - ACMOpenAI-iOS](https://img.shields.io/github/issues/AppcentMobile/ACMOpenAI-iOS)](https://github.com/AppcentMobile/ACMOpenAI-iOS/issues)

## Install

Via Cocoapods
```bash
pod 'ACMOpenAI'
```

Via SPM, add new package, search url below
```bash
https://github.com/AppcentMobile/ACMOpenAI-iOS
```

## Basic Usage

- Create plist file called ACMConfig
- Add these keys
```bash
baseURL (String)(without http(s))
isLogEnabled (Bool)
timeout (Number)
apiKey (String)
```

- Make request!
```bash
ACMOpenAI().manager(item: ACMOAIModelsManager.self)
.list { (response: ACMOAIModelsResponse.List) in
    print(response)
} onError: { error in
    print(error)
}
```

## Documentation

[![view - Documentation](https://img.shields.io/badge/view-Documentation-blue?style=for-the-badge)](https://acmoai-22632.web.app "Go to project documentation")
https://acmoai-22632.web.app

## License

 * Apache License 2.0 ([LICENCE-Apache-2.0](LICENCE) or https://opensource.org/license/apache-2-0/)

