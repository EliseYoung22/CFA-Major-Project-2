require 'rails_helper'

RSpec.describe Post, type: :model do

  it "post requires content" do
    post = Post.create(:content => nil)
    expect(post).to_not be_valid
  end

end
