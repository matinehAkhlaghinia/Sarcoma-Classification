# This script is used to tile a certain number of whole slide images.

import subprocess
import os
from os.path import join
from tqdm import tqdm

PATH_TO_SLIDES = '/home/zcabmak/Scratch/Florian'

files = sorted(os.listdir(PATH_TO_SLIDES))
count = 1
for f in tqdm(files):
	if count <= 20:
		count += 1
		continue
	if count > 40:
		break
	path_to_slide = join(PATH_TO_SLIDES, f)
	subprocess.call(['python3', '/home/zcabmak/Scratch/src/preprocess.py', path_to_slide])
	count += 1
