class Shipper < ApplicationRecord
  include HttpClient

  def verify
    response = post_request(url, params)
    body = JSON.parse(response.body)
    update(response: body['response'], passed: body['passed'])
  end

  private

  def url
    'http://localhost:3001/integration_audit/verify_shipper'
  end

  def params
    {
      client_id: client_id,
      client_secret: client_secret
    }
  end
end
