#!/bin/zsh
# Arma index.html a partir del archivo de trabajo.
#
# El archivo de trabajo no lleva <html> ni <head>: así lo necesita el
# publicador de Claude, que le pone la cabecera él mismo. GitHub, en cambio,
# sirve el archivo tal cual, y sin la etiqueta «viewport» el teléfono dibuja
# la página como si fuera un computador y la deja diminuta.
FUENTE="$1"
{
  echo '<!doctype html>'
  echo '<html lang="es">'
  echo '<head>'
  echo '<meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">'
  echo '<meta name="theme-color" content="#1B4A36">'
  echo '<meta name="robots" content="noindex, nofollow">'
  echo '</head>'
  echo '<body>'
  cat "$FUENTE"
  echo '</body>'
  echo '</html>'
} > index.html
