#Two sample T test for Chemical vs Atmospheric

chemical <- c(2.30143,2.29890,2.29816,2.30182,2.29869,2.29940,2.29849,2.29889,2.30074,2.30054)


atmp <- c(2.31017,2.30986,2.31010,2.31001,2.31010,2.31024,2.31028,2.31163,2.30956)

t.test(chemical,atmp)

