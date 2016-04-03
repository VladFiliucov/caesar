defmodule Caesar.CypherTest do
  use ExUnit.Case
  doctest Caesar.Cypher

  import Caesar.Cypher

  test "encrypt shift cypher mapping" do
    assert encrypt("abcd", 1) == "zabc"
  end

  test "encrypt handles capital letters" do
    assert encrypt("abCD", 1) == "zaBC"
  end

  test "encrypt handles spaces" do
    assert encrypt("ab cd", 1) == "za bc"
  end

  test "encrypt handles large shift numbers" do
    assert encrypt("abcd", 27)
  end
end
