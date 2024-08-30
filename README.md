## No Linux:

Adicione o conteúdo do arquivo <code>vai-versao-unix</code> ao seu arquivo <code>.bashrc</code> ou <code>.zshrc</code> (geralmente localizado em <code>/home/&lt;seu-usuário&gt;</code>). Agora, toda vez que você estiver trabalhando com um repositório git no terminal (que já esteja apontando pro Github), o comando   <br><br><code>vai "&lt;insira sua mensagem de commit aqui&gt;"</code> <br> <br> simultaneamente adiciona as suas mudanças, as commita com sua mensagem e dá o push para o github, ou seja, temos um atalho para <br><br><code>git add . && git commit -m "&lt;insira sua mensagem de commit aqui&gt;" && git push</code>. 

Caso você não adicione nenhuma mensagem de commit, ou seja, só mande o comando <code>vai</code>, a mensagem de commit enviada será no formato <br><br><code>atualizacao em 23_07_2024 HH:MM:SS</code> <br> <br>
Para um exemplo concreto, veja, por exemplo, [esse commit](https://github.com/SaganGromov/commit-preguicoso/commit/48008c4f65f6598fe1644936527b64fe4455391b). 

## No Windows:

1. Garanta primeiro que você tenha um perfil no Powershell. Rode <code>Test-Path $PROFILE</code> para verificar (que irá retornar <code>True</code> caso já tenha, <code>False</code> caso contrário). Caso não tenha,
   rode  <br><code>New-Item -Path $PROFILE -ItemType File -Force</code> para criar.

2. Garanta também que seu usuário tem permissão para executar scripts Powershell. Você pode verificar isso com <code>Get-ExecutionPolicy</code>. Caso o retorno seja <code>Restricted</code>, abra o Powershell no modo administrador, e rode ou <br><code>Set-ExecutionPolicy RemoteSigned</code> (para habilitar a execução de scripts criados localmente) ou <br><code>Set-ExecutionPolicy Unrestricted</code> (para habilitar a execução de quaisquer scripts). Após mudar as permissões, rode <code>. $PROFILE</code> para recarregar o perfil do Powershell. 

3. Abra seu perfil no Powershell com <br><code>notepad $PROFILE</code> e copie e cole o conteúdo do arquivo <code>vai.ps1</code>. Pronto! Agora <code>vai</code> é um atalho para  <br><br><code>git add . && git commit -m "&lt;insira sua mensagem de commit aqui&gt;" && git push</code><br> <br> cuja mensagem de commit default  é  <br> <br><code>atualizacao em 23_07_2024 HH:MM:SS</code> <br> <br>
Para um exemplo concreto, veja, por exemplo, [esse commit](https://github.com/SaganGromov/commit-preguicoso/commit/48008c4f65f6598fe1644936527b64fe4455391b).
