require 'Supported_File_Formats\Signature_Ruby_Supported_FileFormats.rb'
require 'Document_Information\Signature_Ruby_DocumentInfo_File.rb'
require 'Document_Information\Signature_Ruby_DocumentInfo_URL.rb'
require 'Supported_Barcodes\Signature_Ruby_Supported_Barcodes.rb'
require 'Supported_QRcodes\Signature_Ruby_Supported_QRcodes.rb'
require 'Signing_Documents/Working_with_Barcode_Signature/Signature_Ruby_Signature_Barcode.rb'
require 'Signing_Documents/Working_with_Barcode_Signature/Signature_Ruby_Signature_Barcode_From_URL.rb'
require 'common_utilities/Utils.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "d215ce72-1609-4282-8d55-5810942236fb"
$app_key = "715d18b0afef2f303882c769921fe05a"
$storageName = "MyStorage" #Put your storage name here
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here
$base_url = "http://api.groupdocs.cloud" #Put your Base URL here

class Run_Examples

  #
  #  # ******* Execute Examples *******
  #  puts("*** Executing examples...")
  #  # ******* Execute Examples *******
  #
  #  puts("* Executing Get_All_Supported_File_Formats...")
  #  File_Formats.Get_All_Supported_File_Formats()
  #
  #  puts("* Executing Get_DocumentInfo_File...")
  #  DocumentInfo_File.Get_DocumentInfo_File()

  #  puts("* Executing Get_DocumentInfo_From_Url...")
  #  DocumentInfo_File.Get_DocumentInfo_From_Url()
  #
  #  puts("* Executing Get_All_Supported_Barcodes...")
  #  Supported_Barcodes.Get_All_Supported_Barcodes()

#  puts("* Executing Get_All_Supported_QRcodes...")
#  Supported_QRcodes.Get_All_Supported_QRcodes()
#
#
#  puts("* Executing Post_Signature_Barcode...")
#  Signature_Barcode.Post_Signature_Barcode()
#

  puts("* Executing Post_Signature_Barcode_From_Url...")
  Signature_Barcode_From_Url.Post_Signature_Barcode_From_Url()

end