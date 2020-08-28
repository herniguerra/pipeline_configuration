@echo OFF

set _ServiceName=ZivaDynRLM

sc query %_ServiceName% | find "does not exist" >nul
IF %ERRORLEVEL% EQU 0 (
    echo Service Does Not Exist.
) ELSE (
    net stop ZivaDynRLM
    %0\..\rlm -delete_service -service_name ZivaDynRLM
)

