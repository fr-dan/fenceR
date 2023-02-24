




read_ss = function(folder = folder, file = file) {

  res = read_excel(here(folder, file),
                   sheet = "Sheet1",
                   col_names = T,
                   range = "I3:AV54",
                   trim_ws = T) %>%
    remove_empty() %>%
    rename(ref = 1,
           mill_name = 2,
           dom_soft = 3,
           dom_hard = 4,
           )
}


res = read_ss("data-raw", "23-02-23.xlsx")
