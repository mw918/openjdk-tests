@echo off
rem Licensed under the Apache License, Version 2.0 (the "License");
rem you may not use this file except in compliance with the License.
rem You may obtain a copy of the License at
rem
rem      https://www.apache.org/licenses/LICENSE-2.0
rem
rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.

SETLOCAL
SET PWD=%~dp0
SET OUTPUT=result_Windows_%LOCALE%.txt
SET CLASSPATH=%PWD%\pref.jar

call %PWD%\check_env_windows.bat
call %PWD%\..\data\setup_%LOCALE%.bat
echo "registering %TEST_STRING% ..." > %OUTPUT%
%JAVA_BIN%\java PrefTest %TEST_STRING% >> %OUTPUT%

echo "registered string" >> %OUTPUT%
%JAVA_BIN%\java PrefTest -q >> %OUTPUT%

echo "removing ..." >> %OUTPUT%
%JAVA_BIN%\java PrefTest -r >> %OUTPUT%
%JAVA_BIN%\java PrefTest -q >> %OUTPUT%

C:\Strawberry\perl\bin\perl %PWD%\tap_compare.pl %OUTPUT% %PWD%\expected_Windows_%LOCALE%.txt
exit %errorlevel%
