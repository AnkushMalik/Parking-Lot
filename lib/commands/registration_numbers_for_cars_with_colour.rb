class RegistrationNumbersForCarsWithColour < Parent

    def execute(args=[])
        colour = args[0]
        @controller.registration_numbers_for_cars_with_colour(colour)
    end
end
