class Post < ActiveRecord::Base
  def to_param
    "#{id.to_s}-#{title.parameterize}"
  end
  validates :author,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
end
