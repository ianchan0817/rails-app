json.offset @offset
json.limit @limit
json.total @total
json.items @people do |person|
  json.extract! person, :first_name
end
