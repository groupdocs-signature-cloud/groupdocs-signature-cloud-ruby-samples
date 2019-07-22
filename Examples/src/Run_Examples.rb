require 'common_utilities/Utils.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "XXXX-XXX"
$app_key = "XXXX"
$myStorage = "MyStorage" #Put your storage name here
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here

class Run_Examples

  #  ##########################################
  #  puts("Executing Upload Test Files...")
  #  Common_Utilities.Upload_Test_File()
  #  ##########################################

  ###########################################
  #  # ******* Execute Examples *******
  puts("*** Executing examples...")
  #  # ******* Execute Examples *******
  ###########################################

  ##########################################
  puts("*** Executing Supported_File_Formats...")
  ##########################################

  require 'Supported_File_Formats\Signature_Ruby_Get_Supported_Formats.rb'
  puts("* Executing Signature_Ruby_Get_Supported_Formats...")
  File_Formats.Signature_Ruby_Get_Supported_Formats()

  #  ##########################################
  #  puts("*** Executing Supported_Barcodes...")
  #  ##########################################

  #  require 'Supported_Barcodes\Signature_Ruby_Get_Supported_Barcodes.rb'
  #  puts("* Executing Signature_Ruby_Get_Supported_Barcodes...")
  #  Supported_Barcodes.Signature_Ruby_Get_Supported_Barcodes()

  #  ##########################################
  #  puts("*** Executing Supported_QRCodes...")
  #  ##########################################

  #  require 'Supported_QRCodes\Signature_Ruby_Get_Supported_QRCodes.rb'
  #  puts("* Executing Signature_Ruby_Get_Supported_QRCodes...")
  #  Supported_QRCodes.Signature_Ruby_Get_Supported_QRCodes()

  ###########################################
  #  puts("*** Executing Working_With_Storage...")
  ###########################################

  #  require 'Working_With_Storage/Signature_Ruby_Storage_Exist.rb'
  #  puts("* Executing Signature_Ruby_Storage_Exist...")
  #  Working_With_Storage.Signature_Ruby_Storage_Exist()

  #  require 'Working_With_Storage/Signature_Ruby_Object_Exists.rb'
  #  puts("* Executing Signature_Ruby_Object_Exists...")
  #  Working_With_Storage.Signature_Ruby_Object_Exists()

  #  require 'Working_With_Storage/Signature_Ruby_Get_File_Versions.rb'
  #  puts("* Executing Signature_Ruby_Get_File_Versions...")
  #  Working_With_Storage.Signature_Ruby_Get_File_Versions()

  #  require 'Working_With_Storage/Signature_Ruby_Get_Disc_Usage.rb'
  #  puts("* Executing Signature_Ruby_Get_Disc_Usage...")
  #  Working_With_Storage.Signature_Ruby_Get_Disc_Usage()

  #  ##########################################
  #  puts("*** Executing Working_With_Folder...")
  #  ##########################################

  #  require 'Working_With_Folder/Signature_Ruby_Create_Folder.rb'
  #  puts("* Executing Signature_Ruby_Create_Folder...")
  #  Working_With_Folder.Signature_Ruby_Create_Folder()

  #  require 'Working_With_Folder/Signature_Ruby_Copy_Folder.rb'
  #  puts("* Executing Signature_Ruby_Copy_Folder...")
  #  Working_With_Folder.Signature_Ruby_Copy_Folder()

  #  require 'Working_With_Folder/Signature_Ruby_Get_Files_List.rb'
  #  puts("* Executing Signature_Ruby_Get_Files_List...")
  #  Working_With_Folder.Signature_Ruby_Get_Files_List()

  #  require 'Working_With_Folder/Signature_Ruby_Move_Folder.rb'
  #  puts("* Executing Signature_Ruby_Move_Folder...")
  #  Working_With_Folder.Signature_Ruby_Move_Folder()

  #  require 'Working_With_Folder/Signature_Ruby_Delete_Folder.rb'
  #  puts("* Executing Signature_Ruby_Delete_Folder...")
  #  Working_With_Folder.Signature_Ruby_Delete_Folder()

  #  ##########################################
  #  puts("*** Executing Working_With_Files...")
  #  ##########################################

  #  require 'Working_With_Files/Signature_Ruby_Upload_File.rb'
  #  puts("* Executing Signature_Ruby_Upload_File...")
  #  Working_With_Files.Signature_Ruby_Upload_File()

  #  require 'Working_With_Files/Signature_Ruby_Download_File.rb'
  #  puts("* Executing Signature_Ruby_Download_File...")
  #  Working_With_Files.Signature_Ruby_Download_File()

  #  require 'Working_With_Files/Signature_Ruby_Copy_File.rb'
  #  puts("* Executing Signature_Ruby_Copy_File...")
  #  Working_With_Files.Signature_Ruby_Copy_File()

  #  require 'Working_With_Files/Signature_Ruby_Move_File.rb'
  #  puts("* Executing Signature_Ruby_Move_File...")
  #  Working_With_Files.Signature_Ruby_Move_File()

  #  require 'Working_With_Files/Signature_Ruby_Delete_File.rb'
  #  puts("* Executing Signature_Ruby_Delete_File...")
  #  Working_With_Files.Signature_Ruby_Delete_File()

  #  ##########################################
  #  puts("*** Executing Document_Information...")
  #  ##########################################

  #  require 'Document_Information\Signature_Ruby_Get_Document_Information.rb'
  #  puts("* Executing Signature_Ruby_Get_Document_Information...")
  #  Document_Info.Signature_Ruby_Get_Document_Information()

  #  ##########################################
  #  puts("*** Executing Signing_Documents...")
  #  ##########################################

  #  require 'Signing_Documents\Signature_Ruby_Barcode_Signature.rb'
  #  puts("* Executing Signature_Ruby_Barcode_Signature...")
  #  Signing_Documents.Signature_Ruby_Barcode_Signature()

  #  require 'Signing_Documents\Signature_Ruby_QRCode_Signature.rb'
  #  puts("* Executing Signature_Ruby_QRCode_Signature...")
  #  Signing_Documents.Signature_Ruby_QRCode_Signature()

  #  require 'Signing_Documents\Signature_Ruby_Digital_Signature.rb'
  #  puts("* Executing Signature_Ruby_Digital_Signature...")
  #  Signing_Documents.Signature_Ruby_Digital_Signature()

  #  require 'Signing_Documents\Signature_Ruby_Image_Signature.rb'
  #  puts("* Executing Signature_Ruby_Image_Signature...")
  #  Signing_Documents.Signature_Ruby_Image_Signature()

  #  require 'Signing_Documents\Signature_Ruby_Stamp_Signature.rb'
  #  puts("* Executing Signature_Ruby_Stamp_Signature...")
  #  Signing_Documents.Signature_Ruby_Stamp_Signature()

  #  require 'Signing_Documents\Signature_Ruby_Text_Signature.rb'
  #  puts("* Executing Signature_Ruby_Text_Signature...")
  #  Signing_Documents.Signature_Ruby_Text_Signature()

  #  require 'Signing_Documents\Signature_Ruby_Collection_Signature.rb'
  #  puts("* Executing Signature_Ruby_Collection_Signature...")
  #  Signing_Documents.Signature_Ruby_Collection_Signature()

  #  ##########################################
  #  puts("*** Executing Search_Signature...")
  #  ##########################################

  #  require 'Search_Signature\Signature_Ruby_Search_Barcode_Signature.rb'
  #  puts("* Executing Signature_Ruby_Search_Barcode_Signature...")
  #  Search_Signature.Signature_Ruby_Search_Barcode_Signature()

  #  require 'Search_Signature\Signature_Ruby_Search_QRCode_Signature.rb'
  #  puts("* Executing Signature_Ruby_Search_QRCode_Signature...")
  #  Search_Signature.Signature_Ruby_Search_QRCode_Signature()

  #  require 'Search_Signature\Signature_Ruby_Search_Digital_Signature.rb'
  #  puts("* Executing Signature_Ruby_Search_Digital_Signature...")
  #  Search_Signature.Signature_Ruby_Search_Digital_Signature()

  #  require 'Search_Signature\Signature_Ruby_Search_Collection_Signature.rb'
  #  puts("* Executing Signature_Ruby_Search_Collection_Signature...")
  #  Search_Signature.Signature_Ruby_Search_Collection_Signature()

  #  ##########################################
  #  puts("*** Executing Verify_Signature...")
  #  ##########################################

  #  require 'Verify_Signature\Signature_Ruby_Verify_Barcode_Signature.rb'
  #  puts("* Executing Signature_Ruby_Verify_Barcode_Signature...")
  #  Verify_Signature.Signature_Ruby_Verify_Barcode_Signature()

  #  require 'Verify_Signature\Signature_Ruby_Verify_QRCode_Signature.rb'
  #  puts("* Executing Signature_Ruby_Verify_QRCode_Signature...")
  #  Verify_Signature.Signature_Ruby_Verify_QRCode_Signature()

  #  require 'Verify_Signature\Signature_Ruby_Verify_Digital_Signature.rb'
  #  puts("* Executing Signature_Ruby_Verify_Digital_Signature...")
  #  Verify_Signature.Signature_Ruby_Verify_Digital_Signature()

  #  require 'Verify_Signature\Signature_Ruby_Verify_Text_Signature.rb'
  #  puts("* Executing Signature_Ruby_Verify_Text_Signature...")
  #  Verify_Signature.Signature_Ruby_Verify_Text_Signature()

  #  require 'Verify_Signature\Signature_Ruby_Verify_Collection_Signature.rb'
  #  puts("* Executing Signature_Ruby_Verify_Collection_Signature...")
  #  Verify_Signature.Signature_Ruby_Verify_Collection_Signature()

end