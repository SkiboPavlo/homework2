# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # base class
  class Car
    attr_accessor :year, :color, :model, :current_speed

    def self.default_car
      new
    end

    def initialize(car_attributes)
      self.year = car_attributes[:year] || 2016
      self.color = car_attributes[:color] || 'red'
      self.model = car_attributes[:model] || 'impreza'
      self.current_speed = 0
    end

    def speed_up(faster)
      self.current_speed += faster
    end

    def push_break(lower)
      self.current_speed -= lower if @current_speed >= lower
    end
  end
end
