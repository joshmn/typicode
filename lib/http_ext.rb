class HTTP::Response
  def parsed_response
    JSON.parse(to_s)
  end
end 