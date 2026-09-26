SILRUST v1.0b — CLOUD BUILD
===========================

NÃO PRECISA:
- WSL
- Ubuntu no teu PC
- virtualização na BIOS
- Android Studio
- Flutter
- Rust
- NDK

A compilação corre nos servidores GitHub Actions.

PASSOS
======

1. Criar um repositório PRIVADO no GitHub, por exemplo:
   silrust

2. Extrair este ZIP e enviar todo o conteúdo para esse repositório.
   É importante enviar também a pasta escondida:
   .github

3. No GitHub abrir:
   Actions

4. Escolher:
   Build silrust Android

5. Carregar:
   Run workflow

6. Quando terminar, abrir o job concluído e em "Artifacts" descarregar:
   silrust-v1.0b-arm64

Dentro estará:
   silrust-v1.0b-arm64.apk

A build usa:
- RustDesk 1.5.0
- Flutter 3.24.5
- Rust 1.75
- cargo-ndk 3.1.2
- Android NDK r28c / 28.2.13676358

O PC local não compila nada.

NOTA
====
A primeira execução pode demorar porque descarrega e compila dependências.
As seguintes aproveitam cache do GitHub.
