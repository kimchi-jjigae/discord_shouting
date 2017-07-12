#!/usr/bin/python3
import random

digits = {
    '1': ":one: ",
    '2': ":two: ",
    '3': ":three: ",
    '4': ":four: ",
    '5': ":five: ",
    '6': ":six: ",
    '7': ":seven: ",
    '8': ":eight: ",
    '9': ":nine: ",
    '0': ":zero: ",
}
special_alpha = {
    'a': ":a: ",
    'b': ":b: ",
    'o': ":o2: ",
}

boring_string = input("hej: ")
boring_string = boring_string.lower()
loud_string = ""
for s in boring_string:
    if(s.isdigit()):
        plopp = digits[s]
    elif(s.isalpha()):
        plopp = ":regional_indicator_%s: " % s
        if(s in special_alpha):
            if(random.random() < 0.333333333333333333333333333333333333333333333333):
                plopp = special_alpha[s]
    elif(s is " "):
        plopp = "   "
    elif(s is "?"):
        plopp = ":question: "
    elif(s is "!"):
        plopp = ":exclamation: "
    elif(s is "."):
        plopp = ":record_button: "
    elif(s is "-"):
        plopp = ":heavy_minus_sign: "
    else:
        plopp = ""
    loud_string = loud_string + plopp

print(loud_string)
