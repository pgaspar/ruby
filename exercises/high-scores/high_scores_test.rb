require 'minitest/autorun'
require_relative 'high_scores'

# Common test data version: 1.0.0 f7c1cdc
class HighScoresTest < Minitest::Test
  def test_returns_the_list_of_scores
    # skip
    scores = [3, 5, 2, 7]
    output = [3, 5, 2, 7]
    assert_equal output, HighScores.new(scores).scores
  end

  def test_returns_the_last_score
    skip
    scores = [10, 0, 9, 3]
    output = 3
    assert_equal output, HighScores.new(scores).latest
  end

  def test_returns_the_highest_score
    skip
    scores = [4, 10, 7]
    output = 10
    assert_equal output, HighScores.new(scores).highest
  end

  def test_returns_personal_bests
    skip
    scores = [5, 3, 1]
    output = [5, 3, 1]
    assert_equal output, HighScores.new(scores).top
  end

  def test_returns_personal_bests_highest_to_lowest
    skip
    scores = [2, 1, 3]
    output = [3, 2, 1]
    assert_equal output, HighScores.new(scores).top
  end

  def test_returns_personal_bests_when_there_are_less_than_3
    skip
    scores = [3, 7]
    output = [7, 3]
    assert_equal output, HighScores.new(scores).top
  end

  def test_returns_personal_bests_when_there_is_only_one
    skip
    scores = [4]
    output = [4]
    assert_equal output, HighScores.new(scores).top
  end

  def test_returns_three_top_scores_from_a_long_list
    skip
    scores = [1, 3, 9, 3, 10, 2, 1, 0, 3, 4, 4, 7, 7]
    output = [10, 9, 7]
    assert_equal output, HighScores.new(scores).top
  end

  def test_returns_the_goal_when_highest_is_latest
    skip
    scores = [2, 4, 0, 3, 7]
    output = "Your latest score was 7. That's your personal best!"
    assert_equal output, HighScores.new(scores).goal
  end

  def test_returns_the_goal_when_not_highest_score
    skip
    scores = [2, 10, 0, 3, 7]
    output = "Your latest score was 7. That's 3 short of your personal best!"
    assert_equal output, HighScores.new(scores).goal
  end
end
