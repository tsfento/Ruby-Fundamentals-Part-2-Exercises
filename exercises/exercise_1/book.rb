class Book
  def initialize(title, author)
    @title = title
    @author = author
  end

  attr_reader :title, :author

  def description
    "#{title} by #{author}"
  end
end
