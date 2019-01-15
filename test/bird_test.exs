defmodule BirdTest do
  use ExUnit.Case

  alias ElixirRefactoring.Bird

  test "European Swallow Plumage" do
    bird = %Bird{ type: "EuropeanSwallow"}
    assert Bird.plumage(bird) == "average"
  end

  test "African Swallow plumage" do
    bird = %Bird{ type: "AfricanSwallow", number_of_coconuts: 3}
    assert Bird.plumage(bird) == "tired"
    bird = %Bird{ type: "AfricanSwallow", number_of_coconuts: 1}
    assert Bird.plumage(bird) == "average"
  end

  test "Norweigan Parrot plumage" do
    bird = %Bird{ type: "NorweiganParrot", voltage: 101}
    assert Bird.plumage(bird) == "scorched"
    bird = %Bird{ type: "NorweiganParrot", voltage: 1}
    assert Bird.plumage(bird) == "beautiful"
  end
end
