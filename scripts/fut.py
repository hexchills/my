#!/bin/python3
#!/bin/bash
import sys
import pandas as pd

POS = float(sys.argv[1])
SIDE = sys.argv[2]

if SIDE == "-l":
    long = ((POS * 0.19) / 100 + POS)
    long1 = str(long)
    long2 = long1[0:7]
    print(long2)
    df=pd.DataFrame([long2])
    df.to_clipboard(index=False,header=False)
elif SIDE == "-s":
    short = ((POS * 0.19) / 100 - POS)
    short1 = str(short)
    short2 = short1[1:8]
    print(short2)
    df1=pd.DataFrame([short2])
    df1.to_clipboard(index=False,header=False)
