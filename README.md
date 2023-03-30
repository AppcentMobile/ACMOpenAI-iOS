# ACMOpenAI

ACMOpenAI is a library that help developers to use Open AI Api easily.

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
ACMOAIModelsManager().list { (response: ACMOAIModelsResponse.List) in
                print(response)
            } onError: { error in
                print(error)
            }
```

## Example Project

Coming Soon

## Documentation

Coming Soon

## License

 * Apache License 2.0 ([LICENCE-Apache-2.0](LICENCE) or https://opensource.org/license/apache-2-0/)

