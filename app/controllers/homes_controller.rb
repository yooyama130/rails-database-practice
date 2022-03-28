class HomesController < ApplicationController
  def top
    # 絞り込みがあれば、その内容で絞り込む
    if params[:genre].present?
      # SQL文表示に使う------------------
      @sql = "sort_genre"
      @genre_keyword = params[:genre]
      @table_name = Product.table_name
      # SQL文表示に使う　ここまで------------------
      @products = Product.where(genre: @genre_keyword)
    else
      @products = Product.all
    end
    # uniqは、配列の重複している要素を消す
    @all_genre = Product.all.pluck(:genre).uniq
  end
end
