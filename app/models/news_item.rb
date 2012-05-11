class NewsItem < ActiveRecord::Base
  def to_param
    "#{id.to_s}-#{title.parameterize}"
  end
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  validates :author, :presence => true,
                    :length => { :minimum => 2 }
  validates :content, :presence => true,
                    :length => { :minimum => 1 }
  validates :timestamp, :presence => true
end
