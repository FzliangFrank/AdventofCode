library(readr)
library(stringr)
library(purrr)
d <- read_file("input/day_01_input.txt")
dd <-str_split(d, "\n\n") |> unlist()
ddd <- map(dd, str_split, "\n")
elf <- map_dbl(ddd, ~ sum(as.numeric(.x[[1]])))
elf <- elf[!is.na(elf)]

# detect_index(elf, ~.x == max(elf))
max(elf)
sort(elf, decreasing = T)[seq(3)] |> sum()


read_lines("input/day_01_input.txt")
read_files("input/day_01_input.txt")
read_delim("input/day_01_input.txt", )


d <-
  readr::read_lines("input/day_01_input.txt") |>
  as.numeric() |>
  tibble(x = _) |>
  mutate(g = case_when(is.na(x) ~ 1, TRUE ~ 0),
         g = cumsum(g)) |>
  filter(!is.na(x))

d |>
  group_by(g) |>
  summarise(calories = sum(x)) |>
  slice_max(calories, n=1)
