class Member

  def self.find_by_name(name)
    api_response = HTTParty.get("https://congress.api.sunlightfoundation.com/legislators?last_name=#{name}&apikey=acfdba04c94a4714b2c80d6c6a40329f")
    new(api_response)
  end

  SALARY = 174_000

  def initialize(api_response)
    @api_response = api_response
  end

  def photo
    @api_response["results"][0]["bioguide_id"]
  end

  def name
    first_name + " " + last_name
  end

  def last_name
    @api_response["results"][0]["last_name"]
  end

  def first_name
    @api_response["results"][0]["first_name"]
  end

  def term_start
    @api_response["results"][0]["term_start"]
  end

  def party
    '(' + @api_response["results"][0]["party"] + ')'
  end

  def chamber
    @api_response["results"][0]["chamber"].to_s.capitalize
  end

  def salary
    SALARY
  end

  def state
    @api_response["results"][0]["state"]
  end

end
