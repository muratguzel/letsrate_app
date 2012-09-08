class Car < ActiveRecord::Base
  attr_accessible :brand, :model, :title
  letsrate_rateable "performance", "price", "beauty"

  def to_s
  	[brand, model].compact.join(', ')
  end



end
