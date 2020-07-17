# Import modules
require './Common.rb'

class DownloadFile
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::FileApi.from_config($config)

    $request = GroupDocsSignatureCloud::DownloadFileRequest.new("signaturedocs/one-page.docx", $myStorage)
    $response = $api.download_file($request)
    
    puts("Expected response type is Stream: " + ($response).to_s)
  end
end