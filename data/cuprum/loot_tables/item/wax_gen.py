import glob
import json
import os

lis = glob.glob("*copy.json")

for name in lis:
	obj = {}
	with open(name,'r') as file:
		obj = json.load(file)
		file.close()
	os.remove(name)
	nname = "waxed_"+name.replace(" copy","")
	with open(nname,"w") as nfile:
		json.dump(obj,nfile)
		nfile.close()