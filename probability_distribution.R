library(shiny)
library(bslib)
library(ggplot2)
library(bsicons)

# Carregar arquivos auxiliares
source("translations.R")
source("formulas.R")

options(shiny.autoreload = TRUE)
options(shiny.launch.browser = TRUE)

ui <- function(request) {
  page_fillable(
    theme = bs_theme(version = 5, preset = "shiny"),
    
    # Atualizar suporte ao MathJax
    tags$head(
      tags$script(src = "https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"),
      tags$script(type = "text/javascript",
        "window.MathJax = {
          tex: {
            inlineMath: [['\\\\(', '\\\\)']],
            displayMath: [['\\\\[', '\\\\]']],
            processEscapes: true,
            packages: ['base', 'ams']
          },
          loader: {load: ['[tex]/ams']},
          startup: {
            pageReady: () => {
              return MathJax.startup.defaultPageReady();
            }
          }
        };"
      )
    ),
    
    # ... resto do UI ...
  )
}

# ... resto do código ... 