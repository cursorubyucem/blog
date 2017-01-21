class PrivateController < ApplicationController

	before_action :authenticate_seguridad_usuario!

end
