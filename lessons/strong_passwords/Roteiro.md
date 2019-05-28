> Slide 1

### Roteiro
# Cipher: O que é uma senha forte na prática?

- Apresentação pessoal, agradecimentos.

> Slide 2

### 1. Resumo - 5 min.

Nessa palestra realizaremos uma demonstração de como senhas são comumente armazenadas, para autenticação de usuários em serviços e dispositivos, e como estas senhas podem ser eventualmente descobertas por terceiros. À partir disso, mostraremos como se precaver contra isso no processo de criação de senha e traçaremos algumas conclusões. Finalmente, abriremos espaço para dúvidas e colocações da audiência.

> Slide 3

### 2. Apresentação do coletivo - 5 min.

Mas antes, gostaria de apresentar brevemente o coletivo do qual faço parte: o Paradigma. Em suma, um coletivo hacker dedicado à pesquisa, desenvolvimento e aplicação de técnicas e tecnologias diversas para o fim de construir uma sociedade mais justa.

> Slide 4

Fazemos isso organizando encontros abertos, regulares, buscando nos desenvolver no uso de ferramentas de software livre e segurança da informação de maneira colaborativa, para então compartilhar este conhecimento adiquirido em documentação, oficinas, novas ferramentas, e palestras, como esta.

Este é um coletivo formado recentemente, fundado inclusive entre participantes deste evento. Então, estejam convidados à participar em nossos encontros.

> Slide 5

### 3. Uma introdução à autenticação por senhas - 5 min.

Senhas textuais são a maneira mais comum de autenticação presente em sistemas de computadores e, com o crescimento de serviços e dispositivos digitais com os quais interagimos cotidianamente, maior é a demanda por estas.

Senhas possuem uma falha inerente: Quanto mais fortes estas são, isto é, quanto mais difíceis estas são para serem adivinhadas, mais difíceis estas são para serem **memorizadas** pelos seus próprios usuários. Isto pois, senhas tornam-se mais fortes em função da sua **complexidade**, e seres humanos tendem a recorrer a padrões que as **simplificam** para conseguirem assim memorizá-las. Também, o número de senhas fortes as quais uma pessoa consegue lembrar-se é escasso.

Alguns especialistas estimam que senhas deixarão de ser o padrão de autenticação em um futuro próximo, conforme um número maior de aparelhos é equipado para autenticação com biometria. Ainda assim, devem continuar a existir como alternativa. Afinal, ela possui também muitas vantagens quando utilizadas adequadamente:

- Não são pessoalmente identificáveis;

- Não requerem equipamento especializado para serem transmitidas ou verificadas;

- São passíveis de serem armazenadas pelos seus usuários sem "cópias físicas", ao memorizá-la.

> Slide 6

### 3. Onde as senhas vivem? - 5 min.

Todos os serviços ou aparelhos com os quais interagimos armazenam cópias das nossas senhas para que possam verificá-las depois quando estas lhe forem novamente fornecidas. Mas, se estes atentam-se minimamente às normas mínimas de segurança, assim o fazem sem armazenar cópias *literais* desta senha. Ou seja, não a armazenam em sua forma textual, ou *plain text*.

Atualmente, alguns serviços possuem centenas de milhares de contas de usuários. O Facebook apenas alega ter mais de 2 bilhões delas. Tão logo, o conteúdo presente nos bancos de dados destes serviços tornam-se um artigo desejável para aqueles que buscam obter pelo menor esforço o máximo de informações sobre o maior número de pessoas.

Deixando de lado a possibilidade, em alguns casos já demonstrada, de que estes serviços compartilhem os dados dos seus usuários com terceiros para fins outros senão aqueles consentidos pelos seus usuários, existe sempre a possibilidade de ocorrer um vazamento de informações, ou *leak*.

