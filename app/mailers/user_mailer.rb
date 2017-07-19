class UserMailer < ActionMailer::Base
    default from: "MortSubite <welcome@mortsubite.com>"

    def signup_email(user)
      @user = user
      @twitter_message = "#Shaving is evolving. Excited for @mortsubite to launch."

      mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
