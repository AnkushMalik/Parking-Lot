class SlotNumbersForCarsWithColour < Parent

    def execute(args=[])
        colour = args[0]
        @controller.slot_numbers_for_cars_with_colour(colour)
    end

end
