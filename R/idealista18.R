#' idealista18: A data package with real estate listings in Spain from the idealista data base.
#'
#' This package contains four quarterly extractions with the set of apartments listed on idealista during 2018,
#' the package contains three data items for the three spanish cities of Madrid, Barcelona and Valencia:
#'
#' * Polygons for each city neighborhood
#' * Listing ads (referred also as assets)
#' * Points of Interest for each city
#'
#'
#' @docType package
#' @name idealista18
#' @details Escribir algo
#'
#' @author
#'   \tabular{ll}{
#'   David Rey \tab \email{drey@@idealista.com} \cr
#'   Pelayo Arbues \tab \email{pgarbues@@idealista.com} \cr
#'   Fernando López  \tab \email{fernando.lopez@@upct.es} \cr
#'   Antonio Páez \tab \email{paezha@@gmail.com} \cr
#'   }
#'
#' @references \url{https://github.com/paezha/Reproducible-Research-Workflow}
NULL

#' Sale prices of residential property in Barcelona in 2018.
#'
#' A dataset containing information about 84,280 real estate listings on idealista
#' in Barcelona during 2018.
#'
#' @format An object of class `sf` (inherits from `data.frame`) with 84,280 rows and 57 variables:
#' \describe{
#'   \item{ASSETID}{Unique identifier of the asset}
#'   \item{PERIOD}{Date YYYYMM, indicates the quarter when the ad was extracted we used YYYY03 for the 1st Q, YYYY06 the 2nd, YYYY09 for the 3rd and YYYY12 for the 4th}
#'   \item{PRICE}{Asking price for the ad at idealista expressed in euros}
#'   \item{UNITPRICE}{Price in euros per square meter}
#'   \item{ADTYPOLOGYID}{Asset Typology (home, chalet)}
#'   \item{ADOPERATIONID}{Asset Operation (rent, sales)}
#'   \item{CONSTRUCTEDAREA}{Home built area in sq.m}
#'   \item{ROOMNUMBER}{Number of bedrooms}
#'   \item{BATHNUMBER}{Number of bathrooms}
#'   \item{HASTERRACE}{Dummy variable for terrace (takes 1 if there is a terrace, 0 otherwise)}
#'   \item{HASLIFT}{Dummy variable for lift (takes 1 if there is a lift in the building, 0 otherwise)}
#'   \item{HASAIRCONDITIONING}{Dummy variable for AA (takes 1 if there is a AA, 0 otherwise)}
#'   \item{AMENITYID}{Indicates the amenities included (1 - no furniture, no kitchen amenities, 2 - kitchen amenities, no furniture, 3 - kitchen amenities, furniture)}
#'   \item{HASPARKINGSPACE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{ISPARKINGSPACEINCLUDEDINPRICE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{PARKINGSPACEPRICE}{Price of parking Space in euros}
#'   \item{HASNORTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is North in the Ad, 0 otherwise) - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASSOUTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is South in the Ad, 0 otherwise)  - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASEASTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is East in the Ad, 0 otherwise)  - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASWESTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is West in the Ad, 0 otherwise)  - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASBOXROOM}{Dummy variable for boxroom (takes 1 if boxroom is included in the Ad, 0 otherwise)}
#'   \item{HASWARDROBE}{Dummy variable for wardrobe (takes 1 if wardrobe is included in the Ad, 0 otherwise)}
#'   \item{HASSWIMMINGPOOL}{Dummy variable for swimming pool (takes 1 if swimming pool is included in the Ad, 0 otherwise)}
#'   \item{HASDOORMAN}{Dummy variable for doorman (takes 1 if there is a doorman in the building, 0 otherwise)}
#'   \item{HASGARDEN}{Dummy variable for garden (takes 1 if there is a garden in the building, 0 otherwise)}
#'   \item{ISDUPLEX}{Dummy variable for duplex (takes 1 if it is a duplex, 0 otherwise)}
#'   \item{ISSTUDIO}{Dummy variable for bachelor apartment (studio in Spanish) (takes 1 if it is a single-person apartment, 0 otherwise)}
#'   \item{ISINTOPFLOOR}{Dummy variable indicating if the apartment is located in the top floor (takes 1 on the top floor 0 otherwise)}
#'   \item{CONSTRUCTIONYEAR}{Construction year (source: advertiser)}
#'   \item{FLOORCLEAN}{Indicates flat floornumber starting from the 0 value for groung floor (source: advertiser)}
#'   \item{FLATLOCATIONID}{Indicates the kind of views the flat has (1 - external, 2 - internal)}
#'   \item{CADCONSTRUCTIONYEAR}{Construction year as of cadastral source (source: cadastre), note this figure can differ from the one given by the advertiser}
#'   \item{CADMAXBUILDINGFLOOR}{Max building floor (source: cadastre)}
#'   \item{CADDWELLINGCOUNT}{Dwelling count in the building (source: cadastre)}
#'   \item{CADASTRALQUALITYID}{Cadastral quality (source: cadastre)}
#'   \item{BUILTTYPEID_1}{Dummy value for flat condition: 1 new development 0 otherwise (source: advertiser))}
#'   \item{BUILTTYPEID_2}{Dummy value for flat condition: 1 second hand to be restored 0 otherwise (source: advertiser))}
#'   \item{BUILTTYPEID_3}{Dummy value for flat condition: 1 second hand in good condition 0 otherwise (source: advertiser))}
#'   \item{DISTANCE_TO_CITY_CENTER}{Distance to center of city in km}
#'   \item{DISTANCE_TO_DIAGONAL}{Distance to Avinguda Diagonal in km; Diagonal is a major street that cuts across the city diagonally to the street grid}
#'   \item{geometry}{geometry of simple features}
#'   }
#'
#' @docType data
#' @keywords datasets
#' @name Barcelona_Sale
#' @usage data(Barcelona_Sale)
#' @source Idealista (https://www.idealista.com/)
"Barcelona_Sale"
#' @examples
#'  library(idealista18)
#'  data(Barcelona_Sale)
#'  summary(Barcelona_Sale$PRICE)
"Barcelona_Sale"

