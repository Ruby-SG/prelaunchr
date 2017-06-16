class User < ActiveRecord::Base
	belongs_to :referrer, :class_name => "User", :foreign_key => "referrer_id"
	has_many :referrals, :class_name => "User", :foreign_key => "referrer_id"

	attr_accessible :email

	validates :email, :uniqueness => true, :format => { :with => /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/i, :message => "Invalid email format." }
	validates :referral_code, :uniqueness => true

	before_create :create_referral_code
	after_create :send_welcome_email

	REFERRAL_STEPS = [
		{
			'count' => 5,
			"html" => "1 Prayer Hammer eBook",
			"class" => "two",
			"image" =>  ActionController::Base.helpers.asset_path("refer/5.png")
		},
		{
			'count' => 10,
			"html" => "1 Prayer Hammer eBook<br/>+ 1 Prayer Eagle Badge (Red)",
			"class" => "three",
			"image" => ActionController::Base.helpers.asset_path("refer/10.png")
		},
		{
			'count' => 25,
			"html" => "1 Prayer Hammer eBook<br/>+ 2 Prayer Eagle Badges<br/>(Red & White)",
			"class" => "four",
			"image" => ActionController::Base.helpers.asset_path("refer/25.png")
		},
		{
			'count' => 50,
			"html" => "1 Prayer Hammer eBook<br/>+ 2 Prayer Eagle Badges<br/>(Red & White)<br/><b>+ 1 Year FREE Membership</b>",
			"class" => "five",
			"image" => ActionController::Base.helpers.asset_path("refer/50.png")
		}
	]

	private

	def create_referral_code
		referral_code = SecureRandom.hex(5)
		@collision = User.find_by_referral_code(referral_code)

		while !@collision.nil?
			referral_code = SecureRandom.hex(5)
			@collision = User.find_by_referral_code(referral_code)
		end

		self.referral_code = referral_code
	end

	def send_welcome_email
		UserMailer.signup_email(self)
	end
end
