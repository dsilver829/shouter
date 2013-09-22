class Search
  extend ActiveModel::Naming
  attr_reader :term

  def initialize options = {}
    @term = options.fetch(:term, '')
  end

  def shouts
    Shout.search do
      fulltext term
    end
  end

  def to_partial_path
    'searches/search'
  end
end