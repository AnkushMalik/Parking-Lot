# ParkingLot v1.4.2

Name : Ankush Malik <br>
Language : Ruby

---

## To run the cli app :

- run the following command for Interactive mode :

> bin/parking_lot

- run the following command for File input mode:

> bin/parking_lot path_to_input_file.txt

^ for test purpose you can substitute path_to_input_file.txt with input.txt

for input :

```
create_parking_lot 6
park KA-01-HH-1234 White
park KA-01-HH-9999 White
park KA-01-BB-0001 Black
park KA-01-HH-7777 Red
park KA-01-HH-2701 Blue
park KA-01-HH-3141 Black
leave 4
status
park KA-01-P-333 White
park DL-12-AA-9999 White
registration_numbers_for_cars_with_colour White
slot_numbers_for_cars_with_colour White
slot_number_for_registration_number KA-01-HH-3141
slot_number_for_registration_number MH-04-AY-1111
```

expected output :

```
Created a parking lot with 6 slots
Allocated slot number: 1
Allocated slot number: 2
Allocated slot number: 3
Allocated slot number: 4
Allocated slot number: 5
Allocated slot number: 6
Slot number 4 is free
Slot No.  Registration No
1         KA-01-HH-1234
2         KA-01-HH-9999
3         KA-01-BB-0001
5         KA-01-HH-2701
6         KA-01-HH-3141
Allocated slot number: 4
Sorry, parking lot is full
KA-01-HH-1234, KA-01-HH-9999, KA-01-P-333
1, 2, 4
6
Not found
```
