require 'net/http'
require 'net/https'
require 'uri'

class UsersController < ApplicationController
	before_filter :skip_first_page, :only => :new

	def new
		@bodyId = 'home'
		@is_mobile = mobile_device?

		@user = User.new

		if params[:invite_id].present?
			invite = Invitation.find_by_id(params[:invite_id])
			invite.update_attributes clicked: true if invite
		end

		respond_to do |format|
			format.html # new.html.erb
		end
	end

	def create
		# Get user to see if they have already signed up
		@user = User.find_by_email(params[:user][:email]);

		# If user doesnt exist, make them, and attach referrer
		if @user.nil?

			cur_ip = IpAddress.find_by_address(request.env['HTTP_X_FORWARDED_FOR'])

			if !cur_ip
		    cur_ip = IpAddress.create(
		        :address => request.env['HTTP_X_FORWARDED_FOR'],
		        :count => 0
		    )
			end

			if cur_ip.count > 2
		    return redirect_to root_path
			else
		    cur_ip.count = cur_ip.count + 1
		    cur_ip.save
			end

			@user = User.new(:email => params[:user][:email])
			@referred_by = User.find_by_referral_code(cookies[:h_ref])

			if !@referred_by.nil?
				@user.referrer = @referred_by
			end

			@user.save
		end

		# Send them over refer action
		respond_to do |format|
			if !@user.nil?
				cookies[:h_email] = { :value => @user.email }
				format.html { redirect_to '/refer-a-friend' }
			else
				format.html { redirect_to root_path, :alert => "Something went wrong!" }
			end
		end
	end

	def refer
		email = cookies[:h_email]
		@user = User.find_by_email(email)

		init_refer_data

		@bodyId = 'refer'
		@is_mobile = mobile_device?

		respond_to do |format|
			if !@user.nil?
				format.html #refer.html.erb
			else
				format.html { redirect_to root_path, :alert => "Something went wrong!" }
			end
		end
	end

	def invite
		if params[:sender].present?
			sender = params[:sender]
			invite  = params[:invite]

			body = invite[:msg]
			subject = invite[:subject]

			email = cookies[:h_email]
			@user = User.find_by_email(email)

			invite[:to].each do |index, account|
				email = account[:email]
				name  = account[:name]

				unless email.blank?
					invitation = Invitation.create(email: sender[:email], name: sender[:name], to_email: email, to_name: name)
					UserMailer.invite(subject, body, email, name, @user, sender, invitation.id).deliver!
				end
			end

			redirect_to action: :refer and return
		end

		@bodyId = 'refer'
		respond_to do |format|
			format.html # new.html.erb
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

	def init_refer_data
		@referrals_count = @user.referrals.count
    @stops = User::REFERRAL_STEPS
    @found = nil

	  @stops.reverse_each { |stop|
	    if stop["count"] <= @referrals_count and !found
	      stop["selected"] = true
	      @found = stop
	    else
	      stop["selected"] = false
	    end
	   }

   @words = if @referrals_count == 1
		       		'friend has'
				   	elsif
			       'friends have'
				   	end
	end
end
