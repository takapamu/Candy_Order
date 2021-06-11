class Batch::DataReset
  def self.data_reset
    Recommendation.destroy_all
    Product.all.shuffle.take(5).each do |product|
      Recommendation.create(recommendation_params(product))
    end
    #Recommendationの中に商品を追加させる
    p "おすすめの商品"

  end

  def self.recommendation_params(product)
    {
      genre_id: product.genre_id,
      product_id: product.id
    }
  end
end