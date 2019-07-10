class Leave < Parent

    def execute(args=[])
        slot_num = args[0].to_i
        @controller.empty_parking_slot(slot_num)
    end
end