require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
end