#' Sale prices of residential property in Madrid in 2018.
#'
#' A dataset containing information about 156,016 real estate listings on idealista
#' in Madrid during 2018.
#'
#' @format An object of class `sf` (inherits from `data.frame`) with 156,016 rows and 57 variables:
#' \describe{
#'   \item{ASSETID}{Unique identifier of the asset}
#'   \item{PERIOD}{Date YYYYMM, indicates the quarter when the ad was extracted we used YYYY03 for the 1st Q, YYYY06 the 2nd, YYYY09 for the 3rd and YYYY12 for the 4th}
#'   \item{PRICE}{Price at idealista expressed in euros}
#'   \item{UNITPRICE}{Price in euros per square meter}
#'   \item{ADTYPOLOGYID}{Asset Typology (home, chalet)}
#'   \item{ADOPERATIONID}{Asset Operation (rent, sales)}
#'   \item{CONSTRUCTEDAREA}{Home built area in sq.m}
#'   \item{ROOMNUMBER}{Number of bedrooms}
#'   \item{BATHNUMBER}{Number of bathrooms}
#'   \item{HASTERRACE}{Dummy variable for terrace (takes 1 if there is a terrace, 0 otherwise)}
#'   \item{HASLIFT}{Dummy variable for lift (takes 1 if there is a lift in the building, 0 otherwise)}
#'   \item{HASAIRCONDITIONING}{Dummy variable for AA (takes 1 if there is a AA, 0 otherwise)}
#'   \item{AMENITYID}{Indicates the amenities included (1 - no furniture, no kitchen amenities, 2 - kitchen amenities, no furniture, 3 - kitchen amenities, furniture)}
#'   \item{HASPARKINGSPACE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{ISPARKINGSPACEINCLUDEDINPRICE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{PARKINGSPACEPRICE}{Price of parking Space in euros}
#'   \item{HASNORTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is North in the Ad, 0 otherwise) - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASSOUTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is South in the Ad, 0 otherwise)  - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASEASTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is East in the Ad, 0 otherwise)  - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASWESTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is West in the Ad, 0 otherwise)  - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASBOXROOM}{Dummy variable for boxroom (takes 1 if boxroom is included in the Ad, 0 otherwise)}
#'   \item{HASWARDROBE}{Dummy variable for wardrobe (takes 1 if wardrobe is included in the Ad, 0 otherwise)}
#'   \item{HASSWIMMINGPOOL}{Dummy variable for swimming pool (takes 1 if swimming pool is included in the Ad, 0 otherwise)}
#'   \item{HASDOORMAN}{Dummy variable for doorman (takes 1 if there is a doorman in the building, 0 otherwise)}
#'   \item{HASGARDEN}{Dummy variable for garden (takes 1 if there is a garden in the building, 0 otherwise)}
#'   \item{ISDUPLEX}{Dummy variable for duplex (takes 1 if it is a duplex, 0 otherwise)}
#'   \item{ISSTUDIO}{Dummy variable for bachelor apartment (studio in Spanish) (takes 1 if it is a single-person apartment, 0 otherwise)}
#'   \item{ISINTOPFLOOR}{Dummy variable indicating if the apartment is located in the top floor (takes 1 on the top floor 0 otherwise)}
#'   \item{CONSTRUCTIONYEAR}{Construction year (source: advertiser)}
#'   \item{FLOORCLEAN}{Indicates flat floornumber starting from the 0 value for groung floor (source: advertiser)}
#'   \item{FLATLOCATIONID}{Indicates the kind of views the flat has (1 - external, 2 - internal)}
#'   \item{CADCONSTRUCTIONYEAR}{Construction year as of cadastral source (source: cadastre), note this figure can differ from the one given by the advertiser}
#'   \item{CADMAXBUILDINGFLOOR}{Max building floor (source: cadastre)}
#'   \item{CADDWELLINGCOUNT}{Dwelling count in the building (source: cadastre)}
#'   \item{CADASTRALQUALITYID}{Cadastral quality (source: cadastre)}
#'   \item{BUILTTYPEID_1}{Dummy value for flat condition: 1 new development 0 otherwise (source: advertiser))}
#'   \item{BUILTTYPEID_2}{Dummy value for flat condition: 1 second hand to be restored 0 otherwise (source: advertiser))}
#'   \item{BUILTTYPEID_3}{Dummy value for flat condition: 1 second hand in good condition 0 otherwise (source: advertiser))}#'
#'   \item{DISTANCE_TO_CITY_CENTER}{Distance to center of city in km}
#'   \item{DISTANCE_TO_CASTELLANA}{Distance to Paseo de la Castellana in km; la Castellana is a major street that cuts across the city from South to North}
#'   \item{geometry}{geometry of simple features}
#'   }
#'
#' @docType data
#' @keywords datasets
#' @name Madrid_Sale
#' @usage data(Madrid_Sale)
#' @source Idealista (https://www.idealista.com/)
"Madrid_Sale"
#' @examples
#'  library(idealista18)
#'  data(Madrid_Sale)
#'  summary(Madrid_Sale$PRICE)
"Madrid_Sale"

