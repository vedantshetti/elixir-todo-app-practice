defmodule HelloWeb.TodoHTML do
  use HelloWeb, :html

  embed_templates "todo_html/*"

  @doc """
  Renders a todo form.

  The form is defined in the template at
  todo_html/todo_form.html.heex
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true
  attr :return_to, :string, default: nil

  def todo_form(assigns)
end
