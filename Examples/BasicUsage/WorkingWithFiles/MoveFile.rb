# Import modules
require './Common.rb'

class MoveFile
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsSignatureCloud::FileApi.from_config($config)

    $request = GroupDocsSignatureCloud::MoveFileRequest.new("signaturedocs/one-page.docx", "signaturedocs1/one-page.docx", $myStorage, $myStorage)
    $response = $api.move_file($request)

    puts("Expected response type is Void: 'signaturedocs/one-page.docx' file moved to 'signaturedocs1/one-page.docx'.")
  end
end