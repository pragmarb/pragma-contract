# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.1.1]

### Fixed

- Fixed `property` expecting two arguments

## [2.1.0]

### Added

- Implemented the ability to find records when coercing contracts

## [2.0.1]

### Fixed

- Added forwards compatibility with Dry::Types 0.13
- Locked Dry::Types to 0.12.x for compatibility with Dry::Validation
- Locked Dry::Validation to 0.11.x to prevent error with Dry::Validation.Form not being available

### Changed

- `Pragma::Contract::Coercion` is now loaded with `feature`

## [2.0.0]

First Pragma 2 release.

[Unreleased]: https://github.com/pragmarb/pragma-contract/compare/v2.1.1...HEAD
[2.1.1]: https://github.com/pragmarb/pragma-contract/compare/v2.1.0...v2.1.1
[2.1.0]: https://github.com/pragmarb/pragma-contract/compare/v2.0.1...v2.1.0
[2.0.1]: https://github.com/pragmarb/pragma-contract/compare/v2.0.0...v2.0.1
[2.0.0]: https://github.com/pragmarb/pragma-contract/compare/v0.1.0...v2.0.0
