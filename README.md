# to_be.Ruby <!-- omit in toc -->

Simple Ruby library determining whether strings indicate truey or falsey values.

![Language](https://img.shields.io/badge/Ruby-CC342D?style=flat&logo=ruby&logoColor=white)
[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![Gem Version](https://badge.fury.io/rb/to_be.svg)](https://badge.fury.io/rb/to_be)
[![Last Commit](https://img.shields.io/github/last-commit/synesissoftware/to_be.Ruby)](https://github.com/synesissoftware/to_be.Ruby/commits/master)
[![Ruby](https://github.com/synesissoftware/to_be.Ruby/actions/workflows/ruby.yml/badge.svg)](https://github.com/synesissoftware/to_be.Ruby/actions/workflows/ruby.yml)


## Table of Contents <!-- omit in toc -->

- [Introduction](#introduction)
- [Installation](#installation)
- [Components](#components)
- [Terminology](#terminology)
- [Examples](#examples)
- [Project Information](#project-information)
  - [Where to get help](#where-to-get-help)
  - [Contribution guidelines](#contribution-guidelines)
  - [Dependencies](#dependencies)
    - [Efferent (fan-out)](#efferent-fan-out)
      - [Runtime Dependencies (aka "Normal Dependencies")](#runtime-dependencies-aka-normal-dependencies)
      - [Development Dependencies](#development-dependencies)
    - [Afferent (fan-in)](#afferent-fan-in)
      - [Runtime dependents](#runtime-dependents)
      - [Development dependents](#development-dependents)
  - [Related projects](#related-projects)
  - [License](#license)


## Introduction

**to-be** is a library providing facilities for determining the truthiness of strings. It is implemented in several languages: **to_be.Ruby** is the **Ruby** implementation.

It has **no dependencies** on any other non-standard library.


## Installation

Install via **gem** as in:

```
gem install to_be
```

or add it to your `Gemfile`.

Use via **require**, as in:

```Ruby
require 'to_be'
```


## Components

**to_be.Ruby** provides:

* module functions `ToBe.string_falsey?`, `ToBe.string_truey?`, and `ToBe.string_truthy?`;
* **String** extensions `#falsey?`, `#truey?`, and `#truthy?` via `require 'to_be/extensions/string'`;


## Terminology

The term "*truthy*" is an unhelpfully overloaded term in the programming world, insofar as it is used to refer to the notion of "truthiness" - whether something can be _deemed to be_ interpretable as truth - and also the true side of that interpretation. In this library, the former interpretation is used, leaving us with the following terms:

* "*truthy*" - whether something can be _deemed to be_ interpretable as having truth;
* "*falsey*" - whether an object can be _deemed to be_ interpretable as being false;
* "*truey*" - whether an object can be _deemed to be_ interpretable as being true;

For example, consider the following **Ruby** program:

```Ruby
require 'to_be'

s1 = "no"
s2 = "True"
s3 = "orange"

# "no" is validly truthy, and is falsey
ToBe.string_falsey?(s1) # => true
ToBe.string_truey?(s1) # => false
ToBe.string_truthy?(s1) # => true

# "True" is validly truthy, and is truey
ToBe.string_falsey?(s2) # => false
ToBe.string_truey?(s2) # => true
ToBe.string_truthy?(s2) # => true

# "orange" is not validly truthy, and is neither falsey nor truey
ToBe.string_falsey?(s3) # => false
ToBe.string_truey?(s3) # => false
ToBe.string_truthy?(s3) # => false
```

and, if extensions are used, the following **Ruby** program:

```Ruby
require 'to_be/extensions/string'

s1 = "no"
s2 = "True"
s3 = "orange"

# "no" is validly truthy, and is falsey
s1.falsey? # => true
s1.truey? # => false
s1.truthy? # => true

# "True" is validly truthy, and is truey
s2.falsey? # => false
s2.truey? # => true
s2.truthy? # => true

# "orange" is not validly truthy, and is neither falsey nor truey
s3.falsey? # => false
s3.truey? # => false
s3.truthy? # => false
```


## Examples

Examples are provided in the ```examples``` directory, along with a markdown description for each. A detailed list TOC of them is provided in [EXAMPLES.md](./EXAMPLES.md).


## Project Information


### Where to get help

[GitHub Page](https://github.com/synesissoftware/to_be.Ruby "GitHub Page")


### Contribution guidelines

Defect reports, feature requests, and pull requests are welcome on https://github.com/synesissoftware/to_be.Ruby.


### Dependencies


#### Efferent (fan-out)

Libraries upon which **to_be.Ruby** depends:


##### Runtime Dependencies (aka "Normal Dependencies")

* \<none>;


##### Development Dependencies

* [**rake**](https://rubygems.org/gems/rake);
* [**test-unit**](https://rubygems.org/gems/test-unit);
* [**xqsr3**](https://github.com/synesissoftware/xqsr3);


#### Afferent (fan-in)

Projects that depend on **to_be.Ruby**:


##### Runtime dependents

* \<none>;


##### Development dependents

* \<none>;


### Related projects

* [**py2be**](https://github.com/synesissoftware/py2be) (**Python**);
* [**to-be**](https://github.com/synesissoftware/to-be) (**C**);
* [**to-be.Go**](https://github.com/synesissoftware/to-be.Go);
* [**to-be.Rust**](https://github.com/synesissoftware/to-be.Rust);


### License

**to_be.Ruby** is released under the 3-clause BSD license. See [LICENSE](./LICENSE) for details.


<!-- ########################### end of file ########################### -->
