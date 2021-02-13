GIT_POKY=git://git.yoctoproject.org/poky
GIT_OPENEMBEDDED=git://git.openembedded.org/meta-openembedded
GIT_RASPBERRYPI=git://git.yoctoproject.org/meta-raspberrypi
GIT_FTP=git@github.com:kbbryar/meta-ftp.git

LOCAL_POKY=./poky
LOCAL_OPENEMBEDDED=./layers/meta-openembedded
LOCAL_RASPBERRYPI=./layers/meta-raspberrypi
LOCAL_FTP=./layers/meta-ftp

setup:
	if [ ! -d "${LOCAL_POKY}" ] ; then git clone -b yocto-3.2 ${GIT_POKY} ${LOCAL_POKY}; fi 
	if [ ! -d "${LOCAL_OPENEMBEDDED}" ] ; then git clone -b gatesgarth ${GIT_OPENEMBEDDED} ${LOCAL_OPENEMBEDDED}; fi 
	if [ ! -d "${LOCAL_RASPBERRYPI}" ] ; then git clone -b gatesgarth ${GIT_RASPBERRYPI} ${LOCAL_RASPBERRYPI}; fi 
	if [ ! -d "${LOCAL_FTP}" ] ; then git clone -b master ${GIT_FTP} ${LOCAL_FTP}; fi 
	#create directory for storing artifacts
	mkdir -p /yocto

clean:
	rm -Rf ${LOCAL_POKY}
	rm -Rf ${LOCAL_OPENEMBEDDED}
	rm -Rf ${LOCAL_RASPBERRYPI}
