@echo off
setlocal
set BASEDIR=%~dp0
java -jar "%BASEDIR%.mvn\wrapper\maven-wrapper.jar" %*
