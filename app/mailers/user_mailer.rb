class UserMailer < ActionMailer::Base
    default from: "Spousewell <welcome@spousewell.com>"

    def signup_email(user)
        @user = user
        @twitter_message = "#Shaving is evolving. Excited for @spousewell to launch."

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end

    def invite(subject, body, email, name, user, sender)
        @body = body
        @name = name
        @user = user

        mail(:to => email, :subject => subject, from: "#{sender[:name]} <#{sender[:email]}>")
    end
end
