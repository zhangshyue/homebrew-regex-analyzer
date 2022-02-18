# homebrew-regexAnalyzer

## Installation
`brew install zhangshyue/regexanalyzer/regexAnalyzer`

When you first run `regex-analyzer [folder with regex files directoy]` you would get 
```
...: line 2: .../regexanalyzer/1.0.13/libexec/regex-analyzer: Permission denied
...: line 2: exec: .../regexanalyzer/1.0.13/libexec/regex-analyzer: cannot execute: Undefined error: 0
```
In order to solve this, enter `chmod u+x [.../regexanalyzer/1.0.13/libexec/regex-analyzer]` in the terminal. 

## Usage
`regex-analyzer [folder with regex files directoy]`

If you want to analyze how secure your regex is, run
`regex-analyzer [folder with regex files directoy] --security` 
