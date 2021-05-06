# Import modules
require './Common.rb'

class GetDocumentPreview
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::PreviewApi.from_config($config)
    
    $settings = GroupDocsSignatureCloud::PreviewSettings.new()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"
    $info.password = nil
    
    $settings.file_info = $info
    $request = GroupDocsSignatureCloud::PreviewDocumentRequest.new($settings)

    # Executing an API.
    $response = api.preview_document($request)

    puts("Pages count: " + $response.pages.length.to_s)
  end
end