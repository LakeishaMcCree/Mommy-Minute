class Blog < ApplicationRecord

    validates_presence_of :title, :content, :published_date

    scope :published, -> { where.not(published_date: nil) }
    scope :recent_published_blogs, -> { self.published.where("published_date > ?", 5.days.ago) }
    scope :not_published, -> { where(published_date: nil) }
    scope :sorted_published_blogs, -> { self.published.order(published_date: :desc) }
    scope :sorted_non_published_blogs, -> { self.non_published.order(published_date: :desc) }

    scope :search, -> (term) { self.published.where("title LIKE ?", "%#{term}%")}

end
