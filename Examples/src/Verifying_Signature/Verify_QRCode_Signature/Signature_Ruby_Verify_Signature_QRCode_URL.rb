# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.requests.post_verification_qr_code_from_url_request import PostVerificationQrCodeFromUrlRequest
from groupdocs_signature_cloud.models.words_verify_qr_code_options_data import WordsVerifyQRCodeOptionsData

class Verify_Signature_QRCode_From_Url:

	@staticmethod
	def Post_Verify_Signature_QRCode_From_Url():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			Url = "https://www.dropbox.com/s/bzx1xm68zd0c910/PieChart.docx?dl=1"
			password = ""

			options = WordsVerifyQRCodeOptionsData()

			# set qr_code properties
			options.qr_code_type_name ="Aztec"
			options.text = "12345678"
			# set match type
			options.match_type ="Contains"
			#set pages for verify
			options.document_page_number = 1
				
			request = PostVerificationQrCodeFromUrlRequest(Url, options, password, Common_Utilities.storage_name)
			
			respose = api.post_verification_qr_code_from_url(request)

			print("Signature Verification Result: "+ str(respose.result));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
			