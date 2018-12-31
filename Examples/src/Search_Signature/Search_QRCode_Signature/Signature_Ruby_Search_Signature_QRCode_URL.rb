# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.cells_search_qr_code_options_data import CellsSearchQRCodeOptionsData
from groupdocs_signature_cloud.models.requests.post_search_qr_code_from_url_request import PostSearchQrCodeFromUrlRequest

class Search_Signature_QRCode_From_Url:

	@staticmethod
	def Post_Search_Signature_QRCode_From_Url():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			Url = "https://www.dropbox.com/s/o9k7gweapq8k15l/SignedForVerificationAll.xlsx?dl=1"
			password = ""

			options = CellsSearchQRCodeOptionsData()

			# set qrcode properties
			options.qr_code_type_name ="Aztec"
			options.text = "12345678"
			# set match type
			options.match_type ="Contains"
			#set pages for search
			options.document_page_number = 1

			request = PostSearchQrCodeFromUrlRequest(Url, options, password, Common_Utilities.storage_name)
			
			response = api.post_search_qr_code_from_url(request)

			print("Searched Count: " + str(len(response.signatures)));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
			