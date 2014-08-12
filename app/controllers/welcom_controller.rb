class WelcomController < ApplicationController
  #this is a list of possible actions for the welcom controller
  def index
  	date_time = Time.now.strftime("%B %d, %Y, %A, %H:%M")
  	#special hash that stores session info
  	if !session['first_visit']
  		session['first_visit'] = date_time
  	end
  @dt_first_visit = session['first_visit']
  end
  def about
  end
  def site_map
  end
  def pics
  	@img_urls= {'pic1' => 'http://25.media.tumblr.com/tumblr_m38o6ueF8o1rob4iho1_1280.jpg'}
  end
end
