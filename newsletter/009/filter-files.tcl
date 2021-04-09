# Comentários são feitos com "#"
#
# Você pode rodar esse programa usando
# tclsh filter-files.tcl

# {isso} é simplesmente uma string
# Já [isso] é um comando que *será* executado.
foreach {filename} [exec ls] {
    # Literalmente, tudo isso aqui, que está
    # entre "{}", é meramente uma string. O
    # modelo de Tcl é "delegacinal", ou seja:
    # quem for usar o dado é que decide como
    # prefere interpretá-lo.

    # "Atribuições" são feitas com "set".
    # Não existe muito mais sobre sintaxe do
    # que essas quatro ou cinco regrinhas
    # sobre strings, comandos e substituições
    # (estas últimas fazemos usando o atalho "$",
    # como em "$filename", abaixo).
    set parts [split $filename "."]

    # lindex = "list index"
    # "end" é meramente uma string, mas a maioria
    # dos comandos de Tcl a interpreta como
    # significando "o último índice da sequencia".
    set suffix [lindex $parts end]

    if {$suffix == "txt"} {
        # "puts" é o "print"/"echo" de outras linguagens
        puts $filename
    }
}