Os efeitos de um vazamento são potencialmente muito mais danosos, pois mesmo as informações de autenticação dos usuários podem ser roubadas. Por mais que hajam precauções para que este não ocorra e mitigações no evento destes ocorrer. Ao tempo de escrita desta apresentação o site [haveibeenpwned.com](haveibeenpwned.com) lista na sua página principal que apenas no último ano houve 8 vazamentos que expunham as credenciais e os dados de mais de 64 milhões de contas. Enquanto o maior vazamento de credenciais já feito totaliza uma coleção de mais de 770 milhões de combinações únicas de emails e senhas.

Através destes vazamentos foi possível observar que o reúso de senhas, puro e simplesmente ou com algumas variações, é uma prática recorrente. Possibilitando que se utilizem deste ataque para obter acesso também à demais contas ou aparelhos dos seus alvos.

> Slide 7

**Ok, então, lição número 1: Não reutilize senhas.**

> Slide 8

### 4. Como senhas são armazenadas - 10 min

Para endereçar este tipo de ameaça, demonstraremos como podemos nos precaver como usuários e seu **porquê**.

> Slide 9

Para isso precisamos explicar o que é um **hash**: uma operação matemática onde um conjunto de informações qualquer é utilizado como referência para **derivar uma sequência de caracteres**.

> Abre o terminal

```
> echo 'senha' | md5sum
6fd720fb42d209f576ca23d5e437a7bb  -
```

Numa dada função de hash, como o `md5` (*Message Digest Algorithm**) a quantidade de caracteres resultante é sempre a mesma, não importando o **volume** ou a **variedade** das informações passadas.

Por exemplo, eu poderia passar apenas um caractere de informação para função de hash e ainda assim obteria 32 caracteres.

```
> echo 'a' | md5sum
60b725f10c9c85c70d97880dfe8191b3  -
```

Eu poderia passar uma imagem,

```
> md5sum ~/Pictures/wallpaper-photo-1417632993443-302f4897cf67.jpg
45acd4095c3b1610450a4cad3e84cb52  /home/user/Pictures/wallpaper-photo-1417632993443-302f4897cf67.jpg

```

Ou um livro,

```
> md5sum ~/Documents/Comentarios\ a\ uma\ Sentenca\ Anunciada.pdf
81f4b158d49a16f2de548d98bf6f4734  /home/user/Documents/Comentarios a uma Sentenca Anunciada.pdf
```

Enquanto informações ligeiramente diferentes entre si, produzem hashes vastamente diferentes:

```
> echo 'senha' | md5sum; echo 'Senha' | md5sum
6fd720fb42d209f576ca23d5e437a7bb -
577a2659a876d65077485f78c8c3ad26 -
```

> Fecha o terminal

Isso porque, novamente, a sequência gerada é derivativa, não possui correspondência direta com o volume ou variedade das informações passadas. Diferentemente de um processo de compressão ou criptografia onde o arquivo de referência pode ser restaurado a partir do arquivo comprimido ou criptografado, a referência da hash não pode ser obtida a partir do hash. **Este é um processo irreversível.**

Entretanto, uma dada referência idêntica sempre produzirá um mesmo hash. E é assim que senhas são armazenadas e depois verificadas: Um hash é gerado e salvo ao registrá-la, depois, geram-se novos hashes para as senhas providas que são comparados ao hash original, permitindo o acesso caso estes sejam **idênticos**.

> Slide 10

Portanto, cabe aqui fazemos uma alegoria entre o processo de verificação de senhas com o ato de comprar um produto em um supermercado: É útil pensar no hash tal como um código de barras na embalagem de um produto que neste caso é uma dada informação. Quando este é verificado no caixa, este meramente atesta que o produto em questão corresponde à aquele no registro do caixa. **E mais nada**.

### 4. Como senhas são reveladas - 10 min

> Slide 11

Dado um grande número de senhas registradas, obteriamos um arquivo como o seguinte:

> Abre o terminal

