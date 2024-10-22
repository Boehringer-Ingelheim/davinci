# add_module_entry <- function(module, package, url, description) {
#   cat(paste0("### ", module, " by [{", package, "}](", url, '){target="_blank"}  \n'))
#   cat("::: columns \n")
#   cat('::: {.column width="40%"} \n')
#   cat("::: \n")
#   cat('::: {.column width="60%"} \n')
#   cat(description)
#   cat("::: \n")
#   cat("::: \n")
# }
source("carousel/carousel.R")
add_module_entry <- function(module, package, url, description) {

  paste(
    paste0("### ", module, " by [{", package, "}](", url, '){target="_blank"}  \n'),
    "::: columns",
    '::: {.column width="40%"}',

    as.character(carousel("gallery-carousel", 5000, yaml.load_file("carousel/carousel.yml"))),

    "Test",
    ":::",
    '::: {.column width="60%"}',
    description,
    ":::",
    ":::",
    sep = "\n"
  )

}





```{r}
#| results: asis
source("add_module_entry.R")
des <- "The listings module displays arbitrary datasets as listings. Users can select the dataset to be shown, and specify which columns of the dataset should be displayed as well as their order. The displayed columns can be sorted and filtered. Moreover, the table can be filtered to show only entries containing a keyword entered by the user. The module is not limited to usage of one data source, most notably, it can handle data from ADaM or SDTM."
tst <- add_module_entry(module = "listings", "dv.listings", "https://boehringer-ingelheim.github.io/dv.listings/", description = des)
cat(tst)
```

```{r}
#| results: asis
cat(paste0(
  "### Listings by [{dv.listings}](https://boehringer-ingelheim.github.io/dv.listings/){target=\"_blank\"}

::: columns
::: {.column width=\"40%\"}"))
```

`{r} carousel("gallery-carousel", 5000, yaml.load_file("carousel/carousel.yml"))`
```{r}
#| results: asis
cat(paste0(
  "
:::
::: {.column width=\"60%\"}
The listings module displays arbitrary datasets as listings. Users can select the dataset to be shown, and specify which columns of the dataset should be displayed as well as their order. The displayed columns can be sorted and filtered. Moreover, the table can be filtered to show only entries containing a keyword entered by the user. The module is not limited to usage of one data source, most notably, it can handle data from ADaM or SDTM.
:::
:::"
))
```


```{r}
#| results: asis
cat(as.character(carousel("gallery-carousel", 5000, yaml.load_file("carousel/carousel.yml"))))
```

