<p align="center">
    <img src="./assets/logo.png" alt="logo" width="200"/>
</p>

[![en-us](https://img.shields.io/badge/README-EN--US-orange.svg)](https://github.com/pesader/webapp-factory/blob/master/README.md)

# Webapp Factory

Um pequeno programa para criar webapps usando Firefox, os quais

- instalam instantaneamente e sem necessidade de root
- são reconhecidos como aplicativos pelo seu ambiente desktop/gerenciador de janelas
- ocupam muito menos espaço de armazenamento que uma instalação nativa
- têm cookies e preferências isolados entre si
- são configurados com privacidade e segurança adicional
- podem opcionalmente vir com extensões de privacidade (UBlock Origin e Decentraleyes) pré-instaladas

⚠ ATENÇÃO: esse é meu primeiro bash script, então ainda há muito espaço para melhora!

## Tutorial

Primeiro, clone esse repositório e então use o comando `cd` para entrar nele

```bash
git clone https://github.com/pesader/webapp-factory
cd webapp-factory
```

Ainda não fiz um script de instalação global do `webapp-factory` então por enquanto é necessário usá-lo no diretório raiz desse repositório.

### Instalação de Webapps

Para instalar webapps, esse script precisa do link de um website (primeiro parâmetro) e de um nome para o webapp (segundo parâmetro). por exemplo:

```bash
./webapp install https://app.element.io/ Element
```

Você também pode especificar o link e o nome usando as *flags* `-l` (abrevia "link") e `-n` (abrevia "nome"). Há também a opção de especificar um ícone para o webapp, com a *flag* `-i`. Para isso, é uma boa procurar os ícones disponíveis com o subcomando `findicon`:

```bash
./webapp findicon element


Papirus: element-nightly
Papirus: io.elementary.photos
Papirus: distributor-logo-elementary
Papirus: gelemental
Papirus: io.elementary.appcenter
Papirus: element-desktop
Papirus: io.elementary.code
Papirus: com.github.eudaldgr.elements
Papirus: io.elementary.mail
Papirus: element-desktop-nightly
Papirus: io.elementary.camera
Papirus: element
```

Parece que `element` é o nome do ícone do Element! Que conveninete!
Então vamos usá-lo no nosso webapp:

```bash
./webapp install -n Element -l https://app.element.io/ -i element
```

Você também tem a opção de instalar as extensões UBlock Origin e Decentraleyes no seu webapp. Para isso, basta adicionar a *flag* `-p` ao final do seu comando:

```bash
./webapp install -n Element -l https://app.element.io/ -i element -p
```

After that, hover the mouse near the titlebar of the window, click the top right menu, and enable the add-ons manually, as shown in the screencast below.

Ao rodar o comando acima, o webapp será instalado! Para habilitar as extensões, aproxime o cursor do seu mouse do top da janela e clique no menu do canto superior direito. Depois, ative cada extensão, como mostrado na gravação de tela abaixo:

https://user-images.githubusercontent.com/65264536/138526905-5a27d03e-f2fe-4152-ac39-2782dc1e8bc0.mp4

### Remoção de Webapps

Basta digitar `webapp remove` seguido do nome do webapp que você quer remover.

## Requerimentos

Esse programa foi escrito para sistemas operacionais GNU/Linux, e foi testado no Ubuntu 20.04 com GNOME 3.36.

É necessário ter `firefox`, `bash`, e `wget` instalados para que esse programa funcione (a maioria das distribuições GNU/Linux já vem com eles instalados). Os ícones [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/) não são necessários mas altamente recomendados, pois contém muitos ícones adicionais.

## Créditos

Esse programa é, em grande medida, uma automatização das instruções descritas [nesse](https://www.reddit.com/r/firefox/comments/li2lqg/comment/gn2sltw/) comentário do Reddit, pelo usuário [u/Apoema](https://www.reddit.com/user/Apoema/).

Também foram fonte de inspiração [Nativefier](https://github.com/nativefier/nativefier), [Webapp Manager](https://github.com/linuxmint/webapp-manager), [Ubuntu Web Remix](https://github.com/Ubuntu-Web/wadk), e a implementação de webapps do [Chromium](https://www.chromium.org/).

Agradeço também a [arkenfox](https://github.com/arkenfox) e [pyllyukko](https://github.com/pyllyukko) por suas configurações de `user.js`, das quais eu aproveitei a algumas das opções de segurança e privacidade adicional para o Firefox.

Além disso, as cores do logo são da maravilhosa paleta de cores [Nord](https://www.nordtheme.com), do Arctic Studio.

## Licença

Esse programa é licenciado sob a GPL 3.0
