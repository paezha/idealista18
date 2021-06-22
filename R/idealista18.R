#' idealista18: A data package with property values in Spain from the Idealista data base.
#'
#' This package is an exercise in package creation using
#' R studio. The package includes a sample function and
#' a sample dataset with their respective documentation.
#'
#' @docType package
#' @name idealista18
#' @author Antonio Paez, School of Earth, Environment and Society, McMaster University \email{paezha@@mcmaster.ca}
#' @references \url{https://github.com/paezha/Reproducible-Research-Workflow}
NULL

#' Sale prices of residential property in Barcelona in 2018.
#'
#' A dataset containing information about 84,280 real estate transactions
#' in Barcelona during 2018.
#'
#' @format An object of class `sf` (inherits from `data.frame`) with 84,280 rows and 57 variables:
#' \describe{
#'   \item{ASSETID}{ID of the asset}
#'   \item{PERIOD}{Date YYYYMM ((it corresponds to Ads in the list in the previous 3 months)}
#'   \item{PRICE}{Price at idealista (euros??)}
#'   \item{UNITPRICE}{NEEDS TO BE DEFINED (euros??)}
#'   \item{ADTYPOLOGYID}{Asset Typology (home, chalet)}
#'   \item{ADOPERATIONID}{Asset Operation (rent, sales)}
#'   \item{H3INDEX}{Uber's H3 index with level 10 of resolution}
#'   \item{LEVEL6NAME}{Municipality Name}
#'   \item{CONSTRUCTEDAREA}{Home area in sq.m}
#'   \item{ROOMNUMBER}{Number of rooms (total??)}
#'   \item{BATHNUMBER}{Number of bathrooms}
#'   \item{HASTERRACE}{Dummy variable for terrace (takes 1 if there is a terrace, 0 otherwise)}
#'   \item{HASLIFT}{Dummy variable for lift (takes 1 if there is a lift in the building, 0 otherwise)}
#'   \item{HASAIRCONDITIONING}{Dummy variable for AA (takes 1 if there is a AA, 0 otherwise)}
#'   \item{AMENITYID}{Indicates the amenities included (1 - no furniture, no kitchen amenities, 2 - kitchen amenities, no furniture, 3 - kitchen amenities, furniture)}
#'   \item{HASPARKINGSPACE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{ISPARKINGSPACEINCLUDEDINPRICE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{PARKINGSPACEPRICE}{Price of parking Space (in euros??)}
#'   \item{HASNORTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is North in the Ad, 0 otherwise)}
#'   \item{HASSOUTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is South in the Ad, 0 otherwise)}
#'   \item{HASEASTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is East in the Ad, 0 otherwise)}
#'   \item{HASWESTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is West in the Ad, 0 otherwise)}
#'   \item{HASBOXROOM}{Dummy variable for boxroom (takes 1 if boxroom is included in the Ad, 0 otherwise)}
#'   \item{HASWARDROBE}{Dummy variable for wardrobe (takes 1 if wardrobe is included in the Ad, 0 otherwise)}
#'   \item{HASSWIMMINGPOOL}{Dummy variable for swimming pool (takes 1 if swimming pool is included in the Ad, 0 otherwise)}
#'   \item{HASDOORMAN}{Dummy variable for doorman (takes 1 if there is a doorman in the building, 0 otherwise)}
#'   \item{HASGARDEN}{Dummy variable for garden (takes 1 if there is a garden in the building, 0 otherwise)}
#'   \item{ISDUPLEX}{Dummy variable for duplex (takes 1 if it is a duplex, 0 otherwise)}
#'   \item{ISSTUDIO}{Dummy variable for studio (takes 1 if it is a studio, 0 otherwise)}
#'   \item{ISINTOPFLOOR}{Dummy variable for studio (takes 1 if it is a studio, 0 otherwise)}
#'   \item{CONSTRUCTIONYEAR}{Construction year (source: advertiser)}
#'   \item{FLOORCLEAN}{Indicated floornumber}
#'   \item{BUILTTYPEID}{Indicates condition (1- new development, 2, second hand to be restored, 3 second hand in good condition)}
#'   \item{FLATLOCATIONID}{Flat location (1 - external, 2 - internal)}
#'   \item{CADCONSTRUCTIONYEAR}{Construction year (source: cadastral H3 imputation)}
#'   \item{CADMAXBUILDINGFLOOR}{Max building floor (source: cadastral H3 imputation)}
#'   \item{CADDWELLINGCOUNT}{Dwelling count in the building (source: cadastral H3 imputation)}
#'   \item{CADASTRALQUALITYID}{Cadastral quality (source: cadastral H3 imputation)}
#'   \item{NEW_UNITPRICE}{?}
#'   \item{LOGPRICE}{Natural logarithm of price}
#'   \item{BUILTTYPEID_1}{NEEDS TO BE DEFINED}
#'   \item{BUILTTYPEID_2}{NEEDS TO BE DEFINED}
#'   \item{BUILTTYPEID_3}{NEEDS TO BE DEFINED}
#'   \item{PERIOD_201803}{Period of sale (?) was First Quarter of 2018}
#'   \item{PERIOD_201806}{Period of sale (?) was Second Quarter of 2018}
#'   \item{PERIOD_201809}{Period of sale (?) was Third Quarter of 2018}
#'   \item{PERIOD_201812}{Period of sale (?) was Fourth Quarter of 2018}
#'   \item{DISTANCE_TO_CITY_CENTER}{Distance to center of city in km}
#'   \item{DISTANCE_TO_DIAGONAL}{Distance to Avinguda Diagonal in km; Diagonal is a major street that cuts across the city diagonally to the street grid}
#'   \item{INVERSE_DISTANCE_TO_CITY_CENTER}{Inverse of the distance to center of city}
#'   \item{INVERSE_DISTANCE_TO_DIAGONAL}{Inverse of the distance to Avinguda Diagonal}
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
#' A dataset containing information about 156,016 real estate transactions
#' in Madrid during 2018.
#'
#' @format An object of class `sf` (inherits from `data.frame`) with 156,016 rows and 57 variables:
#' \describe{
#'   \item{ASSETID}{ID of the asset}
#'   \item{PERIOD}{Date YYYYMM ((it corresponds to Ads in the list in the previous 3 months)}
#'   \item{PRICE}{Price at idealista (euros??)}
#'   \item{UNITPRICE}{NEEDS TO BE DEFINED (euros??)}
#'   \item{ADTYPOLOGYID}{Asset Typology (home, chalet)}
#'   \item{ADOPERATIONID}{Asset Operation (rent, sales)}
#'   \item{H3INDEX}{Uber's H3 index with level 10 of resolution}
#'   \item{LEVEL6NAME}{Municipality Name}
#'   \item{CONSTRUCTEDAREA}{Home area in sq.m}
#'   \item{ROOMNUMBER}{Number of rooms (total??)}
#'   \item{BATHNUMBER}{Number of bathrooms}
#'   \item{HASTERRACE}{Dummy variable for terrace (takes 1 if there is a terrace, 0 otherwise)}
#'   \item{HASLIFT}{Dummy variable for lift (takes 1 if there is a lift in the building, 0 otherwise)}
#'   \item{HASAIRCONDITIONING}{Dummy variable for AA (takes 1 if there is a AA, 0 otherwise)}
#'   \item{AMENITYID}{Indicates the amenities included (1 - no furniture, no kitchen amenities, 2 - kitchen amenities, no furniture, 3 - kitchen amenities, furniture)}
#'   \item{HASPARKINGSPACE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{ISPARKINGSPACEINCLUDEDINPRICE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{PARKINGSPACEPRICE}{Price of parking Space (in euros??)}
#'   \item{HASNORTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is North in the Ad, 0 otherwise)}
#'   \item{HASSOUTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is South in the Ad, 0 otherwise)}
#'   \item{HASEASTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is East in the Ad, 0 otherwise)}
#'   \item{HASWESTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is West in the Ad, 0 otherwise)}
#'   \item{HASBOXROOM}{Dummy variable for boxroom (takes 1 if boxroom is included in the Ad, 0 otherwise)}
#'   \item{HASWARDROBE}{Dummy variable for wardrobe (takes 1 if wardrobe is included in the Ad, 0 otherwise)}
#'   \item{HASSWIMMINGPOOL}{Dummy variable for swimming pool (takes 1 if swimming pool is included in the Ad, 0 otherwise)}
#'   \item{HASDOORMAN}{Dummy variable for doorman (takes 1 if there is a doorman in the building, 0 otherwise)}
#'   \item{HASGARDEN}{Dummy variable for garden (takes 1 if there is a garden in the building, 0 otherwise)}
#'   \item{ISDUPLEX}{Dummy variable for duplex (takes 1 if it is a duplex, 0 otherwise)}
#'   \item{ISSTUDIO}{Dummy variable for studio (takes 1 if it is a studio, 0 otherwise)}
#'   \item{ISINTOPFLOOR}{Dummy variable for studio (takes 1 if it is a studio, 0 otherwise)}
#'   \item{CONSTRUCTIONYEAR}{Construction year (source: advertiser)}
#'   \item{FLOORCLEAN}{Indicated floornumber}
#'   \item{BUILTTYPEID}{Indicates condition (1- new development, 2, second hand to be restored, 3 second hand in good condition)}
#'   \item{FLATLOCATIONID}{Flat location (1 - external, 2 - internal)}
#'   \item{CADCONSTRUCTIONYEAR}{Construction year (source: cadastral H3 imputation)}
#'   \item{CADMAXBUILDINGFLOOR}{Max building floor (source: cadastral H3 imputation)}
#'   \item{CADDWELLINGCOUNT}{Dwelling count in the building (source: cadastral H3 imputation)}
#'   \item{CADASTRALQUALITYID}{Cadastral quality (source: cadastral H3 imputation)}
#'   \item{NEW_UNITPRICE}{?}
#'   \item{LOGPRICE}{Natural logarithm of price}
#'   \item{BUILTTYPEID_1}{NEEDS TO BE DEFINED}
#'   \item{BUILTTYPEID_2}{NEEDS TO BE DEFINED}
#'   \item{BUILTTYPEID_3}{NEEDS TO BE DEFINED}
#'   \item{PERIOD_201803}{Period of sale (?) was First Quarter of 2018}
#'   \item{PERIOD_201806}{Period of sale (?) was Second Quarter of 2018}
#'   \item{PERIOD_201809}{Period of sale (?) was Third Quarter of 2018}
#'   \item{PERIOD_201812}{Period of sale (?) was Fourth Quarter of 2018}
#'   \item{DISTANCE_TO_CITY_CENTER}{Distance to center of city in km}
#'   \item{DISTANCE_TO_CASTELLANA}{Distance to Paseo de la Castellana in km; la Castellana is a major street that cuts across the city from South to North}
#'   \item{INVERSE_DISTANCE_TO_CITY_CENTER}{Inverse of the distance to center of city}
#'   \item{INVERSE_DISTANCE_TO_CASTELLANA}{Inverse of the distance to Paseo de la Castellana}
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
#' A dataset containing information about 79,360 real estate transactions
#' in Madrid during 2018.
#'
#' @format An object of class `sf` (inherits from `data.frame`) with 79,360 rows and 59 variables:
#' \describe{
#'   \item{ASSETID}{ID of the asset}
#'   \item{PERIOD}{Date YYYYMM ((it corresponds to Ads in the list in the previous 3 months)}
#'   \item{PRICE}{Price at idealista (euros??)}
#'   \item{UNITPRICE}{NEEDS TO BE DEFINED (euros??)}
#'   \item{ADTYPOLOGYID}{Asset Typology (home, chalet)}
#'   \item{ADOPERATIONID}{Asset Operation (rent, sales)}
#'   \item{H3INDEX}{Uber's H3 index with level 10 of resolution}
#'   \item{LEVEL6NAME}{Municipality Name}
#'   \item{CONSTRUCTEDAREA}{Home area in sq.m}
#'   \item{ROOMNUMBER}{Number of rooms (total??)}
#'   \item{BATHNUMBER}{Number of bathrooms}
#'   \item{HASTERRACE}{Dummy variable for terrace (takes 1 if there is a terrace, 0 otherwise)}
#'   \item{HASLIFT}{Dummy variable for lift (takes 1 if there is a lift in the building, 0 otherwise)}
#'   \item{HASAIRCONDITIONING}{Dummy variable for AA (takes 1 if there is a AA, 0 otherwise)}
#'   \item{AMENITYID}{Indicates the amenities included (1 - no furniture, no kitchen amenities, 2 - kitchen amenities, no furniture, 3 - kitchen amenities, furniture)}
#'   \item{HASPARKINGSPACE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{ISPARKINGSPACEINCLUDEDINPRICE}{Dummy variable for parking (takes 1 if parking is included in the Ad, 0 otherwise)}
#'   \item{PARKINGSPACEPRICE}{Price of parking Space (in euros??)}
#'   \item{HASNORTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is North in the Ad, 0 otherwise)}
#'   \item{HASSOUTHORIENTATION}{Dummy variable for orientation (takes 1 if orientation is South in the Ad, 0 otherwise)}
#'   \item{HASEASTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is East in the Ad, 0 otherwise)}
#'   \item{HASWESTORIENTATION}{Dummy variable for orientation (takes 1 if orientation is West in the Ad, 0 otherwise)}
#'   \item{HASBOXROOM}{Dummy variable for boxroom (takes 1 if boxroom is included in the Ad, 0 otherwise)}
#'   \item{HASWARDROBE}{Dummy variable for wardrobe (takes 1 if wardrobe is included in the Ad, 0 otherwise)}
#'   \item{HASSWIMMINGPOOL}{Dummy variable for swimming pool (takes 1 if swimming pool is included in the Ad, 0 otherwise)}
#'   \item{HASDOORMAN}{Dummy variable for doorman (takes 1 if there is a doorman in the building, 0 otherwise)}
#'   \item{HASGARDEN}{Dummy variable for garden (takes 1 if there is a garden in the building, 0 otherwise)}
#'   \item{ISDUPLEX}{Dummy variable for duplex (takes 1 if it is a duplex, 0 otherwise)}
#'   \item{ISSTUDIO}{Dummy variable for studio (takes 1 if it is a studio, 0 otherwise)}
#'   \item{ISINTOPFLOOR}{Dummy variable for studio (takes 1 if it is a studio, 0 otherwise)}
#'   \item{CONSTRUCTIONYEAR}{Construction year (source: advertiser)}
#'   \item{FLOORCLEAN}{Indicated floornumber}
#'   \item{BUILTTYPEID}{Indicates condition (1- new development, 2, second hand to be restored, 3 second hand in good condition)}
#'   \item{FLATLOCATIONID}{Flat location (1 - external, 2 - internal)}
#'   \item{CADCONSTRUCTIONYEAR}{Construction year (source: cadastral H3 imputation)}
#'   \item{CADMAXBUILDINGFLOOR}{Max building floor (source: cadastral H3 imputation)}
#'   \item{CADDWELLINGCOUNT}{Dwelling count in the building (source: cadastral H3 imputation)}
#'   \item{CADASTRALQUALITYID}{Cadastral quality (source: cadastral H3 imputation)}
#'   \item{NEW_UNITPRICE}{?}
#'   \item{LOGPRICE}{Natural logarithm of price}
#'   \item{BUILTTYPEID_1}{NEEDS TO BE DEFINED}
#'   \item{BUILTTYPEID_2}{NEEDS TO BE DEFINED}
#'   \item{BUILTTYPEID_3}{NEEDS TO BE DEFINED}
#'   \item{PERIOD_201803}{Period of sale (?) was First Quarter of 2018}
#'   \item{PERIOD_201806}{Period of sale (?) was Second Quarter of 2018}
#'   \item{PERIOD_201809}{Period of sale (?) was Third Quarter of 2018}
#'   \item{PERIOD_201812}{Period of sale (?) was Fourth Quarter of 2018}
#'   \item{DISTANCE_TO_CITY_CENTER}{Distance to center of city in km}
#'   \item{DISTANCE_TO_METRO}{Distance to METRO in km; DEFINE}
#'   \item{DISTANCE_TO_BLASCO}{Distance to BLASCO in km; DEFINE}
#'   \item{INVERSE_DISTANCE_TO_CITY_CENTER}{Inverse of the distance to center of city}
#'   \item{INVERSE_DISTANCE_TO_METRO}{Inverse of the distance to Metro}
#'   \item{INVERSE_DISTANCE_TO_BLASCO}{Inverse of the distance to Blasco}
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
#'   \item{ZONELEVELID}{ID of the zone (the city??)}
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
#'   \item{ZONELEVELID}{ID of the zone (the city??)}
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
#'   \item{ZONELEVELID}{ID of the zone (the city??)}
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
#'   \item{Diagonal}{Avinguda Diagonal: Coordinates of Diagonal)}
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
#'   \item{Castellana}{Paseo de la Castellana: Coordinates of la Castellana)}
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
#'   \item{Blasco}{Coordinates of Blasco)}
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
