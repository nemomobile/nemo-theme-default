Name:       nemo-theme-default
Summary:    Nemo Mobile default theme
Version:    1.0.4
Release:    3
Group:      System/GUI/Other
License:    BSD/LGPLv2.1
BuildArch:  noarch
URL:        https://github.com/nemomobile/nemo-theme-default
Source0:    %{name}-%{version}.tar.bz2
BuildRequires: fdupes
BuildRequires: qt-devel
Provides:   qt-components-base-icons
Provides:   nemo-theme-graphics
Provides:   meegotouch-theme-graphics = 1.0.3
Obsoletes:  meegotouch-theme-graphics <= 1.0.2.1
Obsoletes:  meegotouch-theme-ce <= 0.1.26
Provides:  meegotouch-theme-ce = 0.1.26.1
 
%description
This package contains default theme graphic files.

%prep
%setup -q -n %{name}

%build
%qmake

make %{?jobs:-j%jobs}

%install
rm -rf %{buildroot}
%qmake_install

%fdupes  %{buildroot}%{_datadir}

%files
%defattr(-,root,root,-)
%{_datadir}/themes/base/index.theme
%{_datadir}/themes/base/meegotouch/icons
%{_datadir}/themes/base/meegotouch/svg
%{_datadir}/themes/base/meegotouch/images


