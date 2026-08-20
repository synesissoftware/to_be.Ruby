# to_be.Ruby - Changes <!-- omit in toc -->


## 0.0.3 - 20th August 2026

* **EXAMPLES.md** example links are repo-relative (`./examples/…`); added **examples/classify_strings**;
* reordered **README.md** (tagline before badges; TOC after badges), added **Components**, **Examples**, and **Dependencies** (Efferent / Afferent); dropped GitHub-release badge; lexicographically sorted related-project lists;
* expanded **to_be.gemspec** `spec.summary` to the README tagline; packaged **AUTHORS**, **CHANGES**, **CONTRIBUTING**, **EXAMPLES**, **FAQ**, **INSTALL**, **NEWS**, **SECURITY**, and **TODO**;
* **to_be.gemspec**: `required_ruby_version` is the range `>= 1.9.3` (dropped `< 4`); **Gemfile.lock** and **.ruby-version** excluded from `spec.files`;
* stop tracking **Gemfile.lock**; **Gemfile** sets `lockfile false` when Bundler supports it; CI uses `bundler-cache: false` because Bundler 4 then writes no lockfile and **ruby/setup-ruby** cache cats **Gemfile.lock**;
* CI **Warnings** job now runs on Ruby **3.4**;
* updated **run_all_unit_tests.sh** (from https://github.com/synesissoftware/misc-dev-scripts) to skip **tput** when **$TERM** is unset or stdout is not a TTY;
* library source **Home:** URL now uses `https`;
* **README.md**: Installation before Terminology; Terminology is definitions only (worked examples live in **EXAMPLES.md**); removed duplicated "can be"; **xqsr3** development-dep link is the GitHub project URL;


## 0.0.2 - 1st September 2025

* added `# frozen_string_literal: true` to all **lib/** sources;
* GitHub Actions;
* added **Rakefile**;
* badges;
* **.gitattributes**;
* updated **run_all_unit_tests.sh** (from https://github.com/synesissoftware/misc-dev-scripts);


## 0.0.1 - 11th August 2025

* initial version;


<!-- ########################### end of file ########################### -->
