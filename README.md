# SunMSCAPI Build Helper
This repo includes build scaffolding to build the `SunMSCAPI` JCA provider¹ without having to build the entire OpenJDK project. The built DLL contains all debug symbols per default, making it suitable for debugging with Visual Studio.

# Prerequisites
* The environment variable `JAVA_HOME` should point to the top-level directory of the JDK you want to build against.
* Make sure you have a working Win32 build environment (e.g. [Build Tools for Visual Studio 2017](https://visualstudio.microsoft.com/downloads/)).
* Download the [security.cpp](http://hg.openjdk.java.net/jdk/jdk/file/tip/src/jdk.crypto.mscapi/windows/native/libsunmscapi/security.cpp) file from the `libsunmscapi` package of OpenJDK and put it in this repos root folder. Note that the version of this file should match the version of the JDK you want to work with, i.e. [one of these](http://hg.openjdk.java.net/jdk8u/jdk8u/tags) for a OpenJDK 1.8 update release.

# Usage
* To build, run `nmake`.
* To install to your `%JAVA_HOME%\jre\bin` folder, run `nmake install`.

# References
1: https://docs.oracle.com/javase/8/docs/technotes/guides/security/SunProviders.html#SunMSCAPI