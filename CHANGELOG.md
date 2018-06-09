# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.1]

### Fixed

- Fixed Dry::Types 0.13 breaking coercion
- Locked Dry::Validation to 0.11.x to prevent error with Dry::Validation.Form not being available

### Changed

- `Pragma::Contract::Coercion` is now loaded with `feature`

## [2.0.0]

First Pragma 2 release.

[Unreleased]: https://github.com/pragmarb/pragma-contract/compare/v2.0.1...HEAD
[2.0.1]: https://github.com/pragmarb/pragma-contract/compare/v2.0.0...v2.0.1
[2.0.0]: https://github.com/pragmarb/pragma-contract/compare/v0.1.0...v2.0.0