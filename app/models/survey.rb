class Survey < ActiveRecord::Base
	has_many :questions, :dependent => :destroy
	accepts_nested_attributes_for :questions, :reject_if => lambda { |q| q[:content].blank? }, :allow_destroy => "true"
end
