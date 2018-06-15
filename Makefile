# This expects a few requirements
# one, that https://github.com/Jmainguy/docker_rpmbuild is cloned into ~/Github/docker_rpmbuild
# two, that docker is installed and running
# three, that ~/Github/docker_rpmbuild/dockerbuild/build.sh centos6 has been run
rpm:
	@tar -czvf ~/Github/docker_rpmbuild/rpmbuild/SOURCES/cpu_eater.tar.gz ../cpu_eater
	@cp cpu_eater.spec ~/Github/docker_rpmbuild/rpmbuild/SPECS/cpu_eater.spec
	@cd ~/Github/docker_rpmbuild/; ./run.sh centos7 cpu_eater
	@ls -ltrh ~/Github/docker_rpmbuild/rpmbuild/RPMS/x86_64/cpu_eater*
