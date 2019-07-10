class CreateParkingLot < Parent

    def execute(args = [])
        size = args[0]
        @controller.create_parking_lot(size)
    end
end
  