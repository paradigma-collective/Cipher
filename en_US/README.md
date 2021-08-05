❗ **Warning:** archival version, this list hasn't been updated since 2019

---

[🇧🇷 Leia em português](/README.md)

![cipher](visual/banner.png)

[![Get in touch](https://img.shields.io/badge/get%20in%20touch-blue.svg?style=for-the-badge)](https://gitlab.com/_paradigma/paradigma/wikis/en_US/Contact) [![Wiki](https://img.shields.io/badge/wiki-lightgrey.svg?longCache=true&style=for-the-badge)](https://gitlab.com/_paradigma/cipher/wikis/en_US/home) [![Code of Conduct](https://img.shields.io/badge/code%20of%20conduct-red.svg?longCache=true&style=for-the-badge)](https://gitlab.com/_paradigma/paradigma/wikis/en_US/Code-of-Conduct)

## Summary

1. [Introduction](#introduction)

2. [Appstores](#appstores)

3. [Messengers](#messengers)

4. [Password managers](#password-managers)

5. [Web browsers](#web-browsers)

6. [Email clients](#email-clients)

7. [Pretty Good Privacy (PGP)](#PGP)

8. [Metadata](#metadata)

9. [File sharing](#file-sharing)

10. [Maps](#maps)

11. [Virtual Private Networks (VPNs)](vpns)

12. [Firewalls](firewalls)

13. [Operational Systems](#operational-systems)

14. [Others](#others)

15. [Guides](#guides)

## Introduction

This is the repository of resources used in the **cipher** study group. To know more about it or how to contribute to it, consult its page in our [Wiki](https://gitlab.com/_paradigma/cipher/wikis/en_US/home) or come talk to us over [Riot](https://riot.im/app/#/room/!mTftlNrhXDxQHwFvET:matrix.org).

Tools are listed below firstly in order of priority and then by what we judge to be its *ease of use*. That is:

- **Easy:** no prior knowledge necessary

- **Moderate:** Some previous knowledge necessary. Were it not for that, it would be easy to use.

- **Hard:** Requires previous knowledge and its usage is complex.

- **Pending:** A tool recommended by various sources, bt pending review by the authors of this list.

Also, to simplify the compatibility description from the applications, we describe as:

- **Desktop:** Linux, MacOS and Windows

- **Mobile:** Android and iOS

- **All:** All of the Operational Systems listed previously plus the web browser.

## Appstores

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[F-droid](https://www.f-droid.org/) | An application repository having Free Software only.| Android | Easy
[Yalp Store](https://f-droid.org/packages/com.github.yeriomin.yalpstore/) | Download apps from Google's Play Store without having an personal account or revealing information on your device | Android | Easy


## Messengers

| Name | Description | Audit | Analysis | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ | :------------ | :------------ |
[Signal](https://www.signal.org/) | The messenger application indorsed by the [Freedom of the Press Foundation](https://freedom.press/). | [Link](https://eprint.iacr.org/2016/1013.pdf) | [Link](https://gitlab.com/_paradigma/cipher/wikis/an%C3%A1lises/im/signal) | Mobile and Desktop | Easy to Moderate
[Wire](https://wire.com) | A safe and easy to use messenger with many functionalities. | [Link](https://wire.com/en/security/#audits) | [Link](https://gitlab.com/_paradigma/cipher/wikis/an%C3%A1lises/im/wire) | All | Easy
[Ricochet](https://ricochet.im/) | End to end encrypted communications through the Tor network with no intermediary servers in between. | [Link](https://github.com/ricochet-im/ricochet/wiki/NCC-Audit-Results-%5BWIP%5D) | [Link](https://gitlab.com/_paradigma/cipher/wikis/an%C3%A1lises/im/ricochet) | Desktop | Easy
[Briar](https://briarproject.org) | Similar to Ricochet, but also capable of communicating through local networks and bluetooth. | [Link](https://briarproject.org/news/2017-beta-released-security-audit.html) | [Link](https://gitlab.com/_paradigma/cipher/wikis/an%C3%A1lises/im/briar) | Android | Easy
[Riot](https://about.riot.im/) | A feature-rich client for the decentralized communication network [matrix](https://matrix.org/blog/home/). | [Link](https://about.riot.im/security/) | [Link](https://gitlab.com/_paradigma/cipher/wikis/an%C3%A1lises/im/riot) | All | Moderate to Hard

## Password managers

| Name | Description | Audit | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ | :------------ |
[KeePassXC](https://www.keepassx.org/) | Multiplatform password manager. | [Link](https://www.ghacks.net/2016/11/22/keepass-audit-no-critical-security-vulnerabilities-found/) | Desktop | Easy
[KeePassDX](https://www.keepassdx.com/) | Password manager for android compatible with KeePassXC. | [Link](https://www.ghacks.net/2016/11/22/keepass-audit-no-critical-security-vulnerabilities-found/) | Android | Easy
[pass](https://www.passwordstore.org/) | A script to manage passwords using GPG via the Command Line Interface. | [Link](https://en.wikipedia.org/wiki/GNU_Privacy_Guard#Vulnerabilities) | Desktop, Android | Moderate

## Web browsers

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[Tor Browser](https://www.torproject.org/projects/torbrowser.html.en) | The [Tor Project's] web browser. Built for anonimous web browsing using the tor network. | Android, Desktop | Easy
[Onion Browser](https://onionbrowser.com/) | An adaptation of the Tor Browser for iOS. | iOS | Pending
[Brave](https://brave.com/) | A Browser based on [Chromium](https://www.chromium.org/) with native functionalities to block ads and fingerprinting mechanisms. | Mobile, Desktop | Easy
[Firefox Klar](https://f-droid.org/en/packages/org.mozilla.klar/) | Similar to Brave, but based on [Firefox](https://www.mozilla.org/firefox/). | Mobile | Easy

## Email clients

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[Guerrilla Mail](http://www.guerrillamail.com/) | A temporary and disposable email. Also hosted in a [hidden service](https://grrmailb3fxpjbwm.onion) accessible through the tor network. | Android, Browser | Easy
[Protonmail](https://protonmail.com/) | A client with automatic end to end cryptography between the users of its services. Also hosted in a [hidden service](https://protonirockerxow.onion). | Mobile, Browser | Easy
[Tutanota](https://tutanota.com/) | Works as protonmail, though it doesn'thave a hidden service of its own and doesn't ask for a cellphone or previous email to create a new account | Mobile, Browser | Easy

## PGP

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[OpenKeychain](https://www.openkeychain.org/) | OpenPGP key manager that allows for creating, searching and adding keys to encrypt - or decrypt, or sign - texts and files | Android | Easy
[Oversec](https://f-droid.org/en/packages/io.oversec.one/) | Encrypt messages with PGP while using any app | Android | Moderate

## Metadata

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[MAT](https://0xacab.org/jvoisin/mat2) | A tool to wipe metadata from files | Linux | Easy
[ObscuraCam](https://guardianproject.info/apps/obscuracam/) | Erase metadata and hide the faces shown on pictures taken. | Android | Easy

## File sharing

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[Firefox Send](https://send.firefox.com/) | Encrypted, private, and temporary file hosting at the servers of the Mozilla Foundation. | Browser | Easy
[OnionShare](https://onionshare.org/) | Send files by hosting hidden services in the tor network. | Desktop | Moderate
[TrebleShot](https://f-droid.org/packages/com.genonbeta.TrebleShot/) | Send files and applications securely between devices in a local network | Android | Easy

## Maps

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[OSMAnd](https://osmand.net) | A client to consult, navigate and store offline maps based on the [Open Street Map](https://www.openstreetmap.org) | Mobile | Easy
[Transportr](https://transportr.app/) | Similar to OSMAnd, but for public transit | Android | Easy

## [VPNs](https://en.m.wikipedia.org/wiki/Virtual_private_network)

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[Orbot](https://guardianproject.info/apps/orbot/) | A transparent proxy to route the application's internet trafic through the tor network. | Android | Easy
[Riseup VPN](https://f-droid.org/en/packages/se.leap.riseupvpn/) | Route your internet connection through Riseup's servers for a layer of anonimity | Android | Easy

## [Firewalls]

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[NetGuard](https://www.netguard.me/) | Restrict the network traffic of applications (Requires root access). | Android | Easy
[NetGuard](https://www.netguard.me/) | Restrict the network traffic of applications. (By default, it doesn't work along with VPNs) | Android | Easy


## Operational Systems

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[Arch Linux](https://www.archlinux.org/) | A minimalist and highly configurable operational system. | Desktop and USB | Hard
[CRDroid](https://crdroid.net/) | An operational system based on Lineage, with aditional customization options. It is also compatible with the installation of microG. | Android | Moderate
[Debian](https://www.debian.org/) | The operational system maintained by the Debian Foundation. Composed entirely out of Free Software unless otherwise chosen by the user. | Desktop and USB | Easy
[LineageOS with microG](https://lineage.microg.org/) | An operational system based on free software that makes use of microG as a substitute for the functionalities of Google Play Services | Android | Easy
[Qubes](https://www.qubes-os.org/) | An operationa system that leverages compartimentalization for security | Desktop | Hard
[Parrot](https://www.parrotsec.org/) | A operational system oriented for security tests. | Desktop and USB | Moderate
[PureOS](https://www.pureos.net/) | A Debian-based OS with various softwares bundled, and configurations set, for enchanced privacy and security by default | Desktop and USB | Pending
[Tails](https://tails.boum.org/) | A Operational System that leverages the capabilities of a [Live USB](https://pt.wikipedia.org/wiki/Live_USB) boot for anonymity. It also comes jam-packed with tools for protecting the user's anonimity by default. | USB | Moderate

## Others

| Name | Description | Available for | Difficulty |
| :------------- | :------------- | :------------ | :------------ |
[Background Restrictor](https://f-droid.org/packages/com.pavelsikun.runinbackgroundpermissionsetter/) | Restrict apps from running in the background | Android | Moderate
[Diceware Password Generator](https://en.wikipedia.org/wiki/Diceware) | A Password Generator based on the application of the [Diceware](https://en.wikipedia.org/wiki/Diceware) method on [EFF's wordlists](https://www.eff.org/deeplinks/2016/07/new-wordlists-random-passphrases) | Android | Easy
[firejail](https://firejail.wordpress.com) | A [sandbox](https://en.wikipedia.org/wiki/Sandbox_(computer_security)) compatible with a variety of applications. | Linux | Moderate
[Veracrypt](https://veracrypt.fr/en) | Encrypt individual files or whole volumes | Desktop | Easy


## Guides

| Name | Mirrors |
**[Survaillence Self-Defense](https://ssd.eff.org/pt-br)** | **[Wayback Machine](https://web.archive.org/web/20181228031009/https://ssd.eff.org/en)**
**[LevelUP](https://level-up.cc/)** | **[Wayback Machine](https://web.archive.org/web/20181223161635/https://level-up.cc/)**
**[The Crypto Party Handbook](https://www.cryptoparty.in/learn/handbook)** | **[Wayback Machine](https://web.archive.org/web/20170824044558/https://www.cryptoparty.in/learn/handbook)**, **[Hidden Service](http://crypty22ijtotell.onion/handbook/)**

**[⬆ return to the top](#summary)**
