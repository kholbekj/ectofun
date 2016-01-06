defmodule CommonQueries do
  defmacro __using__(_) do
    import Ecto.Query

    quote do
      def count do
        from x in module,
        select: count(x.id)
      end

      def last do
        from x in module,
        order_by: [desc: :id],
        limit: 1
      end

      def first do
        from x in module,
        limit: 1
      end

      defp module do
        __info__(:module)
      end
    end
  end
end
