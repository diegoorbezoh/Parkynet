class FrontendController < ApplicationController

  skip_before_action :verify_authenticity_token

  layout 'frontend'

  def contact
    render "/contact"
  end

  def index
    render "/index"
  end

  def login
    render "/login"
  end

  def login_validation
    user_email = params[:user_email]
    user_password = params[:user_password]

    @message = ''
    login_status = 0

    if user_email === 'test@test.com'
      if user_password === 'test'
        login_status = 1
      else
        @message = 'Contraseña incorrecta.'
      end
    else
      @message = 'Email no registrado.'
    end

    if login_status === 0
      render "/login"
    else
      redirect_to '/reservation/view'
    end
  end

  def register
    render "/register"
  end

  def register_post
    render "/register"
  end

  def feedback_view
    render "/feedback/view"
  end

end
