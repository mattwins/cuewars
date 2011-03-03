class MainController < ActionController::Base
  protect_from_forgery
  
  layout 'application'

  def index
  end
  
  def about
  end
  
  def players
    @player = Player.all
  end
  
  def league
    @leagues = League.all
  end
  
  def contact
  end
end