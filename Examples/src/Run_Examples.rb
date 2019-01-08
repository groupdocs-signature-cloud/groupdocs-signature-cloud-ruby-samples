require 'Supported_File_Formats\Signature_Ruby_Supported_FileFormats.rb'
require 'Document_Information\Signature_Ruby_DocumentInfo_File.rb'
require 'Document_Information\Signature_Ruby_DocumentInfo_URL.rb'
require 'Supported_Barcodes\Signature_Ruby_Supported_Barcodes.rb'
require 'Supported_QRcodes\Signature_Ruby_Supported_QRcodes.rb'
require 'Signing_Documents/Working_with_Barcode_Signature/Signature_Ruby_Signature_Barcode.rb'
require 'Signing_Documents/Working_with_Barcode_Signature/Signature_Ruby_Signature_Barcode_From_URL.rb'
require 'Signing_Documents/Working_with_Digital_Signature/Signature_Ruby_Signature_Digital.rb'
require 'Signing_Documents/Working_with_Digital_Signature/Signature_Ruby_Signature_Digital_URL.rb'
require 'Signing_Documents/Working_with_Image_Signature/Signature_Ruby_Signature_Image.rb'
require 'Signing_Documents/Working_with_Image_Signature/Signature_Ruby_Signature_Image_URL.rb'
require 'Signing_Documents/Working_with_QR_Code_Signature/Signature_Ruby_Signature_QRCode.rb'
require 'Signing_Documents/Working_with_QR_Code_Signature/Signature_Ruby_Signature_QRCode_URL.rb'
require 'Signing_Documents/Working_with_QR_Code_Signature/Signature_Ruby_Signature_QRCode_Logo_Image.rb'
require 'Signing_Documents/Working_with_Signature_Collection/Signature_Ruby_Signature_Collection.rb'
require 'Signing_Documents/Working_with_Signature_Collection/Signature_Ruby_Signature_Collection_FromUrl.rb'
require 'Signing_Documents/Working_with_Stamp_Signature/Signature_Ruby_Signature_Stamp.rb'
require 'Signing_Documents/Working_with_Stamp_Signature/Signature_Ruby_Signature_Stamp_URL.rb'
require 'Signing_Documents/Working_with_Stamp_Signature/Signature_Ruby_Signature_Stamp_Background_Brush.rb'
require 'Signing_Documents/Working_with_Text_Signature/Signature_Ruby_Signature_Text.rb'
require 'Signing_Documents/Working_with_Text_Signature/Signature_Ruby_Signature_Text_URL.rb'
require 'Signing_Documents/Working_with_Text_Signature/Signature_Ruby_Signature_Text_Background_Brush.rb'
require 'Signing_Documents/Working_with_Text_Signature/Signature_Ruby_Signature_Text_Align_Text.rb'
require 'Search_Signature/Search_Barcode_Signature/Signature_Ruby_Search_Signature_Barcode.rb'
require 'Search_Signature/Search_Barcode_Signature/Signature_Ruby_Search_Signature_Barcode_URL.rb'
require 'Search_Signature/Search_Digital_Signature/Signature_Ruby_Search_Signature_Digital.rb'
require 'Search_Signature/Search_Digital_Signature/Signature_Ruby_Search_Signature_Digital_URL.rb'
require 'Search_Signature/Search_QRCode_Signature/Signature_Ruby_Search_Signature_QRCode.rb'
require 'Search_Signature/Search_QRCode_Signature/Signature_Ruby_Search_Signature_QRCode_URL.rb'
require 'Search_Signature/Working_with_Search_Collection/Signature_Ruby_Search_Collection.rb'
require 'Search_Signature/Working_with_Search_Collection/Signature_Ruby_Search_Collection_FromUrl.rb'
require 'Verifying_Signature/Verify_Barcode_Signature/Signature_Ruby_Verify_Signature_Barcode.rb'
require 'Verifying_Signature/Verify_Barcode_Signature/Signature_Ruby_Verify_Signature_Barcode_URL.rb'
require 'Verifying_Signature/Verify_Digital_Signature/Signature_Ruby_Verify_Signature_Digital.rb'
require 'Verifying_Signature/Verify_Digital_Signature/Signature_Ruby_Verify_Signature_Digital_URL.rb'
require 'Verifying_Signature/Verify_QRCode_Signature/Signature_Ruby_Verify_Signature_QRCode.rb'
require 'Verifying_Signature/Verify_QRCode_Signature/Signature_Ruby_Verify_Signature_QRCode_URL.rb'
require 'Verifying_Signature/Verify_Text_Signature/Signature_Ruby_Verify_Signature_Text.rb'
require 'Verifying_Signature/Verify_Text_Signature/Signature_Ruby_Verify_Signature_Text_URL.rb'
require 'Verifying_Signature/Working_with_Verify_Collection/Signature_Ruby_Signature_Collection_Verify.rb'
require 'Verifying_Signature/Working_with_Verify_Collection/Signature_Ruby_Signature_Collection_Verify_FromUrl.rb'
require 'common_utilities/Utils.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "XXXXX-XXXXX-XXXXX-XXXX"
$app_key = "XXXXXXXXXXXXXXX"
$storageName = "MyStorage" #Put your storage name here
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here
$base_url = "http://api.groupdocs.cloud" #Put your Base URL here

