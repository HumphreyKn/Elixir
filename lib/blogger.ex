defmodule Blogger do
  @spec fetch_blog :: any
  def fetch_blog do
    url = "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"
    {:ok, %HTTPoison.Response{body: body}}= HTTPoison.get(url)
    #Jason.decode!(body)
    body
    #{:ok, %HTTPoison.Response{body: body}}=HTTPoison.get(url)
    #body
  end

  @spec list_uppercase(my_list::list()) :: list
  def list_uppercase(my_list) do
    Enum.map(my_list, fn(x)->String.upcase(x) end)
  end
  @spec list_uppercase2 :: list
  def list_uppercase2() do
    Enum.map(["nairobi","kisumu","eldoret"], &String.upcase/1)
  end

  @spec first_element_uppercase :: [binary, ...]
  @doc """
  Converting only the first element of a list to uppercase
    - The list contains three lements that are in lowercase; "nairobi","kisumu" and"eldoret"
    - The function uses the `case` control structure to pattern match on the list.
    - It then uses the `|` operator to match the first element (head) of the list and the remaining elements (tail).
    - Finally, uses the `String.upcase/1` function to convert the head to uppercase, and appends it to the remaining
       elements to create a new list.
  """
  def first_element_uppercase do
    list= ["nairobi","kisumu","eldoret"]
    case list do
      [head|tail] -> [String.upcase(head)| tail]
    end
  end

end
