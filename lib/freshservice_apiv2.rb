require 'rest-client'
require 'json'

class FreshserviceApi
  attr_accessor :header,:username,:password,:apikey,:baseurl



  class AlreadyExistedError < StandardError; end # have to add better error handling #ToDO
  class ConnectionError < StandardError; end


  def initialize(uri)
    @baseurl = uri.chomp('/')
  end

  def get(uri)
    begin
      pick_header
      request = RestClient::Resource.new(baseurl+uri)
      response = request.get(@header)
      return response.code,JSON.parse(response)
    rescue RestClient::Exception => e
      return e.response.code, JSON.parse(e.response.body)
    end
  end

  def delete(uri)
    begin
      pick_header
      request = RestClient::Resource.new(baseurl+uri)
      response = request.delete(@header)
      return response.code,JSON.parse(response)
    rescue RestClient::Exception => e
      return e.response.code, JSON.parse(e.response.body)
    end
  end

  def update(uri,data)
    begin
      pick_header
      raise StandardError, "An ID is required to delete" if args.size.eql? 0
      request = RestClient::Resource.new(baseurl+uri)
      response = request.put(data,@header)
      return response.code,JSON.parse(response)
    rescue RestClient::Exception => e
      return e.response.code, JSON.parse(e.response.body)
    end
  end

  def post(uri,data)
    begin
      pick_header
      request = RestClient::Resource.new(baseurl+uri)
      response = request.post(data,@header)
      return response.code,JSON.parse(response)
    rescue RestClient::Exception => e
      return e.response.code, JSON.parse(e.response.body)
    end

  end

  protected

  def pick_header
    @header = @header != nil ? @header : { 'Content-Type' => 'application/json' }
    @header['Authorization'] = authenticate
  end

  def authenticate
    if (@username) && (@password) && (@apikey == nil)
      pass = Base64.encode64("#{@username}:#{@password}").gsub(/\n/,"")
      pass
    elsif @apikey
      encoded = Base64.encode64("#{@apikey}:X")
      "Basic #{encoded}"
    end
  end

end
