Echo OFF
Rem =============================================================
Rem fabPack_PC: Packaging Utility for Salesforce Professionals
Rem
Rem fabPack lets you download packages from one Salesforce org
Rem and upload it into another one. It also helps you capture
Rem metadata and build-up a library should you want to.
Rem It's a Salesforce Migration Toolkit wrapper,
Rem so you need the Java and Ant stacks as well as the force.com
Rem migration toolkit installed before using it.
Rem Once installed, then things will get easy.
Rem fabPack saves time and reduces risk of manual mistakes.
Rem
Rem © Fabrice Cathala - February 2021
Rem	Version: 2.0
Rem
Rem =============================================================

:Menu
  Rem ===========================================================
  Rem Variables
  Rem ===========================================================
  Rem File name friendly launch time
  Set TimeStamp=%Date:~-4,4%%Date:~-10,2%%Date:~-7,2%_%Time:~0,2%%Time:~3,2%%Time:~6,2%
  Rem ===========================================================

  Cls
  Echo.
  Echo ----------------------------------------------------------
  Echo  fabPack - Packaging Utility for Salesforce Professionals    
  Echo ----------------------------------------------------------
  Echo.
  Echo  (1) Check installation
  Echo  (2) Retrieve all supported metadata types
  Echo  (3) Download components from manifest
  Echo  (4) Download components from the package
  Echo  (5) Validate components on the target
  Echo  (6) Deploy components on the target
  Echo  (7) Delete components on the target
  Echo  (8) Quit
  Echo.
  Echo ----------------------------------------------------------
  Echo.

  Choice /C:12345678 /N /M "Please, type the selection number from 1 to 8."

  If ErrorLevel ==8 Goto 8
  If ErrorLevel ==7 Goto 7
  If ErrorLevel ==6 Goto 6
  If ErrorLevel ==5 Goto 5
  If ErrorLevel ==4 Goto 4
  If ErrorLevel ==3 Goto 3
  If ErrorLevel ==2 Goto 2
  If ErrorLevel ==1 Goto 1
Goto Menu

:1
  Call lib\testInstallation.cmd
Goto Menu
:2
  Call lib\describeMetadata.cmd
Goto Menu
:3
  Call lib\retrieveCode.cmd 
Goto Menu
:4
  Call lib\retrievePkg.cmd
Goto Menu
:5
  Call lib\deployCodeCheckOnly.cmd
Goto Menu
:6
  Call lib\deployCode.cmd
Goto Menu  
:7
  Call lib\undeployCode.cmd
Goto Menu  
:8
  Goto End
Goto Menu 

  Rem ===========================================================

:End