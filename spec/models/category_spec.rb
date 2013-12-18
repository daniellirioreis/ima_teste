require 'spec_helper'

describe Category do
  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of(:name)}

    it "when name is too long" do
      subject.name = "a" * 31
      expect(subject).to have(1).error_on(:name)
    end
  end
end
