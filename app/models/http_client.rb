module HttpClient
  def get_request(url)
    Faraday.get url
  end

  def post_request(url, body)
    Faraday.post(url, body.to_json, "Content-Type" => "application/json")
  end
end
