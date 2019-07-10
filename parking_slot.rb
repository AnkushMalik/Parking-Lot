class ParkingSlot
    #ParkingSlot : for connecting cars and slots

    def initialize(slot_num)
        @slot_num = slot_num
    end

    attr_accessor :slot_num,  :car
end
