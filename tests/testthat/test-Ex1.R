#This test will see whether the function could successfully generate a ggplot
test_that("Plot returns ggplot object",{
  fcn <- Ex1(datateachr::cancer_sample, diagnosis, radius_mean)
  expect_is(fcn,"ggplot")
})

#This test will see whether there’s any errors related to the function
#If the test successfully pass, we need to check the inputs in the function carefully,
#and especially pay attention to the class of x and y
test_that("Testing the Ex1 function with error",{
  expect_error(Ex1(datateachr::cancer_sample, radius_sd, radius_mean,"check the class of the input variables"))})


#This test will see whether the string length output meets our expectation
#The length of string should be 9 if the function generates the correct outputs
test_that("str_length is number of characters", {
  fcn <- Ex1(datateachr::cancer_sample, diagnosis, radius_mean)
  expect_output(str(fcn), "List of 9")})
