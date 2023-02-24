




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
           imp_soft = 5,
           imp_hard = 6,
           eng_soft = 7,
           eng_hard = 8,
           sco_soft = 9,
           sco_hard = 10,
           wal_soft = 11,
           wal_hard = 12,
           ni_soft = 13,
           ni_hard = 14,
           rf_soft = 15,
           rf_hard = 16,
           bio_soft = 17,
           bio_hard = 18)
}


res = read_ss("data-raw", "23-02-23.xlsx")
