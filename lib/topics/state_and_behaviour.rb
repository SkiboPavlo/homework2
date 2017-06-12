# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # base class
  class Car
    attr_accessor :year, :color, :model, :current_speed
    YEAR = 2016
    COLOR = 'red'
    MODEL = 'impreza'

    def self.default_car
      new
    end

    def initialize(car_attributes)
      @year = car_attributes.fetch(:year, YEAR)
      @color = car_attributes.fetch(:color, COLOR)
      @model = car_attributes.fetch(:model, MODEL)
      @current_speed = 0
    end

    def speed_up(faster)
      self.current_speed += faster
    end

    def push_break(lower)
      self.current_speed -= lower if @current_speed >= lower
    end
  end
end
