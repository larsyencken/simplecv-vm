# simplecv-vm

A [Vagrant](http://www.vagrantup.com/) virtual machine for working with [SimpleCV](https://github.com/sightmachine/SimpleCV).

## Why use a VM?

SimpleCV's great, but sometimes a pain to install. This VM provides a useful way of getting it running regardless of your operating system.

## Setting up the VM

1. Install Vagrant
2. Install Virtualbox
3. Clone this repo: `git clone https://github.com/larsyencken/simplecv-vm`
4. Start the VM: `cd simplecv-vm; vagrant up`
5. Enable USB access for the machine in VirtualBox

After you've done this, you should be able to fetch an image from your webcam:

```pycon
>>> import SimpleCV
>>> cam = SimpleCV.Camera()
>>> img = cam.getImage()
>>> img.save('example.jpg')
```
