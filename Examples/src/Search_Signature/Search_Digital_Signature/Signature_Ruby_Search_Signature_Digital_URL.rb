# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.cells_search_digital_options_data import CellsSearchDigitalOptionsData
from groupdocs_signature_cloud.models.requests.post_search_digital_request import PostSearchDigitalRequest

class Search_Signature_Digital_From_Url:

	@staticmethod
	def Post_Search_Signature_Digital_From_Url():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			Url = "https://www.dropbox.com/s/o9k7gweapq8k15l/SignedForVerificationAll.xlsx?dl=1"
			password = ""

			options = CellsSearchDigitalOptionsData()

			request = PostSearchDigitalRequest(Url, options, password, Common_Utilities.storage_name)
			
			response = api.post_search_digital(request)

			print("Response: " + str(response));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
			