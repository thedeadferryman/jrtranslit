# frozen_string_literal: true

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Author: Karl F. Meinkopf, 2022
#

require 'bundler/gem_tasks'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new(:lint)

task default: %i[lint spec]

require 'jars/installer'

namespace :jars do
  desc 'Installs jar dependencier'
  task :vendor do
    Jars::Installer.vendor_jars!
  end
end
