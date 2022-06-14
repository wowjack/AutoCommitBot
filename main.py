import os

if os.path.exists("./test.txt"):
    os.system("rm test.txt")
else:
    os.system("echo hello > test.txt")

os.system("git add -A")
os.system("git commit -m 'bot'")
os.system("git push")