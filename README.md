❗ **Atenção:** versão de arquivo, esta lista não foi atualizada desde 2019

---

[🇺🇸 Read this in english](en_US/README.md)

![cipher](visual/banner.png)

[![Contato](https://img.shields.io/badge/contato-blue.svg?style=for-the-badge)](https://gitlab.com/_paradigma/paradigma/wikis/pt_BR/Contato) [![Wiki](https://img.shields.io/badge/wiki-lightgrey.svg?longCache=true&style=for-the-badge)](https://gitlab.com/_paradigma/cipher/wikis/home) [![Código de Conduta](https://img.shields.io/badge/c%C3%B3digo%20de%20conduta-red.svg?longCache=true&style=for-the-badge)](https://gitlab.com/_paradigma/paradigma/wikis/pt_BR/C%C3%B3digo-de-Conduta) [![Programação](https://img.shields.io/badge/-programa%C3%A7%C3%A3o-green.svg?longCache=true&style=for-the-badge)](https://pad.riseup.net/p/cipher)

## Sumário

1. [Introdução](#introdução)

2. [Lojas de aplicativos](#lojas-de-aplicativos)

3. [Mensageiros](#mensageiros)

4. [Gerenciadores de senhas](#gerenciadores-de-senhas)

5. [Navegadores](#navegadores)

6. [Servidores de Email](#servidores-de-email)

7. [Clientes de Email](#clientes-de-email)

8. [*Pretty Good Privacy* (PGP)](#pgp)

9. [Metadata](#metadata)

10. [Envio de arquivos](#envio-de-arquivos)

11. [Mapas](#mapas)

12. [*Virtual Private Networks* (VPNs)](#vpns)

13. [Firewalls](#firewalls)

14. [Sistemas Operacionais](#sistemas-operacionais)

15. [Outros](#outros)

16. [Guias](#guias)

## Introdução

Este é o repositório de recursos utilizados no grupo de estudos **cipher**. Para saber mais à respeito desta, como participar ou contribuir nela, consulte a página à respeito desta em nosso [Wiki](https://gitlab.com/_paradigma/cipher/wikis/home) ou venha bater um papo conosco no [Riot](https://riot.im/app/#/room/!mTftlNrhXDxQHwFvET:matrix.org).

As ferramentas estão listadas primeiramente por ordem de prioridade e depois por aquilo que julgamos ser a *dificuldade em seu manuseio*. Isto é:

- **Facil:** nenhum conhecimento anterior é necessário

- **Moderada:** necessário algum conhecimento prévio. Senão por isso, esta é fácil de se utilizar.

- **Difícil:** necessário algum conhecimento prévio e de utilização complexa.

- **Pendente:** uma ferramenta recomendada por diversas fontes, mas cuja experimentação pelos autores desta lista está pendente.

Também, para simplificar descrição de compatibilidade dos aplicativos, entende-se:

- **Desktop:** Linux, MacOS e Windows

- **Mobile:** Android e iOS

- **Todos:** Os dispositivos listados acima mais o navegador - ou *Browser*.

## Lojas de aplicativos

| Nome | Descrição | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[F-droid](https://www.f-droid.org/) | Repositório de aplicativos composto exclusivamente de software livre. | Android | Fácil
[Yalp Store](https://f-droid.org/packages/com.github.yeriomin.yalpstore/) | Baixe applicativos da Play Store sem utilizar uma conta Google ou revelar informações sobre seu aparelho | Android | Fácil


## Mensageiros

| Nome | Descrição | Auditoria | Análise | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ | :------------ | :------------ |
[Signal](https://www.signal.org/) | O aplicativo de comunicação segura endossado pela [Freedom of the Press Foundation](https://freedom.press/). | [Link](https://eprint.iacr.org/2016/1013.pdf) | [Link](https://gitlab.com/_paradigma/cipher/wikis/an%C3%A1lises/im/signal) | Mobile e Desktop | Fácil à Mediana
[Wire](https://wire.com) | Aplicativo de comunicação segura com muitas funcionalidades e fácil de usar. | [Link](https://wire.com/en/security/#audits) | [Link](https://gitlab.com/_paradigma/cipher/wikis/an%C3%A1lises/im/wire) | Todos | Fácil
[Ricochet](https://ricochet.im/) | Comunicação criptografada de ponta a ponta pela rede tor, sem servidores intermediários dedicados. | [Link](https://github.com/ricochet-im/ricochet/wiki/NCC-Audit-Results-%5BWIP%5D) | [Link](https://gitlab.com/_paradigma/cipher/wikis/an%C3%A1lises/im/ricochet) | Desktop | Fácil
[Briar](https://briarproject.org) | Tal como o Ricochet, mas também permitindo a comunicação através de redes locais e bluetooth. | [Link](https://briarproject.org/news/2017-beta-released-security-audit.html) | [Link](https://gitlab.com/_paradigma/cipher/wikis/an%C3%A1lises/im/briar) | Android | Fácil
[Riot](https://about.riot.im/) | Um aplicativo rico em funcionalidades baseado na rede de comunicação federada [matrix](https://matrix.org/blog/home/). | [Link](https://about.riot.im/security/) | [Link](https://gitlab.com/_paradigma/cipher/wikis/an%C3%A1lises/im/riot) | Todos | Mediana à Difícil

## Gerenciadores de Senhas

| Nome | Descrição | Auditoria | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ | :------------ |
[KeePassXC](https://www.keepassx.org/) | Gerenciador de senhas multiplataformas. | [Link](https://www.ghacks.net/2016/11/22/keepass-audit-no-critical-security-vulnerabilities-found/) | Desktop | Fácil
[KeePassDX](https://www.keepassdx.com/) | Gerenciador de senhas para Android compatível com o KeePassXC. | [Link](https://www.ghacks.net/2016/11/22/keepass-audit-no-critical-security-vulnerabilities-found/) | Android | Fácil
[pass](https://www.passwordstore.org/) | Script para gerenciar de senhas via Interface de Linha de Comando utilizando GPG. | [Link](https://en.wikipedia.org/wiki/GNU_Privacy_Guard#Vulnerabilities) | Android, Desktop | Mediana

## Navegadores

| Nome | Descrição | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[Tor Browser](https://www.torproject.org/download/) | Browser do [Projeto Tor](https://www.torproject.org/) desenvolvido para navegação anônima através da rede tor. | Android, Desktop | Fácil
[Onion Browser](https://onionbrowser.com/) | Adaptação do Tor Browser para utilização no iOS. | iOS | Pendente
[Brave](https://brave.com/) | Browser com bloqueador de publicidade e rastreadores nativo baseado no [Chromium](https://www.chromium.org/). | Mobile, Desktop | Fácil
[Firefox Klar](https://f-droid.org/en/packages/org.mozilla.klar/) | Similar ao Brave, mas baseado no [Firefox](https://www.mozilla.org/firefox/). | Mobile | Fácil

## Servidores de email

| Nome | Descrição
| :------------- | :------------- |
[Disroot](https://disroot.org/) | Serviço de email hospedado por um coletivo libertário localizado nos Países Baixos
[Guerrilla Mail](http://www.guerrillamail.com/) | Email temporário e descartável. Hospedado inclusive em um [hidden service](https://grrmailb3fxpjbwm.onion) acessível pela rede tor.
[Protonmail](https://protonmail.com/) | Cliente de email com criptografia de ponta a ponta entre usuários do serviço. Também disponível através de [hidden service](https://protonirockerxow.onion). Requer que o acesso seja feito pelo webmail ou por um aplicativo mobile específico do Protonmail.
[RiseUp](https://riseup.net/en/email) | Serviço de email hospedado por um coletivo libertário americano. Para criar uma conta, faz-se necessário que dois usuários do serviço o indiquem para que a abertura de conta aconteça. Isso, ou uma conta pode ser cedida após uma boa avaliação de uma carta de apresentação.
[Tutanota](https://tutanota.com/) | Tal como o protonmail, mas sem hidden service e também sem exigir apresentar um número de celular ou email anterior para obter um cadastro. Requer que o acesso seja feito pelo webmail ou por um aplicativo mobile específico do Protonmail.

## Clientes de email

| Nome | Descrição | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[K-9 Mail](https://k9mail.github.io/) | Cliente de email com funcionalidades para automatizar a criptografia de emails usando chaves PGP | Android | Médio
[Thunderbird](https://www.thunderbird.net/en-US/) | O Cliente de email da Mozilla Foundation, possui diversos plugins que extendem suas capacidades, como o Enigmail

## PGP

| Nome | Descrição | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[OpenKeychain](https://www.openkeychain.org/) | Gerenciador de chaves OpenPGP que permite criar, buscar, e adicionar chaves para então criptografar - ou descriptografar, ou assinar - textos e arquivos. | Android | Fácil
[Oversec](https://f-droid.org/en/packages/io.oversec.one/) | Criptografe mensagens em qualquer aplicativo, usando PGP | Android | Mediano

## Metadata

| Nome | Descrição | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[MAT](https://0xacab.org/jvoisin/mat2) | Ferramenta para limpeza de metadata de arquivos | Linux | Fácil
[ObscuraCam](https://guardianproject.info/apps/obscuracam/) | Apague a metadada de fotos tiradas com o celular e esconda os rostos daqueles retratados. | Android | Fácil

## Envio de Arquivos

| Nome | Descrição | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[Firefox Send](https://send.firefox.com/) | Envio de arquivos privado, temporário e criptografado através dos servidores da Mozilla Foundation. | Browser | Fácil
[OnionShare](https://onionshare.org/) | Envio de arquivos através de hidden services pela rede tor. | Desktop | Mediana
[NextCloud](https://nextcloud.com/) | Sincronizador de arquivos. Arquivos podem ser hospedados em qualquer servidor habilitado, como aquele do [Disroot](cloud.disroot.org) | Todos | Fácil
[TrebleShot](https://f-droid.org/packages/com.genonbeta.TrebleShot/) | Envie arquivos e aplicativos seguramente entre aparelhos na rede local | Android | Fácil

## Mapas

| Nome | Descrição | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[OSMAnd](https://osmand.net) | Cliente para consulta, navegação e armazenamento offline de mapas baseado no [Open Street Map](https://www.openstreetmap.org) | Mobile | Fácil
[Transportr](https://transportr.app/) | Cliente para consulta, navegação e armazenamento offline de itinerários de transporte público baseado no Open Street Map | Android | Fácil

## [VPNs](https://pt.m.wikipedia.org/wiki/Rede_privada_virtual)

| Nome | Descrição| Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[Orbot](https://guardianproject.info/apps/orbot/) | Encaminhe a conexão à internet dos aplicativos através da rede tor. | Android | Fácil
[Riseup VPN](https://riseup.net/en/vpn) | Encaminha a conexão à internet do seu sistema operacional através dos servidores VPN da Riseup  | Desktop, Android | Fácil

## Firewalls

| Nome | Descrição | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[AFWall+](https://f-droid.org/packages/dev.ukanth.ufirewall/) | Restrinja o acesso à internet de alguns aplicativos (Necessita de acesso ao root). | Android | Difícil
[NetGuard](https://www.netguard.me/) | Restrinja o acesso à internet de alguns aplicativos (Por padrão, não funciona em conjunto com VPNs). | Android | Fácil


## Sistemas Operacionais

| Nome | Descrição | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[Arch Linux](https://www.archlinux.org/) | Um sistema operacional minimalista e altamente configurável | Desktop e USB | Difícil
[CRDroid](https://crdroid.net/) | Um sistema operacional baseado no Lineage, com algumas funcionalidades de customização à mais. Também compatível com MicroG. | Android | Fácil
[Debian](https://www.debian.org/) | O sistema operacional mantido pela Fundação Debian. Composto Inteiramente por software livre senão habilitado doutra forma pelo usuário. | Desktop e USB | Fácil
[LineageOS for microG](https://lineage.microg.org/) | Um sistema operacional baseado em software livre que faz uso do microG como meio de substituir o funcionamento do Google Play Services | Android | Fácil
[Parrot](https://www.parrotsec.org/) | Um sistema operacional orientado a testes de segurança baseado no Debian| Desktop e USB | Mediano
[Qubes](https://www.qubes-os.org/) | Um sistema operacional resistente à adversários orientado à compartimentalização | Desktop | Difícil
[Tails](https://tails.boum.org/) | Sistema operacional do tipo [Live USB](https://pt.wikipedia.org/wiki/Live_USB) otimizado e equipado com ferramentas de anonimização | USB | Mediano

## Outros

| Nome | Descrição | Disponível para | Dificuldade |
| :------------- | :------------- | :------------ | :------------ |
[Background Restrictor](https://f-droid.org/packages/com.pavelsikun.runinbackgroundpermissionsetter/) | Restrinja aplicativos de serem executados quando estes não estão abertos. Requer acesso ao root. | Android | Mediano
[Diceware Password Generator](https://github.com/jeffisaak/diceware-pass-gen) | Gerador de senhas baseado na aplicação do método [Diceware](https://en.wikipedia.org/wiki/Diceware) nas [listas de palavras do EFF](https://www.eff.org/deeplinks/2016/07/new-wordlists-random-passphrases) | Android | Fácil
[Firejail](https://firejail.wordpress.com) | [Sandbox](https://en.wikipedia.org/wiki/Sandbox_(computer_security)) compatível com diversas aplicações. | Linux | Mediano
[Veracrypt](https://veracrypt.fr/en) | Criptografia com senha de arquivos e volumes | Desktop | Fácil
[Umbrella](https://secfirst.org/umbrella/) | Guia e checklist de segurança portátil | Mobile | Fácil

## Guias

| Nome | Espelhos |
| :------------- | :------------- |
**[Autodefesa Contra Vigilância](https://ssd.eff.org/pt-br)** | **[Wayback Machine](https://web.archive.org/web/20181228030906/https://ssd.eff.org/pt-br)**
**[Guia de Autodefesa Digital](https://autodefesa.org)** | **[Wayback Machine](https://web.archive.org/web/20190118202442/https://guia.autodefesa.org/)**, **[Hidden Service](http://6ndqukkrjs2k26ron4omfhp4f3utlugchtagd7hdycvwgbbckqottxyd.onion/)**
**[LevelUP](https://level-up.cc/)** | **[Wayback Machine](https://web.archive.org/web/20181223161635/https://level-up.cc/)**
**[The Crypto Pary Handbook](https://www.cryptoparty.in/learn/handbook)** | **[Wayback Machine](https://web.archive.org/web/20170824044558/https://www.cryptoparty.in/learn/handbook)**, **[Hidden Service](http://crypty22ijtotell.onion/handbook/)**

**[⬆ retornar ao topo](#sumário)**
