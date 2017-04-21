class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :about, :contact]

  def home
  end

  def about
  end

  def contact
  end

  def forum
  end

  def chat
  end

  def professional_request
  end

  def vouchers
  end

  def admin_dashboard
    @profiles = Profile.all
  end
end
