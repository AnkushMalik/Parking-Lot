# Controller supervises/handles all the process taking place in the parking_lot app
class Controller

    def initialize
        @parking_lot_size = 0
        @parking_slots = [] #Array for parking slots in parkingLot
    end

    def create_parking_lot(size)
        @parking_lot_size = size
        size.to_i.times do |i|
            @parking_slots << ParkingSlot.new(i+1)
        end
        puts "Created a parking lot with #{size} slots"
    end

    def create_car_and_park(reg_num, colour)
        car = Car.new(reg_num, colour)
        slot = @parking_slots.find{|slot| slot.car.nil?} #first nil slot
    
        return puts 'Sorry, parking lot is full' if slot.nil?
    
        puts "Allocated slot number: #{slot.slot_num}"
        slot.car = car
        car.parking_slot = slot
    end

    def empty_parking_slot(slot_num)
        puts "Slot number #{slot_num} is free"
        @parking_slots[slot_num-1] = ParkingSlot.new(slot_num)
    end

    def status
        puts 'Slot No. Registration No. Colour'
        @parking_slots.each do |slot|
          unless slot.car.nil?
            puts "#{slot.slot_num} \t #{slot.car.reg_num} \t #{slot.car.colour}"
          end
        end
      end
  end
  