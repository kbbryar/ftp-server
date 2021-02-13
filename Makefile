GIT_POKY=git://git.yoctoproject.org/poky
GIT_OPENEMBEDDED=git://git.openembedded.org/meta-openembedded
GIT_RASPBERRYPI=git://git.yoctoproject.org/meta-raspberrypi

LOCAL_POKY=./poky
LOCAL_OPENEMBEDDED=./layers/meta-openembedded
LOCAL_RASPBERRYPI=./layers/meta-raspberrypi

setup:
	if [ ! -d "${LOCAL_POKY}" ] ; then git clone -b yocto-3.2 ${GIT_POKY} ${LOCAL_POKY}; fi 
	if [ ! -d "${LOCAL_OPENEMBEDDED}" ] ; then git clone -b gatesgarth ${GIT_OPENEMBEDDED} ${LOCAL_OPENEMBEDDED}; fi 
	if [ ! -d "${LOCAL_RASPBERRYPI}" ] ; then git clone -b gatesgarth ${GIT_RASPBERRYPI} ${LOCAL_RASPBERRYPI}; fi 
	#create directory for storing artifacts
	mkdir -p /yocto

clean:
	rm -Rf ${LOCAL_POKY}
	rm -Rf ${LOCAL_OPENEMBEDDED}
	rm -Rf ${LOCAL_RASPBERRYPI}
