#carregando os pacotes
library(purrr)
library(devtools)
library(usethis)


#criando a função
amostra_aleatoria = function(distribuicao) {
  if (distribuicao$distribution == "poisson") {
    amostra = rpois(distribuicao$obs, distribuicao$lambda)
  }
  if (distribuicao$distribution == "normal") {
    amostra = rnorm(distribuicao$obs, mean = distribuicao$mu, sd =sqrt(distribuicao$sigma2) )
  }
  if (distribuicao$distribution == "bernoulli") {
    amostra = rbinom(distribuicao$obs, size = 1, p = distribuicao$p)
  }
  return(amostra)
}


