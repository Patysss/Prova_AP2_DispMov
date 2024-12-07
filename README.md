# Prova_Prof_Ricardo

Aluna: Patricia Silva Ribeiro
Faculdade CDL
5° semestre - noite
Programação para dispositivos moveis
Professor Ricardo Holanda

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Neste projeto foi criado uma aplicação que usa os seguintes conceitos da linguagem DART:

- Classes e Objetos
A estrutura básica dos programas foi implementada com classes, como CaraOuCoroa, JogoDaVelha e Jokenpo.
Cada classe representa uma tela ou funcionalidade do aplicativo.
Uso do StatefulWidget e StatelessWidget para gerenciar o estado das telas.

- Estado e Gerenciamento de Estado
Os widgets StatefulWidget foram usados quando o estado da interface precisava mudar durante a execução do programa.
Exemplo: Atualização do tabuleiro no Jogo da Velha ou da escolha do usuário e do computador no Cara ou Coroa.

- Interação com o Usuário
Utilização de eventos de clique em botões (por exemplo, onPressed) para capturar ações do usuário.
Alteração da interface com base na interação do usuário.

- Listas
Uso de listas para armazenar dados, como as opções de jogadas no Jokenpô (List<String> _opcoes) ou o estado do tabuleiro no Jogo da Velha (List<String> _tabuleiro).

- Controle de Fluxo
Estruturas condicionais (if, else if, else) para determinar o resultado dos jogos, como verificar o vencedor no Jogo da Velha ou o acerto no Cara ou Coroa.
Uso de laços de repetição, como o for, para verificar combinações no tabuleiro no Jogo da Velha.

- Funções
Criação de funções para encapsular a lógica, como jogar() no Jokenpô ou fazerJogada() no Jogo da Velha.
As funções tornam o código mais organizado e reutilizável.

- Manipulação de Strings
Uso de strings para exibir mensagens na interface (por exemplo, resultados do jogo ou instruções).
Concatenação e interpolação de strings para criar mensagens dinâmicas.

- Geração Aleatória
Uso da classe Random para gerar resultados imprevisíveis, como a escolha da máquina no Cara ou Coroa e no Jokenpô.

- Layouts e Widgets do Flutter
Uso de widgets hierárquicos como Column, Row, e Center para criar a interface do usuário.
Widgets como Text, ElevatedButton, e Image.asset foram usados para exibir conteúdo e interagir com o usuário.

- Estilo e Design
Uso de propriedades como TextStyle, SizedBox, e Padding para estilizar a interface e melhorar a experiência do usuário.

- Gestão de Estado Imutável
Widgets como StatelessWidget foram usados quando a interface não precisa de mudanças após ser carregada, como em páginas com apenas texto estático.

- Manipulação de Listas e Índices
Controle de estados com listas para representar mudanças, como o estado do tabuleiro no Jogo da Velha.
Navigator: Para mudar de uma tela para outra.
SetState: Para atualizar a interface do usuário quando o estado interno muda.


Um agradecimento especial ao Professor Ricardo no qual nos desafiou com este projeto, que fez com que os horizontes sobre a linguem DART fossem expandidos.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

A new Flutter project created with FlutLab - https://flutlab.io

## Getting Started

A few resources to get you started if this is your first Flutter project:

- https://flutter.dev/docs/get-started/codelab
- https://flutter.dev/docs/cookbook

For help getting started with Flutter, view our
https://flutter.dev/docs, which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Getting Started: FlutLab - Flutter Online IDE

- How to use FlutLab? Please, view our https://flutlab.io/docs
- Join the discussion and conversation on https://flutlab.io/residents
