************************************************************
Follow the steps below to correctly setup
the ODMA Workflow files.

1. Make a directory called ODMAWF

2. Copy ODMAWF.ZIP to the ODMAWF directory

3. Unzip ODMAWF.ZIP with the -d option of pkunzip
	EXAMPLE:  pkunzip -d odmawf.zip
	
4. Go the the ODMAWF\WFSERVER directory

5. Edit the WFS16.REG and WFS32.REG files so
   the key will point to the right WFSERVER.DLL.
   WFS16.REG for 16-bit server in the OUT16 subdirectory
   WFS32.REG for 32-bit server in the OUT32 subdirectory
   
6. Go to the ODMAWF\ODMAWF\OUT16 directory and copy
   ODMAWF.DLL to your windows\system directory.
   
7. Go to the ODMAWF\ODMAWF\OUT32 directory and copy
   ODMAWF32.DLL to your windows\system directory
   
8. Go to the ODMAWF\WFCLIENT\OUT16 or OUT32 and 
   run WFCLIENT.EXE to make sure everything is installed


***************************************************************   

The ODMA Workflow SDK is made up of three
main parts and are as follows:

1. ODMA Workflow Connection Manager
     ODMAWF\ODMAWF\OUT16\ODMAWF.DLL    16-bit
     ODMAWF\ODMAWF\OUT32\ODMAWF32.DLL  32-bit
     
2. Sample Server
     ODMAWF\WFSERVER\OUT16\WFSERVER.DLL  16-bit
     ODMAWF\WFSERVER\OUT32\WFSERVER.DLL  32-bit

3. Sample Client
     ODMAWF\WFCLIENT\OUT16\WFCLIENT.EXE  16-bit
     ODMAWF\WFCLIENT\OUT32\WFCLIENT.EXE  32-bit

