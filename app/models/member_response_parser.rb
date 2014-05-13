class MemberResponseParser
  attr_accessor :govtrack_api_response, :govtrack_id

  def initialize(govtrack_api_response)
    @govtrack_api_response = govtrack_api_response
  end

  SALARY = 174_000

  def parse
    { first_name: first_name,
      last_name: last_name,
      chamber: chamber,
      full_name: full_name,
      party: party,
      photo_url: photo_url,
      salary: salary,
      state: state,
      start_date: start_date.min,
      current_roles: current_roles,
      current_role_type: current_role_type,
      year_of_start_date: year_of_start_date,
      starting_senator_salary: starting_senator_salary.last,
      year_of_end_date: year_of_end_date,
      cumulative_senator_salary: cumulative_senator_salary
    }
  end

  def last_name
    @govtrack_api_response['lastname']
  end

  def first_name
    @govtrack_api_response['firstname']
  end

  def chamber
    @govtrack_api_response['roles'].last['role_type'].capitalize
  end

  def full_name
    first_name + " " + last_name
  end

  def party
    @govtrack_api_response['roles'].last['party'].capitalize
  end

  def photo_url
    "https://www.govtrack.us/data/photos/#{govtrack_id}.jpeg"
  end

  def govtrack_id
    @govtrack_api_response['govtrack_id']
  end

  def salary
    SALARY
  end

  def state
    @govtrack_api_response['roles'].last['state']
  end

  def start_date
    current_roles.map do |role|
      role['startdate']
    end
  end

  def current_roles
    @govtrack_api_response['roles'].select do |role|
      current_role_type?(role['role_type'])
    end
  end

  def current_role_type?(role_type)
    role_type == current_role_type
  end

  def current_role_type
    @govtrack_api_response['roles'].last['role_type']
  end

  def year_of_start_date
    start = Date.parse(start_date.min)
    start.year
  end

  def starting_senator_salary
    starting_salary = SENATOR_SALARIES.select do |year, salary|
      if year <= year_of_start_date
        year
      end
    end
    starting_salary.to_a[1]
  end

  def year_of_end_date
    DateTime.now.year
  end

  def cumulative_senator_salary
    sum = 0
    last_year = year_of_start_date
    last_salary = 22_500

    SENATOR_SALARIES.each do |year, new_salary|
      if year >= year_of_start_date
        year_range = year - last_year
        updated_salary = last_salary * year_range
        sum += updated_salary
      end

      if year == year_of_end_date
        sum += new_salary
      end

      if year > last_year
        last_year = year
      end

      last_salary = new_salary
    end

    sum
  end
end
