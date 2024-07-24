function vai {
    param (
        [string]$message = ( "atualizacao em " + (Get-Date (Get-Date) -Format "dd-MM-yyyy HH:mm:ss") )
    )
    git add .
    git commit -m $message
    git push
}