#' Sale prices of residential property in Valencia in 2018.
#'
#' A dataset containing information about 79,360 real estate listings on idealista
#' in Valencia during 2018.
#'
#' @format An object of class `sf` (inherits from `data.frame`) with 79,360 rows and 59 variables:
#' \describe{
#'   \item{ASSETID}{Unique identifier of the asset}
#'   \item{PERIOD}{Date YYYYMM, indicates the quarter when the ad was extracted we used YYYY03 for the 1st Q, YYYY06 the 2nd, YYYY09 for the 3rd and YYYY12 for the 4th}
#'   \item{PRICE}{Price at idealista expressed in euros}
#'   \item{UNITPRICE}{Price in euros per square meter}
#'   \item{ADTYPOLOGYID}{Asset Typology (home, chalet)}
#'   \item{ADOPERATIONID}{Asset Operation (rent, sales)}
#'   \item{CONSTRUCTEDAREA}{Home built area in sq.m}
#'   \item{ROOMNUMBER}{Number of bedrooms}
#'   \item{BATHNUMBER}{Number of bathrooms}
#'   \item{HASTERRACE}{Dummy variable for terrace (takes 1 if there is a terrace, 0 otherwise)}
#'   \item{HASLIFT}{Dummy variable for lift (takes 1 if there is a lift in the building, 0 otherwise)}
#'   \item{HASAIRCONDITIONING}{Dummy variable for AA (takes 1 if there is a AA, 0 otherwise)}
#'   \item{AMENITYID}{Indicates the amenities included (1 - no furniture, no kitchen amenities, 2 - kitchen amenities, no furniture, 3 - kitchen amenities, furniture)}
#'   \item{HASPARKINGSPACE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{ISPARKINGSPACEINCLUDEDINPRICE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{PARKINGSPACEPRICE}{Price of parking Space in euros}
#'   \item{HASNORTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is North in the Ad, 0 otherwise) - *Important note:* orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASSOUTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is South in the Ad, 0 otherwise)  - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASEASTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is East in the Ad, 0 otherwise)  - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASWESTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is West in the Ad, 0 otherwise)  - Important note: orientation features are not orthogonal features, a house oriented to the north can be also oriented to the east}
#'   \item{HASBOXROOM}{Dummy variable for boxroom (takes 1 if boxroom is included in the Ad, 0 otherwise)}
#'   \item{HASWARDROBE}{Dummy variable for wardrobe (takes 1 if wardrobe is included in the Ad, 0 otherwise)}
#'   \item{HASSWIMMINGPOOL}{Dummy variable for swimming pool (takes 1 if swimming pool is included in the Ad, 0 otherwise)}
#'   \item{HASDOORMAN}{Dummy variable for doorman (takes 1 if there is a doorman in the building, 0 otherwise)}
#'   \item{HASGARDEN}{Dummy variable for garden (takes 1 if there is a garden in the building, 0 otherwise)}
#'   \item{ISDUPLEX}{Dummy variable for duplex (takes 1 if it is a duplex, 0 otherwise)}
#'   \item{ISSTUDIO}{Dummy variable for bachelor apartment (studio in Spanish) (takes 1 if it is a single-person apartment, 0 otherwise)}
#'   \item{ISINTOPFLOOR}{Dummy variable indicating if the apartment is located in the top floor (takes 1 on the top floor 0 otherwise)}
#'   \item{CONSTRUCTIONYEAR}{Construction year (source: advertiser)}
#'   \item{FLOORCLEAN}{Indicates flat floornumber starting from the 0 value for groung floor (source: advertiser)}
#'   \item{FLATLOCATIONID}{Indicates the kind of views the flat has (1 - external, 2 - internal)}
#'   \item{CADCONSTRUCTIONYEAR}{Construction year as of cadastral source (source: cadastre), note this figure can differ from the one given by the advertiser}
#'   \item{CADMAXBUILDINGFLOOR}{Max building floor (source: cadastre)}
#'   \item{CADDWELLINGCOUNT}{Dwelling count in the building (source: cadastre)}
#'   \item{CADASTRALQUALITYID}{Cadastral quality (source: cadastre)}
#'   \item{BUILTTYPEID_1}{Dummy value for flat condition: 1 new development 0 otherwise (source: advertiser))}
#'   \item{BUILTTYPEID_2}{Dummy value for flat condition: 1 second hand to be restored 0 otherwise (source: advertiser))}
#'   \item{BUILTTYPEID_3}{Dummy value for flat condition: 1 second hand in good condition 0 otherwise (source: advertiser))}
#'   \item{DISTANCE_TO_CITY_CENTER}{Distance to center of city in km}
#'   \item{DISTANCE_TO_METRO}{Distance to the nearest subway entrance in km}
#'   \item{DISTANCE_TO_BLASCO}{Distance to Blasco Ibáñez Avenue in km; Blasco Ibañez is a major street in the city}
#'   \item{geometry}{geometry of simple features}
#'   }
#'
#' @docType data
#' @keywords datasets
#' @name Valencia_Sale
#' @usage data(Valencia_Sale)
#' @source Idealista (https://www.idealista.com/)
"Valencia_Sale"
#' @examples
#'  library(idealista18)
#'  data(Valencia_Sale)
#'  summary(Valencia_Sale$PRICE)
"Valencia_Sale"

