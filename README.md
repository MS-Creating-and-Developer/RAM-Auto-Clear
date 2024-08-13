Script de Limpeza de Memória e Arquivos Temporários
Este script em Shell é projetado para ajudar a melhorar o desempenho do seu computador, especialmente em hardware com recursos limitados. Ele realiza uma limpeza periódica da memória RAM e dos arquivos temporários, o que pode ser benéfico para manter o sistema funcionando de maneira mais eficiente.

Funcionalidades
Limpeza da Memória RAM: O script limpa o cache da memória para liberar espaço e melhorar a performance do sistema.
Remoção de Arquivos Temporários: Remove arquivos do diretório /temp, ajudando a liberar espaço em disco.
Execução Periódica: Executa a limpeza em um intervalo de tempo configurável.
Uso
Clone ou baixe o script:
Salve o conteúdo do script em um arquivo, por exemplo, limpeza.sh.

Dê permissão de execução:

bash
Copiar código
chmod +x limpeza.sh
Execute o script:

bash
Copiar código
./limpeza.sh
Configuração do Intervalo:
Ao executar o script, você será solicitado a informar o intervalo de tempo (em segundos) entre as execuções de limpeza.

Exemplo de Execução
bash
Copiar código
A cada quantos segundos? 60
Este comando fará com que o script execute a limpeza a cada 60 segundos.

Atenção: Use este script com cuidado, especialmente ao remover arquivos. Certifique-se de que o diretório /temp é seguro para limpeza automática.

