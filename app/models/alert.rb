class Alert < ActiveRecord::Base
  has_and_belongs_to_many :alert_methods
  has_and_belongs_to_many :audiences
  has_and_belongs_to_many :sendbacks
end
