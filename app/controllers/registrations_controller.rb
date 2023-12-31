class RegistrationsController < Devise::RegistrationsController
  before_action :check_user, only: [:require_no_authentication, :destroy, :new, :create]
  # 新規登録もログイン中でも行えるようにする
  prepend_before_action :require_no_authentication, only: []


  def destroy
    user = User.find(params[:format])
    if user.destroy
      flash[:notice] = "ユーザーを削除しました。"
    else
      flash[:error] = "ユーザー削除に失敗しました。"
    end
    redirect_to users_path  # 管理者向けのユーザー一覧ページへのパスに変更してください
  end

  private

  def check_user
    unless current_user&.admin?
      redirect_to root_path, alert: "管理者権限が必要です。"
    end
  end

  protected
  def after_update_path_for(resource)
    # リダイレクト先のパスを指定
    users_path # ここに実際のパスを設定
  end
end
