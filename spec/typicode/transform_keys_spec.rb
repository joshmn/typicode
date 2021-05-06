require 'spec_helper'

class FakeResource < Typicode::Resource
  transform_keys userId: :user_id,
                 potatoCake: :potato_cake
end

RSpec.describe FakeResource do
  let(:values) { {"userId" => 1, "potatoCake" => 'yum', "popsicle_stick" => "wood", "notTransformed" => "nope" } }
  let(:instance) { described_class.new(values) }

  context '#userId' do
    it 'is #user_id' do
      expect(instance.user_id).to eq(values['userId'])
    end

    it 'is not defined as userId' do
      expect(instance).to_not respond_to(:userId)
    end
  end

  context '#potatoCake' do
    it 'is #potato_cake' do
      expect(instance.potato_cake).to eq(values['potatoCake'])
    end

    it 'is not defined as userId' do
      expect(instance).to_not respond_to(:potatoCake)
    end
  end

  context '#notTransformed' do
    it 'is #notTransformed' do
      expect(instance.notTransformed).to eq(values['notTransformed'])
    end

    it 'is not defined as not_transformed' do
      expect(instance).to_not respond_to(:not_transformed)
    end
  end
end