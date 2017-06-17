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
			'count' => 3,
			"html" => "Free<br>Desert",
			"class" => "two",
			"image" =>  ActionController::Base.helpers.asset_path("refer/cream-tooltip@2x.png")
		},
		{
			'count' => 6,
			"html" => "Free mini Puccia",
			"class" => "three",
			"image" => ActionController::Base.helpers.asset_path("refer/truman@2x.png")
		},
		{
			'count' => 9,
			"html" => "Free pizza & Desert",
			"class" => "four",
			"image" => ActionController::Base.helpers.asset_path("refer/winston@2x.png")
		},
		{
			'count' => 12,
			"html" => "$25 gift card!",
			"class" => "five",
			"image" => ActionController::Base.helpers.asset_path("refer/blade-explain@2x.png")
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
		# UserMailer.signup_email(self)
	end
end