class Run_Examples

  #  puts("Executing Upload Test Files...")
  #  Common_Utilities.Upload_Test_File()

  #  # ******* Execute Examples *******
  #  puts("*** Executing examples...")
  #  # ******* Execute Examples *******

  #  puts("* Executing Get_All_Supported_File_Formats...")
  #  File_Formats.Get_All_Supported_File_Formats()

  #  puts("* Executing Get_DocumentInfo_File...")
  #  DocumentInfo_File.Get_DocumentInfo_File()

  #  puts("* Executing Get_DocumentInfo_From_Url...")
  #  DocumentInfo_File.Get_DocumentInfo_From_Url()
  #
  #  puts("* Executing Get_All_Supported_Barcodes...")
  #  Supported_Barcodes.Get_All_Supported_Barcodes()

  #  puts("* Executing Get_All_Supported_QRcodes...")
  #  Supported_QRcodes.Get_All_Supported_QRcodes()

  #  puts("* Executing Post_Signature_Barcode...")
  #  Signature_Barcode.Post_Signature_Barcode()

  #  puts("* Executing Post_Signature_Barcode_From_Url...")
  #  Signature_Barcode_From_Url.Post_Signature_Barcode_From_Url()

  #  puts("* Executing Post_Signature_Digital...")
  #  Signature_Digital.Post_Signature_Digital()

  #  puts("* Executing Post_Signature_Digital_From_Url...")
  #  Signature_Digital_From_Url.Post_Signature_Digital_From_Url()

  #  puts("* Executing Post_Signature_Image...")
  #  Signature_Image.Post_Signature_Image()

  #  puts("* Executing Post_Signature_Image_From_Url...")
  #  Signature_Image_From_Url.Post_Signature_Image_From_Url()

  #  puts("* Executing Post_Signature_QRCode...")
  #  Signature_QRCode.Post_Signature_QRCode()

  #  puts("* Executing Post_Signature_QRCode_From_Url...")
  #  Signature_QRCode_From_Url.Post_Signature_QRCode_From_Url()

  #  puts("* Executing Post_Signature_QRCode_Logo...")
  #  Signature_QRCode_Logo.Post_Signature_QRCode_Logo()

  #  puts("* Executing Post_Signature_Collection...")
  #  Signature_Collection.Post_Signature_Collection()

  #  puts("* Executing Post_Signature_Collection_From_Url...")
  #  Signature_Collection_From_Url.Post_Signature_Collection_From_Url()

  #  puts("* Executing Post_Signature_Stamp...")
  #  Signature_Stamp.Post_Signature_Stamp()

  #  puts("* Executing Post_Signature_Stamp_From_Url...")
  #  Signature_Stamp_From_Url.Post_Signature_Stamp_From_Url()

  #  puts("* Executing Post_Signature_Stamp_Background_Brush...")
  #  Signature_Stamp_Background_Brush.Post_Signature_Stamp_Background_Brush()

  #  puts("* Executing Post_Signature_Text...")
  #  Signature_Text.Post_Signature_Text()

  #  puts("* Executing Post_Signature_Text_From_Url...")
  #  Signature_Text_From_Url.Post_Signature_Text_From_Url()

  #  puts("* Executing Post_Signature_Text_Background_Brush...")
  #  Signature_Text_Background_Brush.Post_Signature_Text_Background_Brush()

  #  puts("* Executing Post_Signature_Text_Align_Text...")
  #  Signature_Text_Align_Text.Post_Signature_Text_Align_Text()

  #  puts("* Executing Post_Search_Signature_Barcode...")
  #  Search_Signature_Barcode.Post_Search_Signature_Barcode()

  #  puts("* Executing Post_Search_Signature_Barcode_From_Url...")
  #  Search_Signature_Barcode_From_Url.Post_Search_Signature_Barcode_From_Url()

  #  puts("* Executing Post_Search_Signature_Digital...")
  #  Search_Signature_Digital.Post_Search_Signature_Digital()

  #  puts("* Executing Post_Search_Signature_Digital_From_Url...")
  #  Search_Signature_Digital_From_Url.Post_Search_Signature_Digital_From_Url()

  #  puts("* Executing Post_Search_Signature_QRCode...")
  #  Search_Signature_QRCode.Post_Search_Signature_QRCode()

  #  puts("* Executing Post_Search_Signature_QRCode_From_Url...")
  #  Search_Signature_QRCode_From_Url.Post_Search_Signature_QRCode_From_Url()

  #  puts("* Executing Post_Search_Collection...")
  #  Search_Collection.Post_Search_Collection()

  #  puts("* Executing Post_Search_Collection_From_Url...")
  #  Search_Collection_From_Url.Post_Search_Collection_From_Url()

  #  puts("* Executing Post_Verify_Signature_Barcode...")
  #  Verify_Signature_Barcode.Post_Verify_Signature_Barcode()

  #  puts("* Executing Post_Verify_Signature_Barcode_From_Url...")
  #  Verify_Signature_Barcode_From_Url.Post_Verify_Signature_Barcode_From_Url()

  #  puts("* Executing Post_Verify_Signature_Digital...")
  #  Verify_Signature_Digital.Post_Verify_Signature_Digital()

  #  puts("* Executing Post_Verify_Signature_Digital_From_Url...")
  #  Verify_Signature_Digital_From_Url.Post_Verify_Signature_Digital_From_Url()

  #  puts("* Executing Post_Verify_Signature_QRCode...")
  #  Verify_Signature_QRCode.Post_Verify_Signature_QRCode()

  #  puts("* Executing Post_Verify_Signature_QRCode...")
  #  Verify_Signature_QRCode_From_Url.Post_Verify_Signature_QRCode_From_Url()

  #  puts("* Executing Post_Verify_Signature_Text...")
  #  Verify_Signature_Text.Post_Verify_Signature_Text()

  #  puts("* Executing Post_Verify_Signature_Text_From_Url...")
  #  Verify_Signature_Text_From_Url.Post_Verify_Signature_Text_From_Url()

  #  puts("* Executing Post_Verify_Signature_Collection...")
  #  Verify_Signature_Collection.Post_Verify_Signature_Collection()

  #  puts("* Executing Post_Verify_Signature_Collection_From_Url...")
  #  Verify_Signature_Collection_From_Url.Post_Verify_Signature_Collection_From_Url()

end