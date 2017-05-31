#' @title Reduce observed gravity data
#'
#' @description Reduces (corrects) observed gravity data by mass variations occuring and originating below SG observatory buildings.
#'
#' @param gravity_obs Vector, containing the filename of the observed gravity data, which is to be reduced.
#' @param gravity_below Data.frame, containing time (datatime) and gravity response data (value).
#' @param input_dir Vector, containing the directory of the gravity_data-file.
#' 
#' @return Returns a data.frame, consisting of a time series (2 columns, time info and data)
#' of the reduced gravity response. This means that observed gravity data was corrected (subtracted) by
#' the response due to mass variation from below observatory buildings.
#' This way improving (or cleaning) the observed gravtiy signal from near-field local hydrology due to the umbrella effect.
#' 
#' @details missing
#' @references Marvin Reich (2017), mreich@@posteo.de
#' @examples missing

reduce_gravity = function(
            gravity_obs,
            gravity_below,
            input_dir,
            ...
){
    ## as in function for SM-data:
    # reading-in routine for various file types
    # load gravity_data
    load(file=paste0(input_dir, gravity_data)) 
    read.table(file=paste0(input_dir, gravity_data)) 
    # resulting in data.frame with datetime and obs



    gravity_reduced = dplyr::inner_join(gravity_obs, gravity_below) %>%
        dplyr::mutate(value = obs - value) %>%
        dplyr::select(-obs)

    return(gravity_reduced)
}
