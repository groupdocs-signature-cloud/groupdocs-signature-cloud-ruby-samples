# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Document_Info
  def self.Signature_Ruby_Get_Document_Information()

    # Getting instance of the API
    api = Common_Utilities.Get_InfoApi_Instance()
    
    $settings = GroupDocsSignatureCloud::InfoSettings.new()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"
    $info.password = nil
    
    $settings.file_info = $info
    $request = GroupDocsSignatureCloud::GetInfoRequest.new($settings)

    # Executing an API.
    $response = api.get_info($request)

    puts("file_path: " + $response.file_info.file_path)
  end
end