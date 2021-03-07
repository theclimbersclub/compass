defmodule CompassWeb.PageLiveTest do
  use CompassWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "to your club portal"
    assert render(page_live) =~ "to your club portal"
  end
end
