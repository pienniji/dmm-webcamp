class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)  # 1.&2.データを受け取り新規登録するためのインスタンスの作成
    if @list.save # 3.対象のカラムにデータが入力されていればデータをデータベースに保存するためのsaveメソッドを実行
      flash[:notice] = "投稿が成功しました"
      redirect_to list_path(@list.id) #4.トップ画面へリダイレクト
    else
      render :new #falseならば、新規投稿ページを再表示するように設定します。
    end
  end

  def index
    @lists = List.all #全てのlistテーブルの保存データを取得　今回は数のListレコードが取得できるので、複数形で@listsという変数名に
  end

  def show
    @list = List.find(params[:id]) #findメソッドは引数を受け取り、idカラムを引数と比べてレコードを取得してくるメソッド /lists/1    => List.find(params[:id]) => idが1のレコードを取得
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  def destroy
    list = List.find(params[:id])  # データ（レコード）を1件取得
    list.destroy  # データ（レコード）を削除
    redirect_to '/lists'  # 投稿一覧画面へリダイレクト
  end

  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
