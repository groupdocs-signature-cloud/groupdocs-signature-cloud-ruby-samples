# Import modules
require './Common.rb'

class CopyFile
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::FileApi.from_config($config)

    $request = GroupDocsSignatureCloud::CopyFileRequest.new("signaturedocs/one-page.docx", "signaturedocs/one-page-copied.docx", $myStorage, $myStorage)
    $response = $api.copy_file($request)

    puts("Expected response type is Void: 'signaturedocs/one-page.docx' file copied as 'signaturedocs/one-page-copied.docx'.")
  end
end