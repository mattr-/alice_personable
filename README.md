# AlicePersonable

This handler will make Alice a little more personable.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add alice_personable to your list of dependencies in `mix.exs`:
    ```elixir
    defp deps do
      [
        {:websocket_client, github: "jeremyong/websocket_client"},
        {:alice, "~> 0.3"},
        {:alice_personable, "~> 0.0.1"}
      ]
    end
    ```

  2. Ensure alice_personable is started before your application:
    ```elixir
    def application do
      [applications: [:alice],
        mod: {
          Alice, [Alice.Handlers.Personable, ...]}]
    end
    ```

## Usage

Use `@alice help` for more information.
