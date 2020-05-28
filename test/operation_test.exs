defmodule CalculatorWeb.OperationTest do
  use CalculatorWeb.ConnCase

  use Wallaby.DSL

  test "add" do
{:ok, session} = Wallaby.start_session
  session
  |> visit("http://localhost:4000/calculator")

    #    {:ok, session} = Wallaby.start_session
    #session = Browser.visit(session, "/compute")
  end
end
