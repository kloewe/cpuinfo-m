# cpuinfo-m
#### Matlab tools for processor information queries


##### Prerequisites
* 64-bit Linux
* 64-bit Matlab

If you want to build the MEX files yourself, you'll also need

* the GCC C compiler
* a working MEX setup that uses GCC to compile the MEX files


##### Download
Clone the repository.
```
$ git clone --recursive https://github.com/kloewe/cpuinfo-m.git cpuinfo-m
```

If you don't want to build the MEX files yourself, you'll also have to create the folder `cpuinfo-m/cpuinfo-m/private`, then download the MEX files included with the latest release from GitHub and place them in the created folder.

##### Build (optional)
Change to the root directory of the cloned repository and run `make` to compile the MEX files.
```
$ cd cpuinfo-m
$ make
```

##### Installation
Run `make install` to add the relevant directories to the Matlab path.
```
$ make install
```


##### Documentation
A description of each function can be displayed in Matlab using
```
>> help <function-name>
```

##### Bugs
If you run into problems, please send an email to kl@kristianloewe.com.
