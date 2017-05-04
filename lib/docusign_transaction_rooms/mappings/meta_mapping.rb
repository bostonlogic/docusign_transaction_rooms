module DocusignTransactionRooms
  class MetaMapping
    include Kartograph::DSL

    kartograph do
      mapping Meta
      root_key plural: 'entities', scopes: [:read]

      scoped :read do
        property :id
        property :name
        property :displayOrder
      end

      scoped :lone_wolf do
        property :code
        property :id
        property :name
        property :displayOrder
      end

    end
  end
end

# {
#   "entities": [
#     {
#       "id": "string",
#       "name": "string",
#       "displayOrder": 0
#     }
#   ]
# }

# [
#   {
#     "code": "string",
#     "id": "string",
#     "name": "string",
#     "displayOrder": 0
#   }
# ]
