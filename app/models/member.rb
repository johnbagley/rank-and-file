class Member

  def self.find_by_name(name)
    api_response = HTTParty.get("https://www.govtrack.us/api/v2/person?q=#{URI.encode(name)}")
    govtrack_id = api_response["objects"][0]["id"]
    govtrack_api_response = HTTParty.get("https://www.govtrack.us/api/v2/person/#{govtrack_id}")
    new(govtrack_api_response, govtrack_id)
  end

  SALARY = 174_000

  def initialize(govtrack_api_response, govtrack_id)
    @govtrack_api_response = govtrack_api_response
    @govtrack_id = govtrack_id
  end

  def last_name
    @govtrack_api_response["lastname"]
  end

  def first_name
    @govtrack_api_response["firstname"]
  end

  def chamber
    @govtrack_api_response["roles"].last["role_type"].capitalize
  end

  def full_name
    first_name + " " + last_name
  end

  def party
    @govtrack_api_response["roles"].last["party"].capitalize
  end

  def photo_url
    "https://www.govtrack.us/data/photos/#{@govtrack_id}.jpeg"
  end

  def salary
    SALARY
  end

  def state
    @govtrack_api_response["roles"].last["state"]
  end

  def start_date
    current_roles.map do |role|
      role["startdate"]
    end
  end

  def current_roles
    @govtrack_api_response["roles"].select do |role|
      current_role_type?(role["role_type"])
    end
  end

  def current_role_type?(role_type)
    role_type == current_role_type
  end

  def current_role_type
    @govtrack_api_response["roles"].last["role_type"]
  end

  def year_of_start_date
    start = Date.parse(start_date.min)
    year_of_start_date = start.year
  end

  def senator_salary
    SENATOR_SALARIES.each do |year, value|
      if year_of_start_date == year
        return value
      end
    end
  end
end
