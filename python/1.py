formatter = "%r %r %r %r"

print formatter % (1, 2, 3, 4)
print formatter % ("one", "two", "three", "four")
print formatter % (True, True, False, True)
print formatter % (
    "I had this thing.",
    "That you could type up right",
    "But it didn't sing",
    "So I went to bed.")
print formatter % (formatter, formatter, formatter, formatter)
print formatter % (
    "The next morning,",
    "I woke up with a bright flash,",
    "I noticed that what I've typed,",
    "Had jumped into my bed")