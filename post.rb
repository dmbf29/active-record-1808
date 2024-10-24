class Post
  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @url = attributes[:url]
    @votes = attributes[:votes]
  end

  # Post.all
  def self.all
    DB.results_as_hash = true
    results = DB.execute('SELECT * FROM posts')
    results.map do |post_hash|
      Post.new(post_hash)
    end
  end

  # Post.find(1)
  def self.find(id)
    DB.results_as_hash = true
    results = DB.execute('SELECT * FROM posts WHERE id = ?', id).first
    Post.new(results) if results
  end

  # instance.save
  def save
    if @id
      # update
    else
      # create
    end
  end

  # instance.destoy
  def destroy
    DB.execute('DELETE FROM posts where id = ?', @id)
  end
end
