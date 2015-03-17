require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presensce_of :content }
end
