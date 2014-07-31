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
    x = random.randint(1,640000)
    y = random.randint(1,640000)
    angle = random.randint(1,89)

    #note: rotates CCW so negative
    #  should it????
    anglerad = -radians(angle)

    inangle = degrees(atan(float(y)/x))
    outangle = inangle + angle

    xexp = x * cos(anglerad) + y * sin(anglerad)
    yexp = y * cos(anglerad) - x * sin(anglerad)

    print "Input:    x = {:7.2f}, y = {:7.2f}, angle = {:7.2f}, rot_angle = {:5.2f}".format(x,y,inangle,angle)
        
    print "Expected: x = {:7.2f}, y = {:7.2f}, angle = {:7.2f}".format(xexp,yexp,outangle)

    out = subprocess.check_output([filename,str(x),str(y),str(angle)])

    xout1=None
    yout1=None
    xout2=None
    yout2=None

    for line in out.split("\n"):
        if "1 X-value: " in line:
            xout1 = float(line.split(" ")[-1])
        if "1 Y-value: " in line:
            yout1 = float(line.split(" ")[-1])
        if "2 X-value: " in line:
            xout2 = float(line.split(" ")[-1])
        if "2 Y-value: " in line:
            yout2 = float(line.split(" ")[-1])

    pdiff_x1 = (xout1 - xexp)/xexp*100
    pdiff_y1 = (yout1 - yexp)/yexp*100

    pdiff_x2 = (xout2 - xexp)/xexp*100
    pdiff_y2 = (yout2 - yexp)/yexp*100
    
    print "1:        x = {:7.2f}, y = {:7.2f}, dx = {:5.2f}, dy = {:5.2f}".format(xout1,yout1,pdiff_x1,pdiff_y1)
    print "2:        x = {:7.2f}, y = {:7.2f}, dx = {:5.2f}, dy = {:5.2f}".format(xout2,yout2,pdiff_x2,pdiff_y2)
    print ""

    return (pdiff_x1, pdiff_y1, pdiff_x2, pdiff_y2)

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
    
    f = open(os.devnull, 'w')

  #  sys.stdout = f

    tx1 = 0; ty1 = 0; tx2 = 0; ty2 = 0;
    for i in xrange(numrand):
        (x1,y1,x2,y2) = do(exe)
        tx1 += abs(x1);
        ty1 += abs(y1);
        tx2 += abs(x2);
        ty2 += abs(y2);

   # sys.stdout = sys.__stdout__    

    tx1 /= numrand;
    ty1 /= numrand;
    tx2 /= numrand;
    ty2 /= numrand;
    print "Averages: x1 = {:5.2f}, y1 = {:5.2f}; x2 = {:5.2f}, y2 = {:5.2f}".format(tx1,ty1,tx2,ty2)
    
    f.close()

    return 0        # success
  
if __name__ == '__main__':
    status = main()
    sys.exit(status)
