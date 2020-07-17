# Import modules
require './Common.rb'

class DigitalSignature
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"

    $opts = GroupDocsSignatureCloud::SignDigitalOptions.new()
    $opts.signature_type = 'Digital'
    $opts.image_file_path = "signaturedocs\\signature.jpg"
    $opts.certificate_file_path = "signaturedocs\\temp.pfx"
    $opts.password = '1234567890'

    $settings = GroupDocsSignatureCloud::SignSettings.new()
    $settings.options = [$opts]

    $settings.save_options = GroupDocsSignatureCloud::SaveOptions.new()
    $settings.save_options.output_file_path = "signaturedocs\\signedDigitalOne_page.docx"
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::CreateSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.create_signatures($request)

    puts("Succeeded count: " + $response.succeeded.length.to_s)
  end
end