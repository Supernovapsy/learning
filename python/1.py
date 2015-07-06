def cheese_and_crackers(cheese_count, boxes_of_crackers):
    print "You have %d cheeses or %02X cheeses!" % (cheese_count, cheese_count)
    print "You have %d boxes of crackers!" % boxes_of_crackers
    print "Man that's enough for a party!"
    print "Get a blanket.\n"

print "We can just give the function numbers directly:"
#cheese_and_crackers(int(raw_input("# of cheese: ")), int(raw_input("boxes of crackers: ")))

cheese_count = 20
boxes_of_crackers = 30
cheese_and_crackers(cheese_count, boxes_of_crackers)