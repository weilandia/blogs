def flatten_marquez(quote_array)
  index = 0
  while index <= quote_array.length
    quote_piece = quote_array[index]
    if quote_piece.kind_of?(Array)
      if quote_piece.empty?
        quote_array.delete_at index
      else
        inner_quote_piece = quote_piece.shift
        quote_array.insert index, inner_quote_piece
      end
    else
      index += 1
    end
  end
  quote_array
end


buendia = ["Many years later,",["as he faced", "the firing squad,",["Colonel Aureliano Buendía","was to remember","that distant afternoon"],"when his father","took him to"],"discover ice..."]

flatten_marquez(buendia)
