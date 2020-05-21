defmodule CalculatorWeb.ComputeController do
  use CalculatorWeb, :controller

  def index(conn, params) do
    a = String.to_integer(params["a"])
    b = String.to_integer(params["b"])
    result = case params["operation"] do
      "add" -> a+b
      "multiply" -> a*b
    end
    conn
    |> assign(:result, result)
    |> render("compute.html")
  end
end
