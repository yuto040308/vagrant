class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		# nameのデータ操作を許可するアクションメゾットを指定
		# 今回の場合は、ユーザ登録(sign_up)の際、ユーザ名(name)のデータ操作が許可される
		# ストロングパラメータと同様
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	end

end
