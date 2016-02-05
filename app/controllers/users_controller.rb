require 'net/http'
require 'net/https'
require 'uri'

class UsersController < ApplicationController
    layout false

    before_filter :skip_first_page, :only => :new

    def new
        @bodyId = 'home'
        @is_mobile = mobile_device?

        @user = User.new

        respond_to do |format|
            format.html # new.html.erb
        end
    end

    def create
        puts 'create ##############'
        auth = env["omniauth.auth"]

        email = params[:user][:email] rescue nil
        email = "#{auth.uid}@facebook.com" if auth

        url = nil
        # Get user to see if they have already signed up
        @user = User.find_by_email(email)

        # If user doesnt exist, make them, and attach referrer
        if @user.nil?

            # cur_ip = IpAddress.find_by_address(request.env['HTTP_X_FORWARDED_FOR'])

            # if !cur_ip
            #     cur_ip = IpAddress.create(
            #         :address => request.env['HTTP_X_FORWARDED_FOR'],
            #         :count => 0
            #     )
            # end

            # if cur_ip.count > 2
            #     return redirect_to root_path
            # else
            #     cur_ip.count = cur_ip.count + 1
            #     cur_ip.save
            # end

            @user = User.new(:email => email)

            @referred_by = User.find_by_referral_code(cookies[:h_ref])

            puts '------------'
            puts @referred_by.email if @referred_by
            puts email.inspect
            puts request.env['HTTP_X_FORWARDED_FOR'].inspect
            puts '------------'

            if !@referred_by.nil?
                @user.referrer = @referred_by
            end

            @user.save
        end

        # Send them over refer action
        respond_to do |format|

            if !@user.nil?
                cookies[:h_email] = { :value => @user.email }
                redirect_to url and return if url
                format.html { redirect_to '/refer-a-friend' }
            else
                format.html { redirect_to root_path, :alert => "Something went wrong!" }
            end
        end
    end

    def refer
        email = cookies[:h_email]

        @bodyId = 'refer'
        @is_mobile = mobile_device?

        @user = User.find_by_email(email)

        respond_to do |format|
            if !@user.nil?
                format.html #refer.html.erb
            else
                format.html { redirect_to root_path, :alert => "Something went wrong!" }
            end
        end
    end

    def policy

    end

    def redirect
        redirect_to root_path, :status => 404
    end

    private

    def skip_first_page
        if !Rails.application.config.ended
            email = cookies[:h_email]
            if email and !User.find_by_email(email).nil?
                redirect_to '/refer-a-friend'
            else
                cookies.delete :h_email
            end
        end
    end

    def post_emails email
      puts 'POSTING TO EMAIL LIST ######'

      params = {
        meta_web_form_id:'256425572',
        listname:'optionsbox',
        redirect: 'http://rubysg-demo.herokuapp.com/refer-a-friend',
        meta_redirect_onlist: 'http://rubysg-demo.herokuapp.com/refer-a-friend',
        meta_adtracking:'OptionsBox-2015',
        meta_message:'1',
        meta_required:'email',
        meta_tooltip:'email||Enter Email Here...',
        email: email
      }

      x = Net::HTTP.post_form(URI.parse('https://www.aweber.com/scripts/addlead.pl'), params)
      puts 'Getting here ###############'
      str = x.body
      p str

      url = str[/https:\/\/www.aweber.com\/form-captcha.+>here/]
      url = url.gsub('">here', '').gsub('&amp;', '&') if url

      return url
    end

end
