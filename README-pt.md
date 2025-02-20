     _     _           _
    | |   | |         | |
    | |___| |_____  __| | ____
    |_____  (____ |/ _  |/ ___)
     _____| / ___ ( (_| | |
    (_______\_____|\____|_|

    # Yet Another Dotfile Repo v2.0
    # Now with Chezmoi, Prezto and Vim-Plug!

[![Join the chat at https://gitter.im/skwp/dotfiles](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/skwp/dotfiles?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Este é um fork dedicado ao **GNU/Linux** do @[skwp/dotfiles](https://github.com/skwp/dotfiles).

Escolha a Linguagem: [Inglês](README.md), **Português**

#### sh -c "\`curl -fsSL https://github.com/nandalopes/dotfiles/raw/mine/root/bin/yadr/install.sh \`"
{: .no_toc }

**Gerenciado com [chezmoi](https://chezmoi.io/).**

Este repo foi construído para meu próprio benefício, no entanto sinta-se a vontade para explorar e pegar qualquer coisa que possa melhorar sua própria produtividade.

## O que é YADR?

**YADR é um repositório dotfile opinativo que fará seu coração cantar**

  * Os melhores bits de todos os principais repositórios de dotfiles, plug-ins vim e zsh organizados em um só lugar, em uma maneira simples e coesa de trabalhar.
  * Mais de 90 plug-ins do vim, todos sob o mesmo teto, trabalhando juntos, cada plug-in pesquisado e configurado para estar no seu melhor, geralmente com teclas de atalho melhores.
  * Muitos plug-ins zsh, começando com a maravilhosa base do Prezto e adicionando algumas sutilezas por cima.
  * Tudo está no estilo vim: irb, linha de comando postgres, etc.

*MacOS não é compatível! Se funcionar, ótimo. Se não, por favor, não reclame. Pode ser necessário instalar o zsh se ainda não o tiver feito.*
*Dito isso, verifique a seção Docker abaixo*

## Lista de discussão

Tem dúvidas, preocupações, deseja ouvir anúncios? Junte-se ao [Grupo do Google](https://groups.google.com/forum/#!forum/yadr-users)

Use o GitHub Issues apenas para solicitações de pull ou relatórios de bug.

## Screenshot

![screenshot vim](https://i.imgur.com/IhPYpNV.png)

## Instalação

Para começar, execute:

```bash
sh -c "`curl -fsSL https://github.com/nandalopes/dotfiles/raw/mine/root/bin/yadr/install.sh`"
```

**Observação**: o YADR instalará automaticamente todos os seus subcomponentes.

### Script de conveniência

Caso não tenha o `chezmoi` Instalado - Execute o script
[`root/bin/yadr/install.sh`](./root/bin/yadr/install.sh)
após fazer o download dele.

### Manual com `git`

Você tem que clonar este repositório, e a partir da pasta raiz dele, executar o script
`install.sh`

### Manual com `chezmoi`

Aproveitando as capacidades do Chezmoi

```bash
chezmoi init --apply --verbose --source ~/.yadr --https nandalopes/dotfiles
```

### _E se eu já tiver um repo dotfiles com chezmoi?_

Se você quiser integrar este repositório com o seu, faça o seguinte:

```bash
chezmoi cd
git remote add yadr https://github.com/nandalopes/dotfiles.git
git fetch yadr

# Mesclar repositórios:
git merge --allow-unrelated-histories yadr/mine

# Verifique se existem arquivos duplicados
chezmoi verify

# Então aplique as mudanças
chezmoi apply --verbose
```

## Espere, você não terminou! Faça isso:

#### Instale o tema Solarized no seu terminal escolhido

Mude as cores do seu terminal para Solarized. Muitos terminais no Linux tem um esquema de cores solarized instalado por padrão.

#### Remapear caps-lock para esc com [Karabiner-Elements](https://pqrs.org/osx/karabiner/index.html).

A tecla escape é a mais usada no vim. Os teclados antigos costumavam ter Esc onde o Tab está hoje. Os teclados da Apple são os piores com suas minúsculas teclas Esc. Mas tudo isso é corrigido pelo remapeamento de Caps para Escape. Se você está acertando um alvo pequeno no canto, está diminuindo a velocidade consideravelmente e provavelmente danificando as mãos com lesões por esforço repetitivo.

#### Configure uma tecla de atalho em todo o sistema para iTerm (Keys=>Hotkey)

Recomendo Cmd-Escape, que é realmente o Cmd-Capslock.

#### No iTerm, desmarque "Janelas de tela inteira nativas" em Geral

Isso lhe dará janelas de tela inteira rápidas que podem ser trocadas sem alternar para espaços.

#### no MacVim, desmarque "Preferir suporte nativo de tela inteira" em Configurações avançadas

O mesmo que o iTerm. A navegação em espaços nativos desacelera tudo sem motivo.

## Se você deseja executar o vim no terminal

  * Certifique-se de instalar o tema Solarized em seu terminal!
  * Se você não quiser usar o tema solarized no terminal, certifique-se de fazer o seguinte:

```vim
let g:yadr_using_unsolarized_terminal = 1
" in ~/.vimrc.before
```

  * Se você quiser usar um esquema de cores alternativo como Gruvbox, em seu `~ / .vimrc.after`:

```vim
let g:yadr_disable_solarized_enhancements = 1
colorscheme base16-twilight
" in ~/.vimrc.after
```

## Atualizando

Atualizar é fácil.


      chezmoi update --verbose --dry-run # conferir as atualizações antes de aplicar
      chezmoi apply --verbose


## O que está incluído e como personalizar?

Continue lendo para saber o que o YADR oferece!

### ~~Homebrew~~

TODO: portar script de instalação do [homebrew](https://brew.sh/) para algum `run_once_homebrew_install`.

### ZSH

Pense no Zsh como um Bash mais incrível sem ter que aprender nada novo.
Correção automática para seus comandos, destaque de sintaxe e muito mais.
Também fornecemos muitos aprimoramentos:

  * Modo Vim e estilo bash `Ctrl-R` para pesquisar histórico de comandos
  * `Ctrl-x,Ctrl-l` para inserir a saída do último comando
  * Correspondência difusa - se você digitar incorretamente um nome de diretório, o preenchimento com tab irá corrigi-lo
  * Integração [fasd](https://github.com/clvv/fasd) - clique em `z` e corresponda parcialmente ao diretório usado recentemente. Completação com Tab ativada.
  * [Prezto - o poder por trás do zsh do YADR](https://github.com/sorin-ionescu/prezto)
  * [Como adicionar seu próprio tema ZSH](docs/zsh/themes.md)

### Aliases / Apelidos

Muitas coisas que fazemos todos os dias são feitas com atalhos de dois ou três caracteres mnemônicos. Sinta-se à vontade para editá-los:


    ae # alias edit
    ar # alias reload


**Aliases / Apelidos para gerenciar seus dotfiles**

  * `czI` - chezmoi (I)init - escrever ou reescrever o arquivo de configuração
  * `czh` - chezmoi (h)ome - mudar para a pasta dos dotfiles
  * `cza [ file(s) | folder(s) ]` - chezmoi (a)pply - aplica o *source state* (estado fonte, estado na pasta dotfiles) ao arquivo destino.
    Adicione `--dry-run` para prever as diferenças sem modificar o destino.
  * `czA [ file(s) | -r folder(s) ]` - chezmoi (A)dd - adiciona arquivos ao *source state*
  * `czc file(s)` - chezmoi (c)at - mostra o *target state* (estado alvo) de um ou mais arquivos, baseado no *source state*
  * `cze file(s)` - chezmoi (e)dit - edita o *source state* de um arquivo e aplica as mudanças em seguida.
    Adicione `--dry-run` para prever as diferenças sem modificar o destino.
  * `czE` - chezmoi (E)dit-config - edita o arquivo de configuração `chezmoi.yaml`
  * `czf [ file(s) | -r folder(s) ]` - chezmoi (f)orget - remove um arquivo do *source state*, mantém o destino
  * `czg` - chezmoi (g)it - executar comando do git na pasta dotfiles
  * `czu` - chezmoi (u)pdate - faz o download do repositório e aplica as mudanças.
    Adicione `--dry-run` para prever as diferenças sem modificar o destino.
  * `czd [ file(s) | -r folder(s) ]` - chezmoi (d)iff - compara destino com *target state*
  * `czD` - chezmoi (D)ata - lista as variáveis do chezmoi, útil para templates
  * `czm file(s)` - chezmoi (m)erge - inicia um *merge* entre arquivo de destino, *source state* e *target state*

### Customizações do Git

O YADR assumirá o controle do seu `~/.gitconfig`, portanto, se você deseja armazenar seus nomes de usuário, coloque-os em `~/.gitconfig.user`

Recomenda-se usar este arquivo para definir suas informações de usuário.  Como alternativa, você pode definir as variáveis de ambiente apropriadas em seu `~/.secrets`.

  * `git l` ou `gl` - um log git muito mais utilizáve
  * `git b` ou `gb` - uma lista de branches com resumo do último commit
  * `git r`: uma lista de controles remotos com informações
  * `git t` ou `gt` - uma lista de tags com informações
  * `git nb` ou `gnb` - abreviação de (n)ew (b)ranch, comandos para checkout -b
  * `git cp` ou `gcp` - cherry-pick -x (mostrando o que foi escolhido)
  * `git simple` - um formato limpo para a criação de changelogs
  * `git recent-branches` - se você esqueceu no que está trabalhando
  * `git unstage` / `guns` (remover do indice) e `git uncommit` / `gunc` (reverter para o tempo anterior ao último commit - perigoso se já foi feito o push) aliases
  * Algumas configurações padrão sensatas, como melhorar as mensagens de mesclagem, push apenas empurra o branch atual, removendo dicas de status e usando prefixos mnemônicos em diff: (i)ndex, (w)ork tree, (c)ommit and (o)bject
  * Cores ligeiramente melhoradas para diff
  * `gdmb` (g)it (d)elete (m)erged (b)ranches - Exclui todos os ramos já mesclados no ramo atual

### Framework de configuração Myrepos

[Myrepos](https://myrepos.branchable.com/) é uma ferramenta para gerenciar todos os seus repositórios de controle de versões.

YADR provê um framework de configuração para gerenciar não apenas repositórios git, mas qualquer sistema de controle de versões suportado pela ferramenta. Adaptado de [@aspiers/mr-config](https://github.com/aspiers/mr-config).

Você terá dentro de uma pasta `.config/mr`:

  * [`.mrconfig`](./root/dot_mrconfig) - usa [`library_loaders`](./root/private_dot_config/mr/library_loaders) para carregar todos os componentes abaixo:
    * [`groups.d/`](./root/private_dot_config/mr/groups.d) - grupos de definiçoes de repos `mr`
    * [`lib.d/`](./root/private_dot_config/mr/lib.d) que contém
      * vários snippets shell que são carregados automaticamente no contexto do parâmetro `mr`'s `lib`
      * definições de várias ações `mr` e outros parâmetros `mr`
    * [`sh.d/`](./root/private_dot_config/mr/sh.d) - várias funções shell auxiliares usadas nos arquivos em `lib.d/`. Podem ser reutilizadas por terceiros, por exemplo:
      * [`sh.d/git`](./root/private_dot_config/mr/sh.d/git) - várias funções auxiliares relacionadas com `git`
      * [`sh.d/git-remotes`](./root/private_dot_config/mr/sh.d/git-remotes) - várias funções auxiliares para gerenciamento de remotos git

### RubyGems

Um `.gemrc` está incluído. Nunca mais digite `gem install whatever --no-ri --no-rdoc`. `--no-ri --no-rdoc` é feito por padrão.

### Tmux configuration

`tmux.conf` fornece alguns padrões lógicos para tmux como uma poderosa barra de status e atalhos de teclado do vim.
Você pode personalizar a configuração em `~/.tmux.conf.user`.

![screenshot tmux](https://i.imgur.com/Rlh30kg.png)

### Vimização de tudo

O inputrc e o editrc fornecidos transformarão suas várias ferramentas de linha de comando, como mysql e irb, em prompts do vim. Há também um recurso de pesquisa de histórico reverso Ctrl-R incluído no editrc, muito útil no irb, linha de comando do postgres e etc.

### Diff de imagens: spaceman-diff

Nós incluímos o comando [`spaceman-diff`](https://github.com/holman/spaceman-diff). Agora você pode comparar imagens na linha de comando.

## Vim - O que está incluído?

  * [Navegação - NERDTree, EasyMotion and more](docs/vim/navigation.md)
  * [Objetos de texto - manipulate ruby blocks, and more](docs/vim/textobjects.md)
  * [Manipulação de código - rails support, comments, snippets, highlighting](docs/vim/coding.md)
  * [Utilidades - indentação, gerenciamento de registros de cópia, e muito mais](docs/vim/utils.md)
  * [Melhorias genéricas que não adicionam novos comandos](docs/vim/enhancements.md)

Uma lista de alguns dos comandos mais úteis que o YADR fornece no vim está incluída abaixo.
Essa não é uma lista exaustiva. Para obter um conhecimento mais profundo, pratique alguns deles todos os dias e, em seguida, comece a consultar as listas de plug-ins acima para aprender mais.

#### Navegação

  * `,z` - ir para o buffer anterior (:bp)
  * `,x` - ir para o próximo buffer (:bn)
  * `Cmd-j` e `Cmd-k`mover para cima e para baixo aproximadamente por funções (`\j` e `\k` no Linux)
  * `Ctrl-o` - Posição do cursor antigo - este é um mapeamento padrão, mas muito útil, então incluído aqui
  * `Ctrl-i` - oposto de Ctrl-O (novamente, este é o padrão)

#### Pesquisar/Navegar no código

  * `,f` - Encontre instantaneamente a definição da classe (deve ter ctags instalado)
  * `,F` - igual a `,f` mas em uma divisão vertical
  * `,gf` ou `Ctrl-f` - o mesmo que vim normal gf (vá para o arquivo), mas em uma janela vertical (funciona também com números de linhas `file.rb:123`)
  * `gF` - mapeamento vim padrão, aqui para integridade (vá para o arquivo no número da linha)
  * `,k` - Pesquise a palavra atual sob o cursor e mostre os resultados na janela de correção rápida
  * `,K` - Grep a palavra atual até o próximo ponto de exclamação (útil para métodos ruby foo!)
  * `Cmd-*` - destacar todas as ocorrências da palavra atual (semelhante a regular `*` exceto que não se move)
  (`Alt` no Linux)
  * `,hl` - ativar e desativar o destaque da pesquisa
  * `,gg` ou `,ag` - Linha de comando Grep, digite entre aspas. Usa o Ag Silver Searcher.
  * Depois de pesquisar com `,gg` você pode navegar pelos resultados com `Ctrl-x` e `Ctrl-z` (ou vim `:cn` e `:cp`)
  * `,gd` - Grep def (greps para 'def [nome da função]') quando o cursor está sobre o nome da função
  * `,gcf` - Grep Arquivo Atual para encontrar referências ao arquivo atual
  * `//` - limpar a pesquisa
  * `,,w` (Apelido `,<esc>`) ou `,,b` (Apelido `,<shift-esc>`): EasyMotion, uma ferramenta de estilo vimperator que destaca pontos de salto na tela e permite que você digite para chegar lá.
  * `,mc` - marque esta palavra para MultiCursor (como sublime).  Use `Ctrl-n` (próximo), `Ctrl-p` (anterior), `Ctrl-x` (pular) para adicionar mais cursores, então faça coisas normais do vim como editar a palavra.
  * `gK` - Abre a documentação da palavra sob o cursor.
  * Barra de espaço - Sneak - digite dois caracteres para mover em uma linha.  Mais ou menos como o `f` do vim, mas mais preciso.
  * `:Gsearch foo` - pesquisa global, então faça seu `%s/search/replace/g` normal e siga com `:Greplace` para substituir em todos os arquivos. Quando terminar, use `:wall` para gravar todos os arquivos.

#### Navegação no arquivo

  * `,t` - seletor de arquivo fuzzy
  * `,b` - Seletor de buffer - ótimo para pular para um arquivo que você já abriu
  * `Cmd-Shift-M` - pular para o método - pesquisa de tag CtrlP no buffer atual
  (`,M` no Linux)
  * `,jm` pular para modelos. Outros `,j` mapeamentos: `,jc` para controladores, `,jh` para auxiliares, etc. Se você pensar em um conceito e uma carta, nós o ajudamos.
  * `Cmd-Shift-N` - NERDTree toggle (`,N` no Linux)
  * `Ctrl-\` - Mostra o arquivo atual em NERDTree
  * `Cmd-Shift-P` - Limpa o cache do CtrlP
  (`,P` no Linux)

#### Melhores combinações de teclas para comandos de edição comuns

  * Ctrl-Espaço para autocompletar. Tab para fragmentos snipmate.
  * `,#` `,"` `,'` `,]` `,)` `,}` para envolver uma palavra nesses invólucros comuns. o # faz # {interpolação em ruby}. funciona em modo visual (obrigado @cj). Normalmente, isso é feito com algo como `ysw#`
  * `Cmd-'`, `Cmd-"`, `Cmd-]`, `Cmd-)`, etc para alterar o conteúdo dentro dessas marcas circundantes. Você não tem que estar dentro deles (`\"` no Linux)
  * `,.` para ir para o último local de edição (o mesmo que `'.`) porque o apóstrofo é distante para o dedo mindinho
  * `,ci` para mudar dentro de qualquer conjunto de aspas/colchetes/etc

#### Abas, janelas, divisões

  * Use `Cmd-1` a` Cmd-9` para alternar para um número de guia específico (como iTerm e Chrome) - e as guias foram configuradas para mostrar números (`,t1` ou `Alt-1` no Linux)
  * `Ctrl-h, l, j, k` - para mover para a esquerda, direita, para baixo, para cima entre as janelas. Isso também funciona entre vim e painéis tmux graças ao `vim-tmux-navigator`.
  * `Q` - Assassino de janela inteligente. Feche a janela `wincmd c` se houver várias janelas para o mesmo buffer, ou mate o buffer `bwipeout` se esta for a última janela nele.
  * `vv` - divisão vertical (`Ctrl-w,v`)
  * `ss` - divisão horizontal (`Ctrl-w,s`)
  * `,qo` - abre a janela de correção rápida (é para onde vai a saída do Grep)
  * `,qc` - fechar a janela de correção rápida

#### Utilitários

  * `Ctrl-p` após colar - Use `p` para colar e `Ctrl-p` para percorrer os registros anteriores. Fornecido por YankRing.
  * `,yr` - ver o yankring - uma lista de seus comandos de cópia anteriores. você também pode colar e pressionar `ctrl-p` para percorrer os comandos de cópia anteriores
  * `crs`, `crc`, `cru` via abolish.vim, transforma em snake_case, camelCase e UPPERCASE. Existem mais `:help abolish`
  * `:NR` - NarrowRgn - use isso em um pedaço do texto selecionado para criar uma nova divisão apenas com aquele texto. Faça algum trabalho nisso, então: wq para obter os resultados de volta.
  * `,ig` - alternar guias visuais de indentação
  * `,cf` - Copiar o nome do arquivo atual (caminho completo) para o buffer de colagem do sistema (não vi)
  * `,cn` - Copiar o nome do arquivo atual (apenas nome, sem caminho)
  * `,yw` - copiar uma palavra de qualquer lugar dentro da palavra (para que você não precise ir para o início dela)
  * `,ow` - sobrescrever uma palavra com o que estiver em seu buffer de colagem - você pode estar em qualquer lugar na palavra. evita ter que selecioná-la visualmente
  * `,ocf` - abre arquivos alterados (roubado de @garybernhardt). abra todos os arquivos com mudanças git em abas
  * `,w` - tira os espaços em branco à direita
  * `sj` - divide uma linha como um hash { :foo => { :bar => :baz} } em um hash de várias linhas (j = down)
  * `sk` - não dividir um link (k = up)
  * `,he` - Html Escape
  * `,hu` - Html Unescape
  * `,hp` - Antevisão Html (abre no Safari)
  * `Cmd-Shift-A` - alinha as coisas (digite um caractere/expressão para alinhar, funciona no modo visual ou sozinho) (`,A` no Linux)
  * `:ColorToggle` - ative o realce de cor #abc123 (útil para css)
  * `:GV` - navegador de histórico Git
  * `,hi` - mostra o grupo realce atual. se você não gosta da cor de alguma coisa, use isto, então use `hi! link [groupname] [anothergroupname]` em seu vimrc.after para remapear a cor. Você pode ver as cores disponíveis usando `:hi`
  * `,gt` - Go Tidy - arruma seu código html (funciona em uma seleção visual)
  * `:Wrap` - quebra linhas longas (por exemplo, ao editar arquivos markdown)
  * `Cmd-/` - alterna comentários (geralmente gcc de tComment) (`,/` no Linux)
  * `gcp` - comentar um parágrafo

#### Rails & Ruby

  * `,vv` e `,cc` para alternar entre visualização e controlador - estes são mapas para :Rcontroller e :Rview. Explore a família de comandos :R <Tab> para se divertir mais com rails.vim!
  * `,rs` e `,rl` para executar rspec ou uma linha de especificação no iTerm (verifique a janela do iTerm para obter os resultados)
  * `,ss` e `,sl` para o mesmo usando `spring rspec` que torna suas especificações Rails mais rápidas armazenando em cache o env Rails (deve ter gem spring instalado)
  * vim-ruby-refactoring - tente `,rem` `,rel` para extrair métodos ou instruções let
  * `Ctrl-s` - Abre as especificações relacionadas em uma janela. Semelhante a :A e :AV de rails.vim, mas também está ciente do diretório fast_spec e é mais rápido de digitar
  * `:Bopen [nome do gem]` para navegar até um gem (@tpope/vim-bundler)
  * `,gcp` - Grep Parcial Atual para encontrar referências para a parcial de visualização atual
  * `,orb` - bloco de rubi externo. leva você um nível acima dos blocos aninhados (ótimo para rspec)

#### Vim Dev

  * `,vc` - (Comando do Vim) copia o comando sob o seu cursor e o executa no vim. Ótimo para testar alterações de linha única no vimrc.
  * `,vr` - (Vim Reload) carrega arquivo atual como um arquivo vim

## Extendendo e sobrescrevendo configurações do YADR

* [Depuração de mapeamentos de teclado do vim](docs/vim/keymaps.md)
* [Substituindo as configurações do vim com ~/.vimrc.after e amigos](docs/vim/override.md)
* [Adicionando seus próprios plug-ins do vim](docs/vim/manage_plugins.md)

## Testando com Docker

Podemos usar o Docker para testar algumas mudanças em um contêiner **Linux**.

Supondo que seu sistema host tenha Docker e Docker Compose devidamente instalado, execute:

    docker compose run dotfiles

Isso construirá a imagem do contêiner se nunca a tiver criado antes (o que pode demorar um pouco - os tempos futuros serão mais rápidos) e, em seguida, executará uma sessão `zsh` dentro desse contêiner para você.
Lá você pode brincar, testar comandos, aliases, etc.

*Aviso*: este repositório é orientado principalmente para Linux. Portanto, qualquer suporte para MacOS só pode ser feito com a ajuda da comunidade.

## Diversos

* [Créditos e agradecimentos](docs/credits.md)
* [Outras ferramentas de produtividade macOS recomendadas](docs/macos_tools.md)
* [Yan's Blog](https://yanpritzker.com)

### macOS Hacks

O arquivo macOS é um script bash que configura padrões razoáveis para desenvolvedores e usuários avançados
no macOS. Leia antes de executá-lo. Usar:

    bin/macos

Esses hacks são centrados no Leão. Pode não funcionar para outros sistemas operacionais. Meus mods favoritos incluem:

  * Taxa de repetição de tecla ultrarrápida (agora você pode rolar super rápido usando j/k)
  * Sem verificação de imagem de disco (arquivos baixados abrem mais rápido)
  * Exiba a pasta ~/Library no Finder (oculto no Lion)

### Problemas de Macvim com Lua?

```
brew uninstall macvim
brew remove macvim
brew cleanup
brew install macvim --custom-icons --with-override-system-vim --with-lua --with-luajit
```

### Problemas no Terminal Vim com Lua?

Instalar o terminal vim (com lua) com um Ruby gerenciado por RVM pode fazer com que o plugin neocomplete falhe em segfault. Tente desinstalar o vim e, em seguida, instalar com o ruby do sistema:

```
brew uninstall vim
rvm system do brew install vim --with-lua
```

### [Pry](https://pryrepl.org/)

Pry oferece uma experiência IRB muito melhor fora da caixa com cores, preenchimento de guia e muitos outros truques. Você também pode usá-lo
como um depurador real instalando [pry-nav](https://github.com/nixme/pry-nav).

[Saiba mais sobre as personalizações do pry do YADR e como instalar](doc/pry.md)

## Licença

MIT
