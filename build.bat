@echo off
pushd build
:: build here
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: COMPILER FLAG DESCRIPTIONS
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: nologo 	don't print compiler's logo
:: GR-	  	Disables RTTI
:: Zi   	Generates complete debugging information.
:: Wall 	Enables all warnings, including warnings that are disabled by default.
:: -wd4100	disable warning c4100 ' ': unreferenced formal parameter
:: -wd4191  disable warning c4191 calling functions from type casted void*s
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: LINKER FLAG DESCRIPTIONS
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
cl -nologo -Wall ..\src\*.cc
del *.obj
popd
