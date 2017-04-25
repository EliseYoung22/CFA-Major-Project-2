require 'rails_helper'

RSpec.describe Post, type: :model do

  it "post requires content" do
    post = Post.create(:content => nil)
    expect(post).to_not be_valid
  end

  it "post requires title" do
    post = Post.create(:title => nil)
    expect(post).to_not be_valid
  end

  it "post requires title of atleast 2 characters" do
    post = Post.create(:title => "a")
    expect(post).to_not be_valid
  end

  it "post requires title of atleast 2 characters" do
    post = Post.create(:title => "ab")
    expect(post).to be_valid
  end

end
