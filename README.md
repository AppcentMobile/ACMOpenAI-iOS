# ACMOpenAI

ACMOpenAI is an unofficial library that help developers to use Open AI API easily.

[![GitHub tag](https://img.shields.io/github/tag/AppcentMobile/ACMOpenAI-iOS?sort=semver&color=blue)](https://github.com/AppcentMobile/ACMOpenAI-iOS/releases/)
[![License](https://img.shields.io/github/license/AppcentMobile/ACMOpenAI-iOS)](#license)
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
organization (String|Optional)
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

## License

 * MIT ([LICENCE-Mit](LICENCE) or https://opensource.org/license/mit/)
