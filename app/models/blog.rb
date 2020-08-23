class Blog < ApplicationRecord

    validates_presence_of :title, :content, :published_date

    scope :published, -> { where.not(published_date: nil) }
    scope :recent_published_blogs, -> { self.published.where("published_date > ?", 5.days.ago) }
    scope :not_published, -> 
    
    def self.recent_published_blogs
        
    end
end
