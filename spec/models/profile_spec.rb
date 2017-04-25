require 'rails_helper'

RSpec.describe Profile, type: :model do

  it "profile requires a username" do
    profile = Profile.create(:username => nil)
    expect(profile).to_not be_valid
  end

  it "profile requires a username" do
    profile = Profile.create(:username =>"Bob")
    expect(profile).to be_valid
  end

  it "profile requires a name" do
    profile = Profile.create(:name => nil)
    expect(profile).to_not be_valid
  end

  it "profile requires a name" do
    profile = Profile.create(:name =>"Lisa")
    expect(profile).to be_valid
  end

end
