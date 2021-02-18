

### Africa
```{r}
# Panel for Africa
AFpanel <- subset(panel, panel$continent=="AF", select=c(cID, year, l_yield, temp, continent))

# "Collapse" into country means
AFcross <- summaryBy(l_yield+temp ~ cID, FUN=c(mean), data=AFpanel)

# Linear model
AF_linear <- lm(AFcross$l_yield.mean~AFcross$temp.mean)$coefficients[1]

# Fixed effects model
AF_fixed <- plm(l_yield ~ temp, data=AFpanel, index=c("cID", "year"), model="within")$coefficients

```

Temperature coefficients for Africa:
  - Linear regression = *`r AF_linear`*
  - fixed effect regression = *`r AF_fixed`*


  ### Asia
  ```{r}
# Panel for Asia
ASpanel <- subset(panel, panel$continent=="AS", select=c(cID, year, l_yield, temp, continent))

# "Collapse" into country means
AScross <- summaryBy(l_yield+temp ~ cID, FUN=c(mean), data=ASpanel)

# Linear model
AS_linear <- lm(AScross$l_yield.mean~AScross$temp.mean)$coefficients[1]

# Fixed effects model
AS_fixed <- plm(l_yield ~ temp, data=ASpanel, index=c("cID", "year"), model="within")$coefficients

```

Temperature coefficients for Asia:
  - Linear regression = *`r AS_linear`*
  - fixed effect regression = *`r AS_fixed`*

  ### Europe
  ```{r}
# Panel for Europe
EUpanel <- subset(panel, panel$continent=="EU", select=c(cID, year, l_yield, temp, continent))

# "Collapse" into country means
EUcross <- summaryBy(l_yield+temp ~ cID, FUN=c(mean), data=EUpanel)

# Linear model
EU_linear <- lm(EUcross$l_yield.mean~EUcross$temp.mean)$coefficients[1]

# Fixed effects model
EU_fixed <- plm(l_yield ~ temp, data=EUpanel, index=c("cID", "year"), model="within")$coefficients

```

Temperature coefficients for Europe:
  - Linear regression = *`r EU_linear`*
  - fixed effect regression = *`r EU_fixed`*

  ### Oceana
  ```{r}
# Panel for Oceana
OCpanel <- subset(panel, panel$continent=="OC", select=c(cID, year, l_yield, temp, continent))

# "Collapse" into country means
OCcross <- summaryBy(l_yield+temp ~ cID, FUN=c(mean), data=OCpanel)

# Linear model
OC_linear <- lm(OCcross$l_yield.mean~OCcross$temp.mean)$coefficients[1]

# Fixed effects model
OC_fixed <- plm(l_yield ~ temp, data=OCpanel, index=c("cID", "year"), model="within")$coefficients

```

Temperature coefficients for Oceana:
  - Linear regression = *`r OC_linear`*
  - fixed effect regression = *`r OC_fixed`*

  ### South America
  ```{r}
# Panel for South America
SApanel <- subset(panel, panel$continent=="SA", select=c(cID, year, l_yield, temp, continent))

# "Collapse" into country means
SAcross <- summaryBy(l_yield+temp ~ cID, FUN=c(mean), data=SApanel)

# Linear model
SA_linear <- lm(SAcross$l_yield.mean~SAcross$temp.mean)$coefficients[1]

# Fixed effects model
SA_fixed <- plm(l_yield ~ temp, data=SApanel, index=c("cID", "year"), model="within")$coefficients

```

Temperature coefficients for South America:
  - Linear regression = *`r SA_linear`*
  - fixed effect regression = *`r SA_fixed`*


  ### North America
  ```{r}
# Panel for North America
NMpanel <- subset(panel, panel$continent=="NM", select=c(cID, year, l_yield, temp, continent))

# "Collapse" into country means
NMcross <- summaryBy(l_yield+temp ~ cID, FUN=c(mean), data=NMpanel)

# Linear model
NM_linear <- lm(NMcross$l_yield.mean~NMcross$temp.mean)$coefficients[1]

# Fixed effects model
NM_fixed <- plm(l_yield ~ temp, data=NMpanel, index=c("cID", "year"), model="within")$coefficients

```

Temperature coefficients for North America:
  - Linear regression = *`r NM_linear`*
  - fixed effect regression = *`r NM_fixed`*

