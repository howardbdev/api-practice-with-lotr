
# this is a SERVICE class
# instances of this class don't represent "objects"
# it's just encapsulated related functionality

class APIAdapter
  BASE_URL = "https://the-one-api.herokuapp.com/v1"
  

  def self.get_movie_series()
    response = RestClient.get("#{BASE_URL}/movie", {"Authorization": "Bearer #{API_KEY}"})
    response_hash = JSON.parse(response.body)

    response_hash["docs"].each do |k, v|
      # instantiate Movie objects (or series objects)
      # Series.new(v)
    end

    binding.pry
  end
end

# Authorization: Bearer your-api-key-123
