class ApplicationController < ActionController::Base

	# devise標準で定義されていない、カラムを使用するので、
	# ログイン機能をbefore_actionで実装し、
	# ログインキーに今回追加したnameカラムを追加
	# deviseを実行する前に下記メゾットが実行される。
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	def configure_permitted_parameters
		# sing_upの際、nameのデータ操作を許可
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name,])
		# sing_inの際にも、nameのデータ操作を許可
		devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
	end

end
