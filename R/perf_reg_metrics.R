#' Compute various performance metrics for a regression model
#'
#' @param truth A simple features data frame with the data for model estimation.
#' @param predictions The proportion of the sample for training, a number between 0 and 1.
#' @param model_label A label for the model
#' @param split_label A label for the data split used
#' @return A list with various performance metrics.
#' @import Metrics
#' @importFrom dplyr %>%
#' @importFrom stats median
#' @export
#' @examples
#'
#' library(idealista18)
#' data(Valencia_Sale)
#' mod <- lm(LOGPRICE ~ CONSTRUCTEDAREA, data = Valencia_Sale)
#' perf_reg_metrics(truth = Valencia_Sale$LOGPRICE, predictions = mod$fitted.values)

# #' @import dplyr Metrics

perf_reg_metrics <- function(truth, predictions, model_label = "", split_label = ""){
  #COMPUTES PERFORMANCE METRICS FOR REGRESSION MODELS
  ae <- Metrics::ae(truth, predictions)
  ape <- Metrics::ape(truth, predictions)


  hit_ratio <- data.frame(ape) %>%
    dplyr::summarise(n = dplyr::n(),
                     hit_ratio_5 = sum(. < 0.05)/n,
                     hit_ratio_10 = sum(. < 0.1)/n,
                     hit_ratio_20 = sum(. < 0.2)/n,
                     hit_ratio_50 = sum(. < 0.5)/n)

  metrics <- data.frame(estimator = model_label,
                        split = split_label,
                        mae = Metrics::mae(
                          truth,
                          predictions),
                        mdae = median(ae),
                        rmse = Metrics::rmse(
                          truth,
                          predictions),
                        mape = Metrics::mape(
                          truth,
                          predictions),
                        medape = median(ape),
                        bias = Metrics::bias(
                          truth,
                          predictions),
                        pc_bias = Metrics::percent_bias(
                          truth,
                          predictions))

  all.metrics <- cbind(hit_ratio, metrics)  %>%
    dplyr::select(estimator, split, n,
                  mae, mdae, rmse,
                  mape, medape, bias, pc_bias,
                  hit_ratio_5, hit_ratio_10, hit_ratio_20, hit_ratio_50
    )


  return(all.metrics)
}