#' Neighborhood polygons in Barcelona.
#'
#' Neighborhoods in the city of Barcelona
#'
#' @format An object of class `sf` (inherits from `data.frame`) with 73 rows and 4 variables:
#' \describe{
#'   \item{LOCATIONID}{ID of the neighborhood}
#'   \item{LOCATIONNAME}{Name of the neighborhood)}
#'   \item{geometry}{geometry of simple features}
#'   }
#'
#' @docType data
#' @keywords datasets
#' @name Barcelona_Polygons
#' @usage data(Barcelona_Polygons)
#' @source Idealista (https://www.idealista.com/)
"Barcelona_Polygons"
#' @examples
#'  library(idealista18)
#'  data(Barcelona_Polygons)
#'  summary(Barcelona_Polygons)
"Barcelona_Polygons"

#' Neighborhood polygons in Madrid
#'
#' Neighborhoods in the city of Madrid
#'
#' @format An object of class `sf` (inherits from `data.frame`) with 73 rows and 4 variables:
#' \describe{
#'   \item{LOCATIONID}{ID of the neighborhood}
#'   \item{LOCATIONNAME}{Name of the neighborhood)}
#'   \item{geometry}{geometry of simple features}
#'   }
#'
#' @docType data
#' @keywords datasets
#' @name Madrid_Polygons
#' @usage data(Madrid_Polygons)
#' @source Idealista (https://www.idealista.com/)
"Madrid_Polygons"
#' @examples
#'  library(idealista18)
#'  data(Madrid_Polygons)
#'  summary(Madrid_Polygons)
"Madrid_Polygons"

