par(mfrow = c(2, 3))
ggplot(waldResults, aes(x = X1, y = X6)) + 
  geom_line(color = "blue") + 
  ggtitle("Proportion containing with n = 200 Wald ") +
  xlab("p") +
  ylab("Proportion") +
  xlim(0, 1) +
  ylim(0, 1) +
  geom_hline(yintercept = 0.95) 
ggplot(adjWaldResults, aes(x = X1, y = X6)) + 
  geom_line(color = "red") + 
  ggtitle("Proportion containing with n = 200 Adjusted Wald") +
  xlab("p") +
  ylab("Proportion") +
  xlim(0, 1) +
  ylim(0, 1) +
  geom_hline(yintercept = 0.95) 
ggplot(exactResults, aes(x = X1, y = X6)) + 
  geom_line(color = "orange") + 
  ggtitle("Proportion containing with n = 200 Exact") +
  xlab("p") +
  ylab("Proportion") +
  xlim(0, 1) +
  ylim(0, 1) +
  geom_hline(yintercept = 0.95) 
ggplot(scoreResults, aes(x = X1, y = X6)) + 
  geom_line(color = "black") + 
  ggtitle("Proportion containing with n = 200 Raw Precentile Bootstrap") +
  xlab("p") +
  ylab("Proportion") +
  xlim(0, 1) +
  ylim(0, 1) +
  geom_hline(yintercept = 0.95) 
ggplot(bootRawResults, aes(x = X1, y = X6)) + 
  geom_line(color = "green") + 
  ggtitle("Proportion containing with n = 200 Raw Percentile Bootstrap") +
  xlab("p") +
  ylab("Proportion") +
  xlim(0, 1) +
  ylim(0, 1) +
  geom_hline(yintercept = 0.95) 
ggplot(bootTResults, aes(x = X1, y = X6)) + 
  geom_line(color = "purple") + 
  ggtitle("Proportion containing with n = 200 Bootstrap T") +
  xlab("p") +
  ylab("Proportion") +
  xlim(0, 1) +
  ylim(0, 1) +
  geom_hline(yintercept = 0.95)

  # Average CI Widths for n = 200
ggplot() +
  geom_line(data = waldResults, aes(x = X1, y = X7), color = "blue") +
  geom_line(data = adjWaldResults, aes(x = X1, y = X7), color = "red") +
  geom_line(data = exactResults, aes(x = X1, y = X7), color = "orange") +
  geom_line(data = scoreResults, aes(x = X1, y = X7), color = "black") + 
  geom_line(data = bootRawResults, aes(x = X1, y = X7), color = "green") +
  geom_line(data= bootTResults, aes(x = X1, y = X7), color = "purple") +
  ggtitle("Average Width with n = 200") +
  xlab("p") +
  ylab("Proportion")