class HomesController < ApplicationController
  def top
    # 絞り込みがあれば、その内容で絞り込む
    if params[:genre].present?
      genre_keyword = params[:genre]
      @products = Product.where(genre: genre_keyword)
    else
      @products = Product.all
    end
    # uniqは、配列の重複している要素を消す
    @all_genre = Product.all.pluck(:genre).uniq
  end
end
