# Function that changes the first Element to uppercase

```elixir
defmodule Blogger do

  @doc """
  Converting only the first element of a list to uppercase
    - The list contains three lements that are in lowercase; "nairobi","kisumu" and"eldoret"
    - The function uses the `case` control structure to pattern match on the list.
    - It then uses the `|` operator to match the first element (head) of the list and the remaining elements (tail).
    - Finally, uses the `String.upcase/1` function to convert the head to uppercase, and appends it to the remaining
       elements to create a new list.

        ## Output
       iex> Blogger.first_element_uppercase()
       ["NAIROBI", "kisumu", "eldoret"]
  """
  def first_element_uppercase do
    list= ["nairobi","kisumu","eldoret"]
    case list do
      [head|tail] -> [String.upcase(head)| tail]
    end
  end

end
```

```bash

```
