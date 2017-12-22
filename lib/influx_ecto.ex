defmodule InfluxEcto do
  @moduledoc """
  InfluxEcto is an Ecto adapter for InfluxDB.

  Most of this is still work in progress.
  """

  @behaviour Ecto.Adapter

  @timestamp_unit :millisecond

  @doc false
  defmacro __before_compile__(_opts), do: :ok

  @doc """
  Make sure all the necessary apps for InfluxEcto to run are started.
  """
  def ensure_all_started(_repo, type) do
    {:ok, _} = Application.ensure_all_started(:instream, type)

    {:ok, [:instream]}
  end

  @doc """
  Returns the childspec that starts the adapter process.
  """
  def child_spec(_repo, _opts), do: Supervisor.Spec.supervisor(Supervisor, [[], [strategy: :one_for_one]])

  @doc false
  def autogenerate(_), do: System.system_time(@timestamp_unit)
end
