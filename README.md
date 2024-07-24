## No Linux:

Adicione o conteúdo do arquivo <code>vai-versao-unix</code> ao seu arquivo <code>.bashrc</code> (geralmente localizado em <code>/home/&lt;seu-usuário&gt;</code>). Agora, toda vez que você estiver trabalhando com um repositório git no terminal (que já esteja apontando pro Github), o comando <code>vai "&lt;insira sua mensagem de commit aqui&gt;"</code> simultaneamente adiciona as suas mudanças, as commita com sua mensagem e dá o push para o github, ou seja, temos um atalho para \n<code>git add . && git commit -m "&lt;insira sua mensagem de commit aqui&gt;" && git push</code>. 

Caso você não adicione nenhuma mensagem de commit, ou seja, só mande o comando <code>vai</code>, a mensagem de commit enviada será no formato <code>atualizacao em 23-07-2024 23:58:24</code>.

## No Windows:

1. Garanta primeiro que você tenha um perfil no Powershell. Rode <code>Test-Path $PROFILE</code> para verificar (que irá retornar <code>True</code> caso já tenha, <code>False</code> caso contrário). Caso não tenha,
   rode <code>New-Item -Path $PROFILE -ItemType File -Force</code> para criar.

2. Garanta também que seu usuário tem permissão para executar scripts Powershell. Você pode verificar isso com <code>Get-ExecutionPolicy</code>. Caso o retorno seja <code>Restricted</code>, abra o Powershell no modo administrador, e rode ou <code>Set-ExecutionPolicy RemoteSigned</code> (para habilitar a execução de scripts criados localmente) ou <code>Set-ExecutionPolicy Unrestricted</code> (para habilitar a execução de quaisquer scripts). Após mudar as permissões, rode <code>. $PROFILE</code> para recarregar o perfil do Powershell. 

3. Abra seu perfil no Powershell com <code>notepad $PROFILE</code> e copie e cole o conteúdo do arquivo <code>vai.ps1</code>. Pronto! Agora <code>vai</code> é um atalho para \n<code>git add . && git commit -m "&lt;insira sua mensagem de commit aqui&gt;" && git push</code>, com mensagem de commit default  mensagem no formato <code>atualizacao em 23-07-2024 23:58:24</code>.
