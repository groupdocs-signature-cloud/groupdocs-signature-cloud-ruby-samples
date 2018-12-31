# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.pdf_verify_qr_code_options_data import PdfVerifyQRCodeOptionsData
from groupdocs_signature_cloud.models.requests.post_verification_qr_code_request import PostVerificationQrCodeRequest

class Verify_Signature_QRCode:

	@staticmethod
	def Post_Verify_Signature_QRCode():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			fileName = "sample2.pdf"
			password = ""
			folder = ""

			options = PdfVerifyQRCodeOptionsData()

			# set qr_code properties
			options.qr_code_type_name ="Aztec"
			options.text = "12345678"
			# set match type
			options.match_type ="Contains"
			#set pages for verify
			options.document_page_number = 1
				
			request = PostVerificationQrCodeRequest(fileName, options, password, folder,Common_Utilities.storage_name)
			
			respose = api.post_verification_qr_code(request)

			print("Signature Verification Result: "+ str(respose.result));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
			