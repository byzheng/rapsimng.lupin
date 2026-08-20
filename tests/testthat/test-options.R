
test_that("get returns correct default values", {
    lupin$reset()
    expect_equal(lupin$get("phenology.thermal_time.x"), c(0, 30, 40))
    expect_equal(lupin$get("phenology.thermal_time.y"), c(0, 30, 0))
})

test_that("set updates values correctly", {
    lupin$set(phenology = list(thermal_time = list(x = c(5, 25, 40), y = c(0, 20, 0))))
    expect_equal(lupin$get("phenology.thermal_time.x"), c(5, 25, 40))
    expect_equal(lupin$get("phenology.thermal_time.y"), c(0, 20, 0))
})

test_that("set enforces group validation", {
    # Missing y
    expect_no_error(
        lupin$set(phenology = list(thermal_time = list(x = c(1, 2, 3))))
    )

    # x and y different length
    expect_error(
        lupin$set(phenology = list(thermal_time = list(x = c(1, 2), y = c(0, 1, 2))))
    )
})
