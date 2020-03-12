class Show < ActiveRecord::Base
  
#   def self.highest_rating
#   Show.maximum(:rating)
#   end
  
#   def self.most_popular_show
#     self.where("rating = ?", maximum)
#   end
  
#   def self.lowest_rating
#     Show.minimum(:rating)
#   end
  
#   def self.least_popular_show
#     self.where("rating = ?", 0)
#   end
  
#   def self.ratings_sum
#     self.sum(:rating)
#   end
  
#   def self.popular_shows
#     self.where("rating > ?", 5)
#   end
  
#   def self.shows_by_alphabetical_order
#     # Show.all.sort
#   end
# end

def Show::highest_rating
    Show.maximum("rating")
  end

  def Show::most_popular_show
    Show.order(rating: :desc).first
  end

  def Show::lowest_rating
    Show.minimum("rating")
  end

  def Show::least_popular_show
    Show.order(rating: :asc).first
  end

  def Show::ratings_sum
    Show.sum("rating")
  end

  def Show::popular_shows
    Show.where("rating > 5")
  end

  def Show::shows_by_alphabetical_order
    Show.order(name: :asc)
  end
end