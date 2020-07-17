# Import modules
require './Common.rb'

class UploadFile
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::FileApi.from_config($config)
   
    $fileStream = File.new("..\\Resources\\signaturedocs\\one-page.docx", "r")
    
    $request = GroupDocsSignatureCloud::UploadFileRequest.new("signaturedocs/one-page1.docx", $fileStream, $myStorage)
    $response = $api.upload_file($request)
    
    $fileStream.close()

    puts("Expected response type is FilesUploadResult: " + ($response).to_s)
  end
end