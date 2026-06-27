defmodule Galaxy.PingNodes do
  @moduledoc """
  Module to ping connected nodes (excluding curent node)
  """

  use GenServer
  require Logger

  def start_link(_) do
    GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
  end

  def ping() do
    Node.list()
    |> IO.inspect()
    |> Enum.map(&GenServer.call({__MODULE__, &1}, :ping))
    |> Logger.info()
  end

  @impl GenServer
  def init(state), do: {:ok, state}

  @impl GenServer
  def handle_call(:ping, from, state) do
    Logger.info("--- Receiving ping from #{inspect(from)}")

    {:reply, {:ok, node(), :pong}, state}
  end
end
