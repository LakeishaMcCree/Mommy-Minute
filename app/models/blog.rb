class Blog < ApplicationRecord

    validates_presence_of :title, :content, :published_date
end