#' Neighborhood polygons in Valencia.
#'
#' Neighborhoods in the city of Valencia
#'
#' @format An object of class `sf` (inherits from `data.frame`) with 73 rows and 4 variables:
#' \describe{
#'   \item{LOCATIONID}{ID of the neighborhood}
#'   \item{LOCATIONNAME}{Name of the neighborhood)}
#'   \item{geometry}{geometry of simple features}
#'   }
#'
#' @docType data
#' @keywords datasets
#' @name Valencia_Polygons
#' @usage data(Valencia_Polygons)
#' @source Idealista (https://www.idealista.com/)
"Valencia_Polygons"
#' @examples
#'  library(idealista18)
#'  data(Valencia_Polygons)
#'  summary(Valencia_Polygons)
"Valencia_Polygons"

#' Places of interest in Barcelona.
#'
#' Geospatial references for places of interest in Barcelona
#'
#' @format A list with two objects:
#' \describe{
#'   \item{City_Center}{Coordinates of Barcelona's city center}
#'   \item{Diagonal}{Avinguda Diagonal: Coordinates of Diagonal Avenue)}
#'   }
#'
#' @docType data
#' @keywords datasets
#' @name Barcelona_POIS
#' @usage data(Barcelona_POIS)
#' @source Idealista (https://www.idealista.com/)
"Barcelona_POIS"
#' @examples
#'  library(idealista18)
#'  data(Barcelona_POIS)
#'  summary(Barcelona_POIS)
"Barcelona_POIS"

#' Places of interest in Madrid
#'
#' Geospatial references for places of interest in Madrid
#'
#' @format A list with two objects:
#' \describe{
#'   \item{City_Center}{Coordinates of Madrid's city center}
#'   \item{Castellana}{Paseo de la Castellana: Coordinates of Paseo de la Castellana street)}
#'   }
#'
#' @docType data
#' @keywords datasets
#' @name Madrid_POIS
#' @usage data(Madrid_POIS)
#' @source Idealista (https://www.idealista.com/)
"Madrid_POIS"
#' @examples
#'  library(idealista18)
#'  data(Madrid_POIS)
#'  summary(Madrid_POIS)
"Madrid_POIS"

#' Places of interest in Valencia
#'
#' Geospatial references for places of interest in Valencia
#'
#' @format A list with three objects:
#' \describe{
#'   \item{City_Center}{Coordinates of Valencia's city center}
#'   \item{Metro}{Coordinates of Valencia's metro}
#'   \item{Blasco}{Coordinates of Blasco Avenue)}
#'   }
#'
#' @docType data
#' @keywords datasets
#' @name Valencia_POIS
#' @usage data(Valencia_POIS)
#' @source Idealista (https://www.idealista.com/)
"Valencia_POIS"
#' @examples
#'  library(idealista18)
#'  data(Valencia_POIS)
#'  summary(Valencia_POIS)
"Valencia_POIS"
