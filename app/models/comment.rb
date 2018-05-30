class Comment < ApplicationRecord
  before_save :check_author
  belongs_to :item

  def check_author
    if self.author.blank?
      self.author = 'anon'
    end
  end

  def self.test
    Comment.find_by_sql("
    SELECT AVG(rating)
    FROM comments
    ")
  end
  
end