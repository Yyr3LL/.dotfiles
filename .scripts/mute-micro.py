import os
import subprocess

cmd = 'amixer sget "Mic Mute-LED Mode"'

out = subprocess.Popen(['amixer', 'sget', 'Mic Mute-LED Mode'],
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT
        )

stdout, stderr = out.communicate()
out = str(stdout.decode("utf-8"))

ind = out.find('Item0:')

exit_code = 0

if "Off" in out[ind:ind+16]:
    exit_code = os.system('amixer sset "Mic Mute-LED Mode" "On"')
elif "On" in out[ind:ind+16]:
    exit_code = os.system('amixer sset "Mic Mute-LED Mode" "Off"')

