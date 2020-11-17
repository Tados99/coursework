class HomeController < ApplicationController
  def home
  end

  def fixture_setup
  end

  def fixtures
  end

  def player_profile
  end

  def player_setup
  end

  def setup
  end

  def standings
  end

  def team_setup
  end

  def team
  end

  def teams
  end

  def contact
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    message = params[:message]

    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    elsif name.blank?
      flash[:alert] = I18n.t('home.request_contact.no_name')
    elsif message.blank?
      flash[:alert] = I18n.t('home.request_contact.no_message')
    else
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    redirect_to root_path
  end
end
