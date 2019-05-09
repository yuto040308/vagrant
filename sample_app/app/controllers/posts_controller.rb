class PostsController < ApplicationController
  def new
  	# 空のモデルをビューに渡す
  	@post = Post.new
  end

  def create
  	# ストロングパラメータを使用
  	# @post:インスタンス変数　-> ビューファイルに値の受け渡し可能
  	# post:ローカル変数 -> ビューファイルに値の受け渡しはできない。
  	post = Post.new(post_params)
  	# DBへ保存する
  	post.save
  	# トップ画面へリダイレクト
  	redirect_to post_path(post.id) # 詳細画面にリダイレクト
  end

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  # ストロングパラメータ指定（マスアサインメント脆弱性セキュリティ対策）
  # メゾットの前に、privateとしていすると、アクションとして認識しない。
  # アクションの最後に記載すること！！
  # ストロングパラメータは、フォームの入力値をコントローラのcreateや
  # Updateに渡す役割がある。
  private

  def post_params
  	params.require(:post).permit(:title, :body)
  end

end
