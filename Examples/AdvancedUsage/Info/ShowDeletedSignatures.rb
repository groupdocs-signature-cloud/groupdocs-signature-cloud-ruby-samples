# Import modules
require './Common.rb'

class ShowDeletedSignatures
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::InfoApi.from_config($config)
    
    $settings = GroupDocsSignatureCloud::InfoSettings.new()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"
    $info.password = nil
    
    $settings.file_info = $info
    $settings.show_deleted_signatures_info = true

    $request = GroupDocsSignatureCloud::GetInfoRequest.new($settings)

    # Executing an API.
    $response = api.get_info($request)

    puts("Pages count: " + $response.pages_count.to_s)
  end
end