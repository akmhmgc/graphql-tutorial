module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_links, [LinkType], null: false
    field :hoge, HogeType, null: true

    # this method is invoked, when `all_link` fields is being resolved
    # これがリゾルバ
    def all_links
      Link.all
    end


    def hoge
      {name: '俺の名前はホゲ太郎'}
    end
  end
end
