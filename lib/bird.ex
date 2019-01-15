defmodule ElixirRefactoring.Bird do

  defstruct type: nil, number_of_coconuts: 0, voltage: 0

  def plumage(bird) do
    case bird.type do
      "EuropeanSwallow" ->
        "average"
      "AfricanSwallow" ->
        if bird.number_of_coconuts > 2 do
          "tired"
        else
          "average"
        end
      "NorweiganParrot" ->
        if bird.voltage > 100 do
          "scorched"
        else
          "beautiful"
        end
    end
  end
end
