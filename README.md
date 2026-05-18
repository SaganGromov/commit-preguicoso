# commit-preguicoso

Scripts auxiliares para automatizar criação de repositórios GitHub e commits com mensagens geradas por IA.

O projeto inclui funções para:

- criar um repositório local/remoto com `gh repo create`;
- gerar `README.md` automaticamente em repositórios novos;
- gerar mensagens de commit a partir do diff staged usando `codex`, `copilot` ou `claude`;
- fazer `git add`, `commit` e `push` com um comando curto.

## Arquivos

- `criar-repo`: define `criarRepo`, função para inicializar um repositório, criar o remoto no GitHub, gerar README e commit inicial.
- `vai-versao-unix`: define `vai`, função para sistemas Unix que gera mensagem de commit via IA ou usa uma mensagem informada.
- `vai.ps1`: versão PowerShell simples do comando `vai`.

## Uso

Carregue a função desejada no shell:

```sh
source ./vai-versao-unix
```

Depois execute:

```sh
vai
```

Para informar a mensagem manualmente:

```sh
vai "minha mensagem de commit"
```

Para escolher o backend de IA:

```sh
vai --codex
vai --copilot
vai --claude
```

Para criar um repositório:

```sh
source ./criar-repo
criarRepo --codex nome-do-repositorio publico /caminho/do/projeto
```

A privacidade aceita os valores `publico` ou `privado`.

## Dependências

Os scripts assumem que `git` está disponível. Para criação de repositório remoto, também usam o GitHub CLI (`gh`). Para geração de mensagens por IA, usam os CLIs `codex`, `copilot` ou `claude`, conforme o backend escolhido.
