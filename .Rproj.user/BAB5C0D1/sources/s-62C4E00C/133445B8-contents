#' Draw barplots for variables in cancer_sample dataset
#' @param x The first variable extracted to represent facets in the graph
#' @param y The second variable, which is one of the parameters used to draw the density
#' graph
#' @return A density graph depicting the relationship between one variable and another
#' variable in the data set
#' throws error if 'x' and 'y' are not proper type
#' @examples
#' library(datateachr)
#' Ex1(cancer_sample, diagnosis, radius_mean)
#' Ex1(cancer_sample, diagnosis, perimeter_mean)
#' Throws an error
#' Ex1(cancer_sample, radius_mean, perimeter_mean)
#' @export

Ex1<-function(data, x, y, na.rm=FALSE){
  datateachr::cancer_sample
  calculations1<-dplyr::summarise(data,
                                  is_character = is.character({{ x }}),
                                  class_x = class ({{ x }}))
  calculations2<-dplyr::summarise(data,
                                  is_numeric = is.numeric({{ y }}),
                                  class_y = class ({{ y }}))
  if(!calculations1$is_character){
    stop("you have entered non-charater value for x. Please check the class of x", calculations1$class_x)
  }  #stop if x is non-character value

  if(!calculations2$is_numeric){
    stop("you have entered non-numeric value for y. Please check the class of y", calculations2$class_y)
  } #stop if y is non-numeric value

  #Draw a density ggplot for the dataset with x and y
  ggplot2::ggplot(data, ggplot2::aes(y = {{y}})) + #draw a density graph with facets
    ggplot2::geom_density(ggplot2::aes(fill = {{x}}),alpha=0.3)+ ggplot2::facet_wrap(ggplot2::vars({{x}})) +
    ggplot2::theme(aspect.ratio =  3, #add theme to this plot
                   axis.text.x = ggplot2::element_blank(),
                   axis.ticks.x = ggplot2::element_blank())
}
