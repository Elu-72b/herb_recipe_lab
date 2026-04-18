class HerbsController < ApplicationController
  before_action :set_herb, only: [:show, :edit, :update, :destroy]

  def index
    @herbs = Herb.all
  end

  def show
  end

  def new
    @herb = Herb.new
  end

  def create
    @herb = Herb.new(herb_params)
    if @herb.save
      redirect_to @herb, notice: "ハーブを登録しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @herb.update(herb_params)
      redirect_to @herb, notice: "ハーブ情報を更新しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @herb.destroy
    redirect_to herbs_path, notice: "ハーブを削除しました"
  end

  private

  def set_herb
    @herb = Herb.find(params[:id])
  end

  def herb_params
    # :imageをストロングパラメーターに追加
    params.require(:herb).permit(:name, :description, :caution, :image)
  end
end