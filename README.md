# to_be.Ruby <!-- omit in toc -->

![Language](https://img.shields.io/badge/Ruby-CC342D?style=flat&logo=ruby&logoColor=white)
[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![GitHub release](https://img.shields.io/github/v/release/synesissoftware/to_be.Ruby.svg)](https://github.com/synesissoftware/to_be.Ruby/releases/latest)
[![Last Commit](https://img.shields.io/github/last-commit/synesissoftware/to_be.Ruby)](https://github.com/synesissoftware/to_be.Ruby/commits/master)
[![Gem Version](https://badge.fury.io/rb/to_be.svg)](https://badge.fury.io/rb/to_be)

Simple Ruby library determining whether strings indicate truey or falsy values.


## Introduction

**to-be** is a library providing facilities for determine whether the truthyness of strings. It implemented in several languages: **to_be.Rust** is the **Ruby** implementation.


## Table of Contents <!-- omit in toc -->

- [Introduction](#introduction)
- [Terminology](#terminology)
- [Installation](#installation)
- [Project Information](#project-information)
	- [Where to get help](#where-to-get-help)
	- [Contribution guidelines](#contribution-guidelines)
	- [Related projects](#related-projects)
	- [License](#license)


## Terminology

The term "*truthy*" is an unhelpfully overloaded term in the programming world, insofar as it is used to refer to the notion of "truthyness" - whether something can be _deemed to be_ interpretable as truth - and also the true side of that interpretation. In this library, the former interpretation is used, leaving us with the following terms:

* "*truthy*" - whether something can be can be _deemed to be_ interpretable as having truth;
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


## Project Information


### Where to get help

[GitHub Page](https://github.com/synesissoftware/to_be.Ruby "GitHub Page")


### Contribution guidelines

Defect reports, feature requests, and pull requests are welcome on https://github.com/synesissoftware/to_be.Ruby.


### Related projects

* [**to-be**](https://github.com/synesissoftware/to-be) (**C**);
* [**py2be**](https://github.com/synesissoftware/py2be) (**Python**);
* [**to-be.Rust**](https://github.com/synesissoftware/to-be.Rust);


### License

**to_be.Ruby** is released under the 3-clause BSD license. See LICENSE for details.


<!-- ########################### end of file ########################### -->

