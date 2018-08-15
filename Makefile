all: security.cpp
	set CL=/I %JAVA_HOME%\include /I %JAVA_HOME%\include\win32
	cl /c /Zi security.cpp
	link /DLL /OUT:sunmscapi.dll /DEBUG /PDB:sunmscapi.pdb Advapi32.lib Crypt32.lib security.obj

install: all
	copy %JAVA_HOME%\jre\bin\sunmscapi.dll "%JAVA_HOME%\jre\bin\sunmscapi.dll.backup.%date:/=-%-%time::=-%"
	copy sunmscapi.dll %JAVA_HOME%\jre\bin
	copy sunmscapi.pdb %JAVA_HOME%\jre\bin

clean:
	-del *.dll
	-del *.obj
	-del *.exp
	-del *.lib
	-del *.ilk
	-del *.pdb