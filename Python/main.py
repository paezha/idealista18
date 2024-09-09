import os
import rdata
import urllib

file_names = ["Barcelona_POIS.rda", "Barcelona_Polygons.rda", "Barcelona_Sale.rda", "Madrid_POIS.rda",
              "Madrid_Polygons.rda",  "Madrid_Sale.rda", "Valencia_POIS.rda", "Valencia_Polygons.rda",
              "Valencia_Sale.rda", "properties_by_district.rda"]


def download_rdata():
    """
    Function that downloads the .rda files from Idealista repository.
    For each file, it is verified beforehand if the file is already in the /data folder in order to
    avoid unnecessary downloads
    """
    for rda_file in file_names:
        file_path = "data/" + rda_file
        if not os.path.isfile(file_path):
            urllib.request.urlretrieve("https://github.com/paezha/idealista18/raw/master/data/" + rda_file, file_path)
        else:
            continue


def read_data():
    """
    For each file located in /data folder, extract the information as a dataframe or a dictionary containing data
    During the execution of this function UserWarning related with rdata package may appear but can be ignored
    """
    barcelona_pois = rdata.read_rda("data/Barcelona_POIS.rda")
    barcelona_polygons = rdata.read_rda("data/Barcelona_Polygons.rda", default_encoding="utf8")
    barcelona_sale = rdata.read_rda("data/Barcelona_Sale.rda")
    madrid_pois = rdata.read_rda("data/Madrid_POIS.rda")
    madrid_polygons = rdata.read_rda("data/Madrid_Polygons.rda", default_encoding="utf8")
    madrid_sale = rdata.read_rda("data/Madrid_Sale.rda")
    valencia_pois = rdata.read_rda("data/Valencia_POIS.rda")
    valencia_polygons = rdata.read_rda("data/Valencia_Polygons.rda", default_encoding="utf8")
    valencia_sale = rdata.read_rda("data/Valencia_Sale.rda")
    properties_by_district = rdata.read_rda("data/properties_by_district.rda")

    print("Barcelona_POIS")
    print(barcelona_pois["Barcelona_POIS"].keys())
    barcelona_city_center = barcelona_pois["Barcelona_POIS"]["City_Center"]
    barcelona_metro = barcelona_pois["Barcelona_POIS"]["Metro"]
    barcelona_diagonal = barcelona_pois["Barcelona_POIS"]["Diagonal"]
    print(barcelona_city_center)
    print(barcelona_metro.iloc[0])
    print(barcelona_diagonal)

    print("\n")

    print("Barcelona_Polygons")
    print(barcelona_polygons['Barcelona_Polygons'].iloc[0])
    print("\n")

    print("Barcelona_Sale")
    print(barcelona_sale['Barcelona_Sale'].iloc[0])
    print("\n")

    print("Madrid_POIS")
    print(madrid_pois['Madrid_POIS'].keys())
    madrid_city_center = madrid_pois["Madrid_POIS"]["City_Center"]
    madrid_metro = madrid_pois["Madrid_POIS"]["Metro"]
    madrid_castellana = madrid_pois["Madrid_POIS"]["Castellana"]
    print(madrid_city_center)
    print(madrid_metro.iloc[0])
    print(madrid_castellana)
    print("\n")

    print("Madrid_Polygons")
    print(madrid_polygons['Madrid_Polygons'].iloc[0])
    print("\n")

    print("Madrid_Sale")
    print(madrid_sale['Madrid_Sale'].iloc[0])
    print("\n")

    print("Valencia_POIS")
    print(valencia_pois['Valencia_POIS'].keys())
    valencia_city_center = valencia_pois["Valencia_POIS"]["City_Center"]
    valencia_metro = valencia_pois["Valencia_POIS"]["Metro"]
    valencia_blasco = valencia_pois["Valencia_POIS"]["Blasco"]
    print(valencia_city_center)
    print(valencia_metro.iloc[0])
    print(valencia_blasco)
    print("\n")

    print("Valencia_Polygons")
    print(valencia_polygons['Valencia_Polygons'].iloc[0])
    print("\n")

    print("Valencia_Sale")
    print(valencia_sale['Valencia_Sale'].iloc[0])
    print("\n")

    print("properties_by_district")
    print(properties_by_district['properties_by_district'].iloc[0])
    print("\n")


if __name__ == '__main__':
    download_rdata()
    read_data()

