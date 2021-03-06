# tests for plostitle fxn in rplos
context("plostitle")

test_that("plostitle returns the correct dimensionsed data.frame", {
	vcr::use_cassette("plostitle", {
		expect_that(nrow(plostitle(q='drosophila', fl='title', limit=19)$data),
								equals(19))
		expect_that(length(names(plostitle(q='drosophila', fl='title', limit=19)$data)),
								equals(1))
		expect_that(names(plostitle(q='drosophila', fl='title,journal', limit = 5)$data),
								equals(c("journal","title")))
	})
})

test_that("plostitle returns the correct class", {
	vcr::use_cassette("plostitle_class", {
		expect_is(plostitle(q='drosophila',  limit = 5)$data, "data.frame")
		expect_is(plostitle(q='drosophila', fl='title,journal', limit = 5)$data, "data.frame")
	})
})
