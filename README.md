
![](https://img.shields.io/github/license/adamrushy/OpenAISwift)
[![](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)

# [Chat Defender Drop-in](https://chatdefender.com/)
# OpenAI API Client Library in Swift

This is a drop-in replacement for the "OpenAI API Client Library in Swift", as maintained by Adam Rushy
https://github.com/adamrushy/OpenAISwift

It includes minimal changes to make it compatible with Chat Defender.

[Chat Defender](https://chatdefender.com/) allows you to use the same API, but without exposing your OpenAPI key or prompts.

It also allows you to modify your prompts on the fly.

## Installation 💻

### Swift Package Manager (Preferred)

You can use Swift Package Manager to integrate the library by adding the following dependency in the `Package.swift` file or by adding it directly within Xcode.

`.Package(url: "https://github.com/Chat-Defender/OpenAISwift.git", majorVersion: 1)`

## Usage 🤩

For the most part, follow the instructions in the original project
https://github.com/adamrushy/OpenAISwift

Read the documentation at Chat Defender to move your prompts & key to Chat Defender

You can then use the slightly modified API below

### [Chat](https://platform.openai.com/docs/api-reference/chat)

Get responses to chat conversations through ChatGPT (aka GPT-3.5) and GPT-4 (in beta).

```swift
do {
    let chat: [ChatMessage] = [
            //'substitute_joke' is the key for a message with the prompt "Limit Prose: Please tell me a joke about ##subject##!"
            //'subject' is the subject for your new joke
            ChatMessage(role: .user,
                        cdContent: CDMessage(key: "substitute_joke",
                                             variables: ["subject" : subject])
                       )
    ]
                
    let result = try await openAI.sendChat(with: chat)
    // use result
} catch {
    // ...
}
```


### Endpoints

Initially only the chat endpoint is supported. 

I will be adding other endpoints rapidly. 

If you need any specific ones, then please [contact me](https://chatdefender.com/docs/getting_started)

## Contribute ❤️

Feel free to contribute improvements

## Licence 📥

The MIT License (MIT)

Copyright (c) 2022 Adam Rush

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
