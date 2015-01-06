defmodule Calc do
    @moduledoc """
        Basic calculator module
    """

    @doc """
        Program entry point
        @param String operation to be performed (+, -, / or *)
    """
    def main(args) do
        opt = operation IO.gets "Select an operation to perform (+, -, / or *): "
        {a, _} = Integer.parse IO.gets "Enter first operand: "
        {b, _} = Integer.parse IO.gets "Enter second operand: "
        IO.puts opt.(a, b)
    end

    @doc """
        Returns the operation atom from a string
    """
    def operation(opt) do
        case String.to_atom String.replace(opt, "\n", "") do
            :/ ->
                &divide/2
            :* ->
                &multiply/2
            :+ ->
                &add/2
            :- ->
                &sub/2
            _ ->
                raise "Not a valid operation"
        end
    end

    @doc """
        Adds b to a
    """
    def add(a, b) do
        a + b
    end

    @doc """
        Substract b to a
    """
    def sub(a, b) do
        a - b
    end

    @doc """
        Multiplies a times b
    """
    def multiply(a, b) do
        a * b
    end

    @doc """
        Divides a with b
    """
    def divide(a, b) do
        a / b
    end
end
