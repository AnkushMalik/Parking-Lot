class SlotNumberForRegistrationNumber < Parent

    def execute(args=[])
        reg_num = args[0]
        @controller.slot_number_for_registration_number(reg_num)
    end

end
