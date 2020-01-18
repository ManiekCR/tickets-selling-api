json.array! @tickets do |ticket|
  json.extract! ticket, :quantity, :price, :currency
end
