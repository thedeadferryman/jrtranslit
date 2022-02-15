# frozen_string_literal: true

require 'spec_helper'

RSpec.describe JrTranslit do
  it 'defines a version' do
    expect(described_class.const_get(:VERSION)).not_to be nil
  end
end
