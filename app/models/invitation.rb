class Invitation < ActiveRecord::Base
  attr_accessible :clicked, :email, :name, :to_email, :to_name
end
