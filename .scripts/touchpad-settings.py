import os
import subprocess

"""
Touchpad id finding
"""
out = subprocess.Popen(['xinput', 'list'],
                       stdout=subprocess.PIPE,
                       stderr=subprocess.STDOUT
                       )

stdout, stderr = out.communicate()
out = str(stdout.decode("utf-8"))

touchpad_data = out.find('Synaptics TouchPad')
id_data = out[touchpad_data:].find('id=')
target = touchpad_data + id_data + 3
touchpad_id = out[target:target + 2]

"""
Settings id finding
"""

out = subprocess.Popen(['xinput', 'list-props', '"SynPS/2 Synaptics TouchPad"'],
                       stdout=subprocess.PIPE,
                       stderr=subprocess.STDOUT
                       )

stdout, stderr = out.communicate()
out = str(stdout.decode("utf-8"))


def find_prop_id(data, name):
    index = data.find(name)
    left = data[index:].find('(')
    right = data[index:].find(')')
    return data[index + left + 1:index + right]


prop_list = ['Tapping Enabled', 'Natural Scrolling Enabled', 'Click Method Enabled']

props = {}

for prop in prop_list:
    props[prop] = find_prop_id(out, prop)
    print(prop)
    print(find_prop_id(out, prop))

print(props)

os.system('xinput set-prop {} {} {}'.format(
    touchpad_id,
    props['Tapping Enabled'],
    '1'
))

os.system('xinput set-prop {} {} {}'.format(
    touchpad_id,
    props['Natural Scrolling Enabled'],
    '1'
))

os.system('xinput set-prop {} {} {}, {}'.format(
    touchpad_id,
    props['Click Method Enabled'],
    '0',
    '0'
))

