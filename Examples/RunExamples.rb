require 'groupdocs_signature_cloud'

require './Common.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "XXXX-XXXX-XXXX-XXXX"
$app_key = "XXXXXXXXXXXXXXXX"

$config = GroupDocsSignatureCloud::Configuration.new($app_sid, $app_key)
$config.api_base_url = "https://api.groupdocs.cloud"

class RunExamples

  # Uploading sample test files from local disk to cloud storage
  Common.UploadSampleFiles()

  # Basic usage examples

  require './BasicUsage/GetSupportedFormats.rb'
  GetSupportedFormats.Run()
  require './BasicUsage/GetSupportedBarcodes.rb'
  GetSupportedBarcodes.Run()
  require './BasicUsage/GetSupportedQRCodes.rb'
  GetSupportedQRCodes.Run()
  require './BasicUsage/GetDocumentInformation.rb'
  GetDocumentInformation.Run()  

  # Advanced usage examples

  require './AdvancedUsage/Sign/BarcodeSignature.rb'
  BarcodeSignature.Run()  
  # require './AdvancedUsage/Sign/CollectionSignature.rb'
  # CollectionSignature.Run()  
  # require './AdvancedUsage/Sign/DigitalSignature.rb'
  # DigitalSignature.Run()  
  # require './AdvancedUsage/Sign/ImageSignature.rb'
  # ImageSignature.Run()  
  # require './AdvancedUsage/Sign/QRCodeSignature.rb'
  # QRCodeSignature.Run()  
  # require './AdvancedUsage/Sign/StampSignature.rb'
  # StampSignature.Run()  
  # require './AdvancedUsage/Sign/TextSignature.rb'
  # TextSignature.Run()   
  
  require './AdvancedUsage/Search/SearchBarcode.rb'
  SearchBarcode.Run()
  # require './AdvancedUsage/Search/SearchCollection.rb'
  # SearchCollection.Run()
  # require './AdvancedUsage/Search/SearchDigital.rb'
  # SearchDigital.Run()
  # require './AdvancedUsage/Search/SearchQRCode.rb'
  # SearchQRCode.Run()      

  require './AdvancedUsage/Verify/VerifyBarcode.rb'
  VerifyBarcode.Run()    
  # require './AdvancedUsage/Verify/VerifyCollection.rb'
  # VerifyCollection.Run()    
  # require './AdvancedUsage/Verify/VerifyDigital.rb'
  # VerifyDigital.Run()    
  # require './AdvancedUsage/Verify/VerifyQRCode.rb'
  # VerifyQRCode.Run()    
  # require './AdvancedUsage/Verify/VerifyText.rb'
  # VerifyText.Run()    

  require './AdvancedUsage/Update/UpdateBarcode.rb'
  UpdateBarcode.Run()    
  # require './AdvancedUsage/Update/UpdateQRCode.rb'
  # UpdateQRCode.Run()    

  require './AdvancedUsage/Delete/DeleteBarcode.rb'
  DeleteBarcode.Run()    
  # require './AdvancedUsage/Delete/DeleteQRCode.rb'
  # DeleteQRCode.Run()  

end