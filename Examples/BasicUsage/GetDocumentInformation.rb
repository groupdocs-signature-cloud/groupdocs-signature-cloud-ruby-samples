# Import modules
require './Common.rb'

class GetDocumentInformation
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::InfoApi.from_config($config)
    
    $settings = GroupDocsSignatureCloud::InfoSettings.new()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"
    $info.password = nil
    
    $settings.file_info = $info
    $request = GroupDocsSignatureCloud::GetInfoRequest.new($settings)

    # Executing an API.
    $response = api.get_info($request)

    puts("Pages count: " + $response.pages_count.to_s)
  end
end