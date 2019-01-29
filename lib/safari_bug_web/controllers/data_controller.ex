defmodule SafariBugWeb.DataController do
  use SafariBugWeb, :controller

  def iodata(conn, _params) do
    conn
    |> put_resp_header("content-type", "application/json")
    |> send_resp(200, Jason.encode_to_iodata!(output()))
  end

  def binary(conn, _params) do
    conn
    |> put_resp_header("content-type", "application/json")
    |> send_resp(200, Jason.encode!(output()))
  end

  @path to_string(:code.priv_dir(:safari_bug) ++ '/output.json')
  @data File.read!(@path)
  defp output() do
    Jason.decode!(@data)
  end
end
