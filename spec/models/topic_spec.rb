require 'rails_helper'

RSpec.describe Topic, type: :model do
  it "topic requires description" do
    topic = Topic.create(:description => nil)
    expect(topic).to_not be_valid
  end

  it "topic requires title" do
    topic = Topic.create(:name => nil)
    expect(topic).to_not be_valid
  end

  it "topic requires description of atleast 2 characters" do
    topic = Topic.create(:description => "ab")
    expect(topic).to be_valid
  end
end
