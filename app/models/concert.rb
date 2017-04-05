class Concert < ActiveRecord::Base
  validates :name, :start_date, :end_date, :price, :tickets_available, presence: true;



  has_many :purchases

  belongs_to :venue

end
