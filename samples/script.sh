# Definição de um array de caminhos
caminho_dos_arquivos=./*

# Percorrendo o array de caminhos
for ./scripts in $caminho_dos_arquivos; do
    # Extraindo nome do arquivo ./aa -> aa
    nome_do_arquivo=${caminho_do_arquivo:2:4}
    # Definindo o caminho do arquivo de texto
    caminho_do_arquivo_de_texto=$caminho_do_arquivo/arquivo.txt

    # Se o arquivo de texto existe
    if [ -f $caminho_do_arquivo_de_texto ]; then
        # Imprima que o arquivo existe
        echo "O arquivo $nome_do_arquivo existe em $caminho_do_arquivo"
    # Senão
    else
        # Crie o arquivo de texto
        touch $caminho_do_arquivo_de_texto
        # Imprima que o arquivo foi criado
        echo "O arquivo $nome_do_arquivo foi criado em $caminho_do_arquivo"
    fi

    # Escrevendo script_sample_folder-* no arquivo de texto
    echo script_sample_folder-$nome_do_arquivo > $caminho_do_arquivo_de_texto
done
