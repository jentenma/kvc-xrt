# kvc-simple-kmod

This is a [kmods-via-containers](https://github.com/kmods-via-containers/kmods-via-containers)
implementation for [XRT](https://github.com/xilinx/XRT) specifically the drivers xocl and xclmgmt.

A full example of how to apply an example [simple-kmod](https://github.com/kmods-via-containers/simple-kmod) is documented in the
[kmods-via-containers README](https://github.com/kmods-via-containers/kmods-via-containers#example).

This is only an implmentation for RHEL8 as that as what it has been tested against. It relies on access to
the Redhat repos that come with the registration of the host system.  It was tested using podman. 

The container build will:
* build XRT
* Install the XRT rpm in the container
* Build and install the drivers in the container which can then be loaded/unloaded on the host system


After podman and kmods-via-containers have been installed on the host

In the directory where this repo has been cloned to:
make install
kmods-via-containers build xrt $(uname -r)
systemctl enable kmods-via-containers@xrt.service
systemctl start kmods-via-containers@xrt.service
lsmod | grep xocl
lsmod | grep xclmgmt
