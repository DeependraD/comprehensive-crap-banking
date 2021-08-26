
############# 2017
ft_2017_dir <- "./data/Annual Foreign Trade Statistics, 2017-09-20-20-53-32.xlsx"

ft_2017_quantity_comparison <- readxl::read_xlsx(ft_2017_dir, 
                                                 sheet = "1_Trade_Direction", range = "A2:E9")
ft_2017_balance_country <- readxl::read_xlsx(ft_2017_dir, 
                                             sheet = "3_Trade_Balance_Country", range = "A3:E172")
ft_2017_customwise_trade <- readxl::read_xlsx(ft_2017_dir, 
                                              sheet = "6_Customwise Trade", range = "A3:F19")
ft_2017_imports_commodity_partner <- readxl::read_xlsx(ft_2017_dir, 
                                                       sheet = "4_Imports_By_Commodity_Partner", range = "A2:F24955")
ft_2017_imports_commodity <- readxl::read_xlsx(ft_2017_dir, 
                                               sheet = "7_Imports_By_Commodities", range = "A2:F4711")
ft_2017_exports_commodity_partner <- readxl::read_xlsx(ft_2017_dir, 
                                                       sheet = "8_Exports _By_Commodity_Partner", range = "A2:F3992")

ft_2017_exports_commodity <- readxl::read_xlsx(ft_2017_dir, 
                                               sheet = "9_Exports_By_Commodities", range = "A2:E1136")

############# 2018
ft_2018_dir <- "./data/Annual Foreign Trade Statistics, 207475 (201718)_2018-11-30-11-16-30.xlsx"
readxl::excel_sheets(ft_2018_dir)

ft_2018_quantity_comparison <- readxl::read_xlsx(ft_2018_dir, sheet = "1_2_Trade_Direction", range = "A2:E9")

ft_2018_customwise_trade1 <- readxl::read_xlsx(ft_2018_dir, sheet = "3_4Customwise Trade", range = "A3:F20") # top import custom points based on import
ft_2018_customwise_trade2 <- readxl::read_xlsx(ft_2018_dir, sheet = "3_4Customwise Trade", range = "A23:F27", col_names = c("SN", "Customs Offices", "Imports", "Imports Share (%)", "Exports", "Exports Share (%)")) # top import custom points based on import

ft_2018_customwise_trade <- bind_rows(ft_2018_customwise_trade1 %>% 
                                        mutate(SN = as.numeric(SN)), 
                                      ft_2018_customwise_trade2)

ft_2018_balance_country <- readxl::read_xlsx(ft_2018_dir, 
                                             sheet = "6_Trade_Balance_Country", range = "A3:E158")
ft_2018_imports_commodity <- readxl::read_xlsx(ft_2018_dir, 
                                               sheet = "7_Imports_By_Commodities", range = "A3:F4736")
ft_2018_exports_commodity <- readxl::read_xlsx(ft_2018_dir, 
                                               sheet = "9_Exports_By_Commodities", range = "A3:E1170")
ft_2018_imports_commodity_partner <- readxl::read_xlsx(ft_2018_dir, 
                                                       sheet = "8_Imports_By_Commodity_Partner", range = "A3:F24682")
ft_2018_exports_commodity_partner <- readxl::read_xlsx(ft_2018_dir, 
                                                       sheet = "10_Exports_By_Commodity_Partner", range = "A3:F4045")

############# 2019
ft_2019_dir <- "./data/Annual Foreign Trade Statistics, 207576 (201820)_2019-08-29-22-17-57.xlsx"
readxl::excel_sheets(ft_2019_dir)

ft_2019_quantity_comparison <- readxl::read_xlsx(ft_2019_dir, 
                                                 sheet = "1_Trade_Direction", range = "A2:E10")

ft_2019_customwise_trade <- readxl::read_xlsx(ft_2019_dir, 
                                              sheet = "7_Customwise Trade", range = "A3:F28")
ft_2019_balance_country <- readxl::read_xlsx(ft_2019_dir, 
                                             sheet = "3_Trade_Balance_Country", range = "A3:E161")
ft_2019_imports_commodity <- readxl::read_xlsx(ft_2019_dir, 
                                               sheet = "4_Imports_By_Commodities", range = "A2:F4786")
ft_2019_exports_commodity <- readxl::read_xlsx(ft_2019_dir, 
                                               sheet = "5_Exports_By_Commodities", range = "A2:E1049")

############# import-export-balance (history)
ft_ieb <- readxl::read_xlsx(ft_2018_dir, sheet = "1_2_Trade_Direction", range = "A18:D26") # figures in '000 NPR
