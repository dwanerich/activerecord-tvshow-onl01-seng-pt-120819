class Show < ActiveRecord::Base
  
  def self.highest_rating
  Show.maximum(:rating)
  end
  
  def self.most_popular_show
    Show.all.where("rating = ?", 9)
  end
  
  def self.lowest_rating
    Show.minimum(:rating)
  end
  
  def self.least_popular_show
    Show.where("rating = ?", 1)
  end
  
  def ratings_sum
    self.sum(:rating)
  end
  
  def self.popular_shows
    Show.where("rating > ?", 5)
  end
  
  def self.shows_by_alphabetical_order
    Show.all.sort
  end
end