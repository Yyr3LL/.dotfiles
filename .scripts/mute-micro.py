import os
import subprocess

cmd = 'amixer sget "Mic Mute-LED Mode"'

out = subprocess.Popen(['amixer', 'sget', 'Mic Mute-LED Mode'],
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT
        )

stdout, stderr = out.communicate()
out = str(stdout.decode("utf-8"))

indexes = []

indexes.append(out.find('Item0:'))
indexes.append(indexes[0] + out[indexes[0]:].find('\''))
indexes.append(indexes[0] + indexes[1] + out[indexes[1]:].find('\''))

start = int(indexes[1])
end = int(indexes[2])

res = out[start:end+1]

exit = 0

if "Off" in res:
    exit = os.system('amixer sset "Mic Mute-LED Mode" "On"')
elif "On" in res:
    exit = os.system('amixer sset "Mic Mute-LED Mode" "Off"')
else:
    exit = os.system('amixer sset "Mic Mute-LED Mode" "On"')

print(exit)
