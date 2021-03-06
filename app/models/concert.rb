class Concert < ActiveRecord::Base
  validates :name, :start_date, :end_date, :price, :tickets_available, presence: true;

    has_many :purchases
    belongs_to :venue

    def tickets_remaining
      a = self.tickets_available
      b = self.purchases.sum(:ticket_quantity)
      return a-b
    end

    def tickets_percentage
      a = self.tickets_available
      b = tickets_remaining
      return (b.to_f / a.to_f) * 100
    end

end
