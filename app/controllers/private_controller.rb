class PrivateController < ApplicationController

	before_action :authenticate_seguridad_usuario!
	#before_action :user_for_paper_trail

	


end
