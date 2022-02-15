# frozen_string_literal: true

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Author: Karl F. Meinkopf, 2022
#

require_relative 'lib/jrtranslit/version'

REPO_URI = 'https://github.com/thedeadferryman/jrtranslit'

Gem::Specification.new do |spec|
  spec.name = 'jrtranslit'
  spec.version = JrTranslit::VERSION
  spec.authors = ['Karl F. Meinkopf']
  spec.email = ['k.meinkopf@gmail.com']

  spec.summary = 'A JRuby transliteration library built on ICU4J'
  spec.homepage = REPO_URI
  spec.license = 'MPL-2.0'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = REPO_URI
  spec.metadata['source_code_uri'] = REPO_URI
  spec.metadata['changelog_uri'] = "#{REPO_URI}/commits"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.requirements << 'jar com.ibm.icu:icu4j, 70.1'

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
