# silrust v1.0a — Android

Base: RustDesk 1.5.0 oficial.

## Alterações
- nome visível: **silrust**
- apenas Android
- controlos flutuantes no lado direito
- toolbar preta de teclado/modificadores do RustDesk ocultada
- teclado Android normal (Gboard/Samsung) pelo botão silrust
- clipboard shelf próprio e persistente
- botão **Mais** mantém acesso/fallback às ações RustDesk durante a primeira validação

## Mantido intacto
- protocolo RustDesk
- P2P / hole punching
- relay
- codecs
- áudio
- ficheiros
- captura
- reconexão
- compatibilidade com RustDesk oficial no Windows

## Compilar
Pré-requisito: WSL + Ubuntu inicializado.

Execute `BUILD-SILRUST.bat`.

APK final:
`dist\silrust-v1.0a-arm64.apk`

## Servidor
Depois da instalação, configurar:
- ID Server: `silvending.ddns.net`
- Relay: vazio
- Key: public key do hbbs
