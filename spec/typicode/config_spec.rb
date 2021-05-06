require 'spec_helper'

RSpec.describe Typicode::Config do
  context '#endpoint' do
    it 'is nil by default' do
      expect(described_class.new.endpoint).to be_nil
    end

    it 'is writable' do
      expect(described_class.new).to respond_to(:endpoint=)
    end

    it 'is readable' do
      expect(described_class.new).to respond_to(:endpoint)
    end
  end

  context '#api_key' do
    it 'is nil by default' do
      expect(described_class.new.api_key).to be_nil
    end

    it 'is writable' do
      expect(described_class.new).to respond_to(:api_key=)
    end

    it 'is readable' do
      expect(described_class.new).to respond_to(:api_key)
    end
  end
end