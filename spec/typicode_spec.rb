RSpec.describe Typicode do
  it "has a version number" do
    expect(Typicode::VERSION).not_to be nil
  end

  context '.config' do
    it 'is an instance of Config' do
      expect(Typicode.config).to be_an_instance_of(Typicode::Config)
    end
  end
end
