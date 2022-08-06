require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "should validate name" do
    cat = Cat.create(age:2, enjoys: 'baskin in the sun', image: 'https://files.slack.com/files-pri/T04B40L2C-F03SESP4PS7/happy_cat.jpeg')

    expect(cat.errors[:name]).to_not be_empty
  end

    it "should validate age" do
      cat = Cat.create(name: 'billy', enjoys: 'baskin in the sun', image: 'https://files.slack.com/files-pri/T04B40L2C-F03SESP4PS7/happy_cat.jpeg')
  
      expect(cat.errors[:age]).to_not be_empty
  end
end
