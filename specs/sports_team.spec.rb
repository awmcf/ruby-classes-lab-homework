require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Manchester United", ["Paul Pogba", "David De Gea", "Marcus Rashford"], "Ole Gunnar Solskjaer")
    end


    def test_get_team_name
      assert_equal("Manchester United", @team.team_name())
    end


    def test_get_players
      assert_equal(["Paul Pogba", "David De Gea", "Marcus Rashford"], @team.players)
    end

    def test_get_coach_name
      assert_equal("Ole Gunnar Solskjaer", @team.coach())
    end

    def test_set_new_coach
      @team.coach = "Mauricio Pochettino"
      assert_equal("Mauricio Pochettino", @team.coach())
    end

end

  # Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
  # For each property in the class make a getter method that can return them.
  # Create a setter method to allow the coach's name to be updated.
  # Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
  # Create a method that adds a new player to the players array.
  # Add a method that takes in a string of a player's name and checks to see if they are in the players array.
  # Add a points property into your class that starts at 0.
  # Create a method that takes in whether the team has won or lost and updates the points property for a win.
