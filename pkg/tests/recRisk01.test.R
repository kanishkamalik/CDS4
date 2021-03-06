## calcRecRisk01.test.R

library(CDS)

## truth1 <- recRisk01(TDate = "2014-01-14",
##                     currency = "USD",
##                     maturity = "5Y",
##                     dccCDS = "Act/360",
##                     freqCDS = "1Q",
##                     stubCDS = "F",
##                     badDayConvCDS = "F",
##                     calendar = "None",
##                     parSpread = 32,
##                     coupon = 100,
##                     recoveryRate = 0.4,
##                     notional = 1e7)

## save(truth1, file = "recRisk01.test.RData")


load("recRisk01.test.RData")

result1 <- recRisk01(TDate = "2014-01-14",
                     currency = "USD",
                     maturity = "5Y",
                     dccCDS = "Act/360",
                     freqCDS = "1Q",
                     stubCDS = "F",
                     badDayConvCDS = "F",
                     calendar = "None",
                     parSpread = 32,
                     coupon = 100,
                     recoveryRate = 0.4,
                     notional = 1e7)

stopifnot(all.equal(result1, truth1))

