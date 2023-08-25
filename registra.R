#executando o source
source("executa.R")

# Cria uma nova pasta chamada "resultados"
dir.create("resultados")

# Função para salvar os objetos em um arquivo .RData
salva_resultados <- function(plano, indice) {
  # Extrai os objetos do plano correspondente
  distribution <- plano$distribution
  lambda <- plano$lambda
  obs <- plano$obs
  result <- lista_amostras[[indice]]
  
  # Cria o nome do arquivo .RData
  nome_arquivo <- paste0("simulacao", sprintf("%02d", indice), ".RData")
  
  # Salva os objetos no arquivo .RData
  save(distribution, lambda, obs, result, file = file.path("resultados", nome_arquivo))
}

# Itera sobre os índices da lista de amostras e salva os resultados em arquivos .RData
walk2(planos, seq_along(planos), salva_resultados)

file.create("resultados/.gitkeep")

# Conteúdo do arquivo .gitignore
conteudo_gitignore <- "
# Arquivos e diretórios a serem ignorados
resultados/
.RData
"

# Caminho para o arquivo .gitignore
caminho_gitignore <- ".gitignore"

# Cria o arquivo .gitignore com o conteúdo especificado
writeLines(conteudo_gitignore, caminho_gitignore)
