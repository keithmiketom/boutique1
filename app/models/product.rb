class Product < ActiveRecord::Base
  attr_accessible :category, :description, :designer, :name, :price

  def self.search(search_query, search_by)
    if search_query
      find(:all,:conditions => ["#{search_by} LIKE ?", "%#{search_query}%"])
    else
      find(:all)
    end
  end
end