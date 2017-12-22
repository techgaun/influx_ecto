defmodule InfluxEcto do
  @moduledoc """
  InfluxEcto is an Ecto adapter for InfluxDB.

  Most of this is still work in progress.
  """

  @behaviour Ecto.Adapter

  defmacro __before_compile__(_opts), do: :ok
end
