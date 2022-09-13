class Book < ApplicationRecord
  validates :title, presence: true
end

class Book < ApplicationRecord
  validates :author, presence: true
end

class Book < ApplicationRecord
  validates :price, presence: true
end

class Book < ApplicationRecord
  validates :date_published, presence: true
end