%define _unpackaged_files_terminate_build 0
%define  debug_package %{nil}
Name:	cpu_eater
Version: 0.1
Release: 1%{?dist}
Summary: A golang program to destroy a cpu, for load testing purposes.

License: GPLv2
URL: https://github.com/Jmainguy/cpu_eater
Source0: cpu_eater.tar.gz

%description
A golang program to destroy a cpu, for load testing purposes.

%prep
%setup -q -n cpu_eater
%build
export GOPATH=/usr/src/go
/usr/bin/go build
%install
mkdir -p $RPM_BUILD_ROOT/usr/sbin
install -m 0755 $RPM_BUILD_DIR/cpu_eater/cpu_eater %{buildroot}/usr/sbin

%files
/usr/sbin/cpu_eater
%doc

%pre
%post

%changelog
* Fri Jun 15 2018 Jonathan Mainguy <jon@soh.re> - 0.1-1
- initial init
