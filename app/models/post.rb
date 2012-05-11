class Post < ActiveRecord::Base
  def to_param
    "#{id.to_s}-#{name.parameterize}"
  end
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
end
