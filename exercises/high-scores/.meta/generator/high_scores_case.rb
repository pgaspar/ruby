require 'generator/exercise_case'

class HighScoresCase < Generator::ExerciseCase
  def workload
    [
      "scores = #{scores}",
      "output = #{expected.inspect}",
      "assert_equal output, HighScores.new(scores).#{property}"
    ]
  end
end
