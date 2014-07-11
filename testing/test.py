#!/usr/bin/env python
# encoding: utf-8
"""
test.py
"""
import os
import sys
import random
from math import radians, degrees, sin, cos, atan
import subprocess

def do(filename):
    x = random.randint(1,89)
    y = random.randint(1,89)
    angle = random.randint(1,89)

    #note: rotates CCW so negative
    #  should it????
    anglerad = -radians(angle)

    inangle = degrees(atan(float(y)/x))
    outangle = inangle + angle

    xexp = x * cos(anglerad) + y * sin(anglerad)
    yexp = y * cos(anglerad) - x * sin(anglerad)

    print "Input:    x = {:6.2f}, y = {:6.2f}, angle = {:6.2f}, rot_angle = {:.2f}".format(x,y,inangle,angle)
        
    print "Expected: x = {:6.2f}, y = {:6.2f}, angle = {:6.2f}".format(xexp,yexp,outangle)

    out = subprocess.check_output([filename,str(x),str(y),str(angle)])

    xout=None
    yout=None

    for line in out.split("\n"):
        if "Final X-value: " in line:
            xout = line.split(" ")[-1]
        if "Final Y-value: " in line:
            yout = line.split(" ")[-1]
    
    print "Received: x = {:6.2f}, y = {:6.2f}".format(float(xout),float(yout))

    print ""

def main():
    numrand = 100
    argv = sys.argv
    if len(argv) < 2:
        print ("Invalid arguments. Syntax:\n "+argv[0]+" executable [num iterations=100]")

    if len(argv) >=3:
        numrand = int(argv[2])

    exe = argv[1]

    if not os.path.isfile(exe):
        print "File",exe,"doesn't exist."
        return 1
    
    if not os.access(exe, os.X_OK):
        print "File",exe,"is not executable."
    
    for i in xrange(numrand):
        do(exe)


    return 0        # success
  
if __name__ == '__main__':
    status = main()
    sys.exit(status)
