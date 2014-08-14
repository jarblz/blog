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

  def set_name
    @user_name=params['user_name']
    session['user_name']=@user_name

  end
  
  def about 
    if !session['position']
      session['stuff_list']=["this","is","stuff"]
      session['sentance']=session['stuff_list'].join(" ")
      session['position']=0
      puts "pass1"
    elsif session['position']==0
      session['sentance']=session['stuff_list'][session['position']]
      session['position']+=1
    elsif session['position']==session['stuff_list'].length
      session['sentance'] = "Finished"
    else 
      session['sentance']=session['sentance']+" "+session['stuff_list'][session['position']]
      session['position']+=1
    end
    @message=session['sentance']
  end
  def site_map
  end
  def pics
  	@img_urls= {'pic1' => 'http://25.media.tumblr.com/tumblr_m38o6ueF8o1rob4iho1_1280.jpg'}
  end
end
