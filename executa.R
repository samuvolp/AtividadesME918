#pacotes
library(usethis)

#lendo arquivos
source("simulador.R")

#definindo a função
devtools::source_url("https://ime.unicamp.br/~ra137784/ME918/2023s2/lab01_ig.R")
planos <- input_lab01()

#usando a função map
lista_amostras = map(planos, amostra_aleatoria)
