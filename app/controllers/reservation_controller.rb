class ReservationController < ApplicationController

  skip_before_action :verify_authenticity_token

  layout 'frontend'

  def confirm
    render "/reservation/review"
  end

  def review
  end

  def review_post
    redirect_to '/reservation/confirm'
  end

  def search
  end

  def view
  end

end
