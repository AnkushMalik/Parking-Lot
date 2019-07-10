class Park < Parent
    
    def execute(args=[])
        reg_number = args[0]
        colour = args[1]
        @controller.create_car_and_park(reg_number, colour)
    end
end
  