```
> bat -p marriagebuilders.txt
06600ca931cd16af340f83b5799f474b
076c905df7d4dca465f7191dea00179b
0b5f891ea611a2f73adb3085515e6add
0ebb05a2f95405d44d6c9578e1a3c144
33f06177c679480c853a2a1b43e77a9c
5ca2826dd4daebf4ec4164832bd6f015
a4dd1e7527de78449e7d1b33bf01c347
c2287554101de37b702e5a780b17b7f8
d3bf4deb81903e08cb7883c26f467a63
fdb2756fbb357709463f8a1227e409e5
```

O exemplo acima trata-se de uma lista de hashes vazada do site [marriagebuilders.com](marriagebuilders.com) obtida *legalmente* através do site [hashes.org](hashes.org). Elas foram providenciadas sem nenhuma associação aos usuários do site.

Como poderíamos obter as senhas que produzem estas hashes? Vamos demonstrar aqui algumas formas:

> Fecha o terminal, slide 12

- Um ataque de dicionário, ou *direto*.

- Um ataque combinatório

- Um ataque híbrido

- Um ataque regrado

- Um ataque de força bruta


#### Ataque de dicionário

> Abre o terminal

```
hashcat -Om 0 -a marriagebuilders_hashes.txt 10_million_password_list_top_100000.txt --force
```

O que vemos acima é o resultado das hashes que foram “quebradas”, isto é, onde encontramos um texto capaz de derivar tais hashes. O que fizemos aqui foi pegar uma lista do primeiro milhão de senhas mais populares segundo o site [weakpass.com](https://weakpass.com/wordlist/49) para derivar hashes a partir delas e comparamos com a lista de hashes do Marriage Builders. Um *ataque de dicionário*, ou *ataque direto*. Com isso fomos capaz de quebrar 8.62% dos hashes em torno de 3 segundos. Ou seja, estas senhas foram quebradas, possivelmente, porque seus usuários reutilizaram suas respectivas senhas ou, também, porque a senha a qual utilizaram na verdade era bastante comum. Certamente valeria a pena experimentar até as 2 bilhões de senhas mais populares, pois afinal, como pudemos ver, mesmo para um computador que não é construído para esta finalidade, esta tentativa tomaria no máximo uns dois minutos.

No mais, devo notar aqui que dicionários feitos para revelar senhas não se limitam apenas a resultados de senhas reveladas anteriormente. Existem dicionários com líricas de músicas populares, citações de livros, diálogos de filmes, gírias, entre outros.

Também, é possível que um dicionário seja criado para a realização de um ataque particular. Supondo que o adversário tenha um alvo bem definido, digamos, uma dada empresa, ele buscará compor um dicionário com terminologia relevante no âmbito desta empresa, extrair nomes e datas relevantes, limitar o escopo de palavras de acordo com a política de criação de senhas vigente nesta (Em termos de caracteres mínimos e máximos, etc.).

#### Ataque combinatório

Utilizando esta mesma lista de referência, vamos realizar um *ataque combinatório*.

```
grep -oP '[a-zA-Z]+' 10_million_password_list_top_100000.txt | \
string lower | uniq | awk '!x[$0]++' > words.txt
hashcat -Om 0 -a 1 marriagebuilders_hashes.txt words.txt words.txt --force
```

Neste exemplo, nós separamos somente as palavras que figuravam na lista e criamos um *dicionário* `words.txt` a partir destas. Então, seguimos para comparar todas as possíveis combinações entre duas palavras que figuram neste dicionário. Poderíamos inclusive descrever um delimitador entre as duas palavras, como espaço, underline,

#### Ataque híbrido

```
hashcat -Om 0 -a 6 marriagebuilders_hashes.txt words.txt (string repeat -n 4 '?d') --increment --force
```

Aqui nós combinamos as palavras do arquivo `words.txt` seguidas de todas as possíveis combinações numéricas até quatro casas decimais, o suficiente para cobrir diversas datas.

#### Ataque regrado

```
hashcat -Om 0 -a marriagebuilders_hashes.txt words.txt -r /usr/share/hashcat/rules/best64.rule --force
```

Aqui nós realizamos novamente um ataque de dicionário, mas para cada palavra, testamos variações como capitalizar a primeira letra, escrever em all caps, escrever ao contrário, escrever no plural, dentre outras 64 variações de escrita tidas pelos desenvolvedores do Hashcat como sendo aquelas mais comuns.

Com isso somos capazes inclusive de capturar as substituições de caracteres especiais mais comuns procurando por *leetspeak*, como em `P4$$w0rd`

```
hashcat -Om 0 -a 0 marriagebuilders_hashes.txt words.txt -r /usr/share/hashcat/rules/Incisive-leetspeak.rule --force
```

#### Ataque de força bruta

```
hashcat -0m -a 3 marriagebuilders_hashes.txt (string repeat -n '?l') --increment --status --status-timer 15 --force
```

Aqui, nós buscamos todas as possíveis combinações de até oito caracteres minúsculos. Poderíamos seguir tentando todas as possíveis combinação de caracteres maiúsculos, alfabéticos, numéricos, alfanuméricos, pontuações, acentuações, até todos os caracteres possíveis incluindo sinais matemáticos. Mas desta forma iriamos dispender cada vez mais esforço por resultados cada vezes menores pois as combinações subsequentes tornam-se cada vez mais numerosas e improváveis.

> Fecha o terminal, Slide 13

### 6. Como poderiamos nos proteger? - 10 min.

Existe um levantamento estatístico que descreve os métodos de composição mais populares entre as senhas reveladas em diversos vazamentos. Este relatam a distribuição de diferentes larguras de senha, conjuntos de caracteres utilizados, em qual sequência estes aparecem (letras seguidas de números, letras seguidas de números separados por um caractere especial, etc.). O autor deste levantamento, Beserk0, argumenta que uma maneira eficiente para se criar uma senha forte, portanto, seria informar-se quanto a estes padrões para criar senhas *diferenciadas* em relação aos demais. Isso é verdadeiro até certo ponto.

De fato, são muito poucos os vazamentos em que mais de 99% das senhas são reveladas. Dos 861 leaks publicados no hashes.org, apenas 72 deles (aproximadamente 0.09%), ultrapassaram esta marca. Com um conhecimento estatístico, você pode se deslocar para além da marca dos 99%.

Mas é difícil afirmar com certeza, pois não sabemos quais métodos ou dicionários o atacante irá utilizar. Por exemplo, se você for um alvo de interesse para o adversário, sua hash pode ser isolada para ser atacada antes das demais. Quando se reduz o número de hashes a serem atacadas, é possível experimentar diversas possibilidades para uma mesma hash muito rapidamente.

Isso sem falar que, se um grande número de pessoas passasse a seguir esta recomendação, mudaria-se o panorama dos métodos de composição mais populares e uma senha construida anteriormente desta forma poderia tornar-se mais vulnerável no futuro. Então apenas uma porção bastante limitada do total de usuários pode, efetivamente, seguir esta recomendação.

Mas e se eu os dissesse, que existe uma fórmula cuja força não depende da sua relativa impopularidade? Algo que podemos todos adotar, e coletivamente ficarmos mais seguros?

> Slide 14

Diceware é um método de geração de frases-senha criado por Arnold Reinhold. ainda em 1995. Sua premissa é derivar a força da senha através de sua **improbabilidade**. Para escolher uma senha altamente improvável, seres humanos não serviriam: nossas referências são enviesadas e, como já foi demonstrado em laboratório, mesmo quando incentivados a realizar escolhas aleatórias, favorecemos algumas escolhas sobre outras.

Portanto, Reinhold sugere um método de criação de senhas que utiliza **real aleatoriedade** (isto é, extraída da natureza) e sequências de palavras. Neste, listamos quaisquer 7776 palavras em ordem alfabética prefixadas por cinco dígitos com valor de 1 à 6. Por exemplo:

> Abre o terminal

```
> column 7776palavras-numeradas-2e.txt | head
11111 a         22223 cce       33335 fenícia   44451 mediano   55563 relaxar
11112 aba       22224 cê        33336 fenício   44452 mediar    55564 relegar
11113 abacate   22225 cear      33341 feno      44453 médica    55565 relento
11114 abacaxi   22226 cebola    33342 fenol     44454 medical   55566 reler
11115 abade     22231 ceder     33343 fera      44455 medição   55611 reles
11116 abadia    22232 cedo      33344 féretro   44456 medicar   55612 relevar
11121 abafado   22233 cedro     33345 féria     44461 médico    55613 relevo
11122 abafar    22234 cédula    33346 feriado   44462 medida    55614 relho
11123 abaixar   22235 cegar     33351 feriar    44463 medidor   55615 religião
11124 abaixo    22236 cego      33352 ferido    44464 medina    55616 relógio
```

> Esta é uma [amostra de tal lista](https://github.com/thoughtworks/dadoware/raw/master/7776palavras-numeradas-2e.txt) compilada pela [ThoughtWorks Inc.](https://github.com/thoughtworks).

Então jogamos os dados e lemos os resultados em um mesmo sentido, como da esquerda para a direita e de cima para baixo. Suponhamos que tiremos o resultado "2,4,3,4,1"

```
> bat -p /dev/random | tr -dc '[1-6]' | fold -w 5 | head -1
24341
> grep 23615 7776palavras-numeradas-2e.txt
23615 cone
```
Assim, obtemos o resultado "cone". Repetindo este processo pelo menos mais seis vezes, conforme a recomendação de Reinhold, obtemos a seguinte frase:

```
> begin
    set -l passphrase
    while test (count $passphrase) -ne 6
      set -l dice (bat -p /dev/random | tr -dc '[1-6]' | fold -w 5 | head -1)
      set -a passphrase (grep -oP "(?<=$dice ).+" 7776palavras-numeradas-2e.txt 2>/dev/null)
    end
    echo $passphrase
end
fortuna carona estupor acabado berro inovar
```

Reinhold sugere que façamos este procedimento em um espaço reservado, com cortinas fechadas, e anotemos o resultado num pedaço de papel sobre uma superfície rígida. Enquanto não memorizarmos a senha em questão, carregamos este papel conosco. Depois, o queimamos e pulverizamos suas cinzas.

> Fecha o terminal

Recordar-se é a parte mais difícil. Dado o seu uso recorrente, é apenas uma questão de tempo, mas técnicas utilizar técnicas mnemônicas podem acelerar este processo e ajudar na sua recuperação no futuro.

> Slide 15

Uma técnica mnemônica sugerida é o *Palácio da memória*, ou Método de Loci. Ela consiste na imaginação de cena, para que nossos sentidos visuais e espaciais auxiliem na sua memorização de uma dada informação. Esta é uma técnica utilizada em diversos campeonatos de memorização. Notoriamente Gary Shang, a utilizou para memorizar 65,536 dígitos do número do pi.

Vejamos, para memorizar a frase `fortuna carona estupor acabado berro inovar`, poderíamos descrever a seguinte cena: "Você está seguindo com pressa rumo a CryptoRave na Ferrari dourada do filho do Lula (fortuna) no acento de (carona), a aceleração é tamanha que você se sente pasmo (estopor). Mas você conseguem chegar antes da abertura. Adentrando o espaço da cinemateca, você saca seu notebook e realiza as modificações finais (acabado) na sua apresentação. Você comemora soltando um (berro) e seu prepara para apresentar sua ferramenta inovadora (inovar). Então temos aqui duas cenas: a primeira no interior da Ferrari dourada, e a segunda no local da CriptoRave. Quando mais elementos familiares ou absurdos nas cenas, maiores serão, as chances de rememorá-la espontaneamente.

> Slide 16

Por fim, qual seria a força da senha resultante? Consideremos três possíveis adversários:

> Slide 17

1. Eu, utilizando meu notebook. (Slide 18) Segundo o resultado do comando `hashcat --benchmark` seria capaz de realizar 220 milhões de tentativas por segundo para a hash MD5.

> Slide 19

2. Jeremi M. Gosley, (Slide 20) com a máquina que exibiu na *Passwords^12 Security Conference* em dezembro de 2013,  feita inteiramente com hardware e software disponível comercialmente. Esta é capaz de realizar [180 bilhões de tentativas por segundo](http://passwords12.at.ifi.uio.no/Jeremi_Gosney_Password_Cracking_HPC_Passwords12.pdf).

> Slide 21

3. A agência de espionagem norte-americana NSA (Slide 22). Em 2013, em correspondência entre Edward Snowden - ex-espião da agência, e denunciante de seus programas de vigilância em massa - e Laura Poitras - documentarista responsável pela gravação e divulgação de sua denúncia -, o primeiro orienta a segunda a criar uma senha para sua chave PGP que seja capaz de resistir à advinhação de um adversário capaz de realizar 1 trilhão de advinhações por segundo (Slide 23). A origem deste número não é explicada por Snowden, mas consideremos este cenário para fins comparativos.

> Slide 24

Considerando também que:

> Slide 25

- Você é *o único* alvo de seu adversário

> Slide 26

- Ele *também tem acesso à uma cópia do dicionário* de onde você está retirando as palavras, e portanto, irá utilizá-lo para quebrar sua sua senha.

> Slide 27

- Ele sabe que você, conforme foi instruído, utilizou exatamente 6 palavras deste para compor sua senha.

> Slide 28

- Seus dados não estão viciados e seu dicionário não foi adulterado. Logo, todos os resultados são igualmente possíveis.

> Slide 29

O tempo estimado para se revelar a senha seria:

7776⁶, ou 2.21...×10²³, ou aproximadamente (221 hexalhões de tentativas), dividido pelo número de hashes por segundo (H/s), dividido por dois (para extrair o tempo médio para se adivinhar uma dada senha), dividido por 60 (minutos), dividido por 60 (horas), dividido por 24 (dias), dividido por 365 (anos).

> Slide 30

Tempo médio para meu computador adivinhá-la

> Slide 31

15.932.585 (15 milhões, 932 mil e 585 anos)

> Slide 32

O computador descrito por Jeremi M. Gosley:

> Slide 33

38.945 (38 milênios e 945 anos)

> Slide 34

A NSA

> Slide 35

3 milênios e meio

> Slide 36

### Conclusão - 5 min.

Podemos concluir, portanto, que:

> Slide 37

- Como método de autenticação, senhas são prevalentes e ainda serão por mais algum tempo.

> Slide 38

- Uma maneira eficiente e massiva para um adversário obter senhas de terceiros é conseguindo acesso a servidores onde estes usuários possuem contas e extrair uma cópia das hashes que correspondem à suas senhas.

> Slide 39

- Essas hashes são então submetidas à sucessivas adivinhações que, dependendo do poder computacional do adversário, vão de centenas de milhões à centenas de bilhões por segundo. Estes ataques são geralmente informados por meio de dicionários a testar primeiramente as combinações mais relevantes.

> Slide 40

- Espontaneamente construir uma senha improvável, mesmo quando informado das combinações mais prováveis, é um método limitado em termos da força resultante da senha, e impraticável para proteger um grande número de pessoas.

> Slide 41

- Em contra partida, Diceware é um método de simples utilização e que gera senhas com **real aleatoriedade**, a senha resultante é tão aleatória que a este tempo desconhecemos computadores que, mesmo informados do método, sequer possuem a capacidade de percorrer um número relevante de possibilidades em um período de tempo razoável.

> Slide 42

### Para saber mais

Nós do Paradigma realizamos encontros regulares para discutirmos técnicas de autodefesa digital. Lá, podemos demonstrar:

- Como armazenar seguramente um grande número de senhas através de bancos de senha.

- Como sincronizar o banco de senhas através de diversos aparelhos, ou acessá-lo pela linha de comando.

- E outras cocitas más,

#### Gratidão!
