import os
import re

# Expect this file executed from "D:\what\ever\dart-Report\pdf-preview"
execution_dir_hierarchy = os.path.abspath(os.curdir).split(os.sep)
if execution_dir_hierarchy[-2:] != [r'dARt-Report', r'pdf-preview']:
    print("Please execute this file from pdf-preview folder")
    exit(-1)


png_filenames = [file for file in os.listdir(r'.') if file.endswith(r'.png')]
filename_re = re.compile(r'Report-(\d{2})\.png')
# format '![cover](./pdf-preview/01.jpg)'
for filename in png_filenames:
    serial_number = filename_re.match(filename)[1]
    print(f'![{serial_number}](./pdf-preview/{filename})')