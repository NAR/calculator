defmodule CalculatorWeb.ComputeController do
  use CalculatorWeb, :controller

  def index(conn, params) do
    render(conn, "compute.html")
  end
end
