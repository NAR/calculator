defmodule CalculatorWeb.CalculatorController do
  use CalculatorWeb, :controller

  def index(conn, _params) do
    render(conn, "calculator.html")
  end
end
