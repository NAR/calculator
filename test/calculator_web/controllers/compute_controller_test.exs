defmodule CalculatorWeb.ComputeControllerTest do
  use CalculatorWeb.ConnCase

  test "add", %{conn: conn} do
    conn = get(conn, "/compute", %{a: "50", b: "50", operation: "add"})
    assert html_response(conn, 200) =~ "Result: 100"
  end

  test "multiply", %{conn: conn} do
    conn = get(conn, "/compute", %{a: "50", b: "50", operation: "multiply"})
    assert html_response(conn, 200) =~ "Result: 2500"
  end
end
