[English](#english) | [Português (Brasil)](#português-brasil)

---

<a name="english"></a>

# How to Display the Epic Games Logo on Your GitHub Profile (The Saga)

![Epic Games Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Epic_Games_logo.svg/100px-Epic_Games_logo.svg.png)

## That Feeling...

You, noble Unreal Engine developer, have gone through the whole process. You created your Epic account, your GitHub account, and finally made the sacred link between the two to gain access to the source code of the engine that powers worlds.

You proudly go to your GitHub profile, refresh the page, and... nothing. Where's your trophy? Your badge of honor? That shiny Epic Games logo that should be sitting there, proving your affiliation to the world?

If you, like me, have clicked every button, searched every member list, and wondered if you were in a parallel universe, this guide is for you. As it turns out, this isn't really a "problem," it's more of a **personal vanity project**—a project we are going to solve with the power of automation!

## Why Does This Happen?

The Epic Games organization on GitHub has nearly **half a million members**. The GitHub web interface simply looks at that number, has an existential crisis, and... gives up. The search doesn't work, the buttons don't appear, and we are left empty-handed.

But underneath it all, there is an API. And the API does not give up.

## The Mission (Should You Choose to Accept It)

We are going to force our membership to become public using a direct API call. It sounds like something a hacker would do, but I promise it's easier than compiling Unreal Engine for the first time.

---

### Step 1: Forging the Key (Generating the Access Token)

We need a temporary "key" to prove to GitHub that it's us.

1.  Go to the GitHub token creation page: **[https://github.com/settings/tokens/new](https://github.com/settings/tokens/new)**
2.  **Note:** Give your token a name, like `epic-visibility-fix`.
3.  **Expiration:** Set it to "7 days".
4.  **Scopes:** This is the most important part. Check the box for **`write:org`**.
5.  Click **"Generate token"** and **COPY** the token that appears (it starts with `ghp_...`). Keep it somewhere safe. It's a password!

> **NOTICE:** If the Epic Games organization uses SSO, you might need to authorize the token for the org after creating it. Go back to the [tokens page](https://github.com/settings/tokens) and look for a "Configure SSO..." or "Authorize" button next to your new token.

### Step 2: The Secret Incantation (The API Call Details)

This is the magic command that will solve everything. It tells the GitHub API: "Hey, it's me, and I'd like my membership in the Epic Games org to be public, please."

* **Method:** `PUT`
* **URL:** `https://api.github.com/orgs/EpicGames/public_members/YOUR_USERNAME_HERE`
* **Headers:**
    * `Authorization`: `Bearer YOUR_TOKEN_HERE`
    * `Accept`: `application/vnd.github+json`
    * `X-GitHub-Api-Version`: `2022-11-28`

Just remember to replace `YOUR_TOKEN_HERE` with the key you generated and `YOUR_USERNAME_HERE` with your GitHub username.

### Step 3: Where to Cast the Spell (Choose Your Method)

You can send this API request from several places. Pick the one you're most comfortable with.

#### Method 1: Using the Provided Script (for Terminal Users)
If you are comfortable with the command line, this is the fastest way.
1.  Download the `publicize_epic_membership.sh` script from this repository.
2.  Open the file and replace the placeholder values for `TOKEN` and `USERNAME` with your own.
3.  Run the script from your terminal with the command: `bash publicize_epic_membership.sh`.

#### Method 2: Using an Online Tool (No Installation Needed)
This is the best option if you don't want to use a terminal.
1.  Go to a web-based API client like **[https://hoppscotch.io](https://hoppscotch.io)**.
2.  Set up the request using the details from "Step 2":
    * Change the method from `GET` to **`PUT`**.
    * Paste the **URL** (with your username).
    * Go to the **Headers** tab and add the 3 required headers (Authorization, Accept, and X-GitHub-Api-Version) with their respective values.
3.  Click the "Send" button.

#### Method 3: Using a Desktop API Client (for Advanced Users)
If you already use tools like **Postman** or **Insomnia**, you know what to do. Just create a new `PUT` request with the information from "Step 2" and send it.

### The Grand Finale

No matter which method you chose, the expected result is a glorious **`Status: 204 No Content`**. That's code for "Mission Accomplished."

Now... run to your GitHub profile! There it will be, the coveted Epic Games logo, shining for all the world to see. Your vanity project is complete.

---

**FINAL AND VERY SERIOUS WARNING:** The first thing you should do after seeing the logo on your profile is **delete the token you created**. Go back to the [tokens page](https://github.com/settings/tokens) and delete it. Security first!

Use this power responsibly. We are not responsible for any repositories accidentally created in Tim Sweeney's name 🤣.

---
<br>
<a name="português-brasil"></a>

# Como Exibir o Logo da Epic Games no seu Perfil do GitHub (A Saga)

![Epic Games Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Epic_Games_logo.svg/100px-Epic_Games_logo.svg.png)

## Aquele Sentimento...

Você, nobre desenvolvedor(a) de Unreal Engine, passou por todo o processo. Criou sua conta na Epic, criou sua conta no GitHub, e finalmente fez o vínculo sagrado between as duas para ter acesso ao código-fonte do motor gráfico que move mundos.

Você vai orgulhosamente ao seu perfil do GitHub, atualiza a página e... nada. Cadê o seu troféu? O seu brasão de honra? Aquele logo bonito da Epic Games que deveria estar ali, provando ao mundo a sua afiliação?

Se você, assim como eu, clicou em todos os botões, procurou em todas as listas de membros e se perguntou se estava num universo paralelo, este guia é para si. Acontece que isto não é bem um problema, é mais um **capricho pessoal**, mas um capricho que vamos resolver com a força da automação!

## Por que é que isto acontece?

A organização da Epic Games no GitHub tem quase **meio milhão de membros**. A interface do site do GitHub simplesmente olha para aquela quantidade de gente, tem uma crise existencial e... desiste. A busca não funciona, os botões não aparecem, e ficamos nós, de mãos a abanar.

Mas por baixo de tudo isso, existe uma API. E a API não desiste.

## A Missão (Se Você Decidir Aceitá-la)

Vamos forçar a nossa afiliação a tornar-se pública usando uma chamada de API direta. Parece coisa de hacker, mas prometo que é mais fácil do que compilar o Unreal Engine pela primeira vez.

---

### Passo 1: Forjando a Chave (Gerando o Token de Acesso)

Precisamos de uma "chave" temporária para provar ao GitHub que somos nós.

1.  Vá para a página de criação de tokens do GitHub: **[https://github.com/settings/tokens/new](https://github.com/settings/tokens/new)**
2.  **Note:** Dê um nome ao token, como `epic-visibility-fix`.
3.  **Expiration:** Defina para "7 days".
4.  **Scopes (Permissões):** Esta é a parte mais importante. Marque a caixa **`write:org`**.
5.  Clique em **"Generate token"** e **COPIE** o token que aparece (começa com `ghp_...`). Guarde-o num local seguro. Ele é uma senha!

> **AVISO:** Se a organização da Epic Games usar SSO, você talvez precise autorizar o token para a organização depois de o criar. Volte à [página de tokens](https://github.com/settings/tokens) e procure um botão "Configure SSO..." ao lado do seu novo token.

### Passo 2: A Invocação Secreta (Os Detalhes da Chamada de API)

Este é o comando mágico que vai resolver tudo. Ele diz à API do GitHub: "Ei, sou eu, e eu quero que a minha afiliação à Epic Games seja pública, por favor".

* **Método:** `PUT`
* **URL:** `https://api.github.com/orgs/EpicGames/public_members/SEU_USERNAME_AQUI`
* **Cabeçalhos (Headers):**
    * `Authorization`: `Bearer SEU_TOKEN_AQUI`
    * `Accept`: `application/vnd.github+json`
    * `X-GitHub-Api-Version`: `2022-11-28`

Lembre-se de substituir `SEU_TOKEN_AQUI` pela chave que você gerou e `SEU_USERNAME_AQUI` pelo seu nome de utilizador do GitHub.

### Passo 3: Onde Lançar o Feitiço (Escolha o Seu Método)

Você pode enviar esta requisição de API a partir de vários locais. Escolha o que for mais confortável para si.

#### Método 1: Usando o Script Fornecido (Para Utilizadores de Terminal)
Se você se sente à vontade com a linha de comando, esta é a forma mais rápida.
1.  Faça o download do script `publicize_epic_membership.sh` deste repositório.
2.  Abra o arquivo e substitua os valores de `TOKEN` e `USERNAME` pelos seus.
3.  Execute o script no seu terminal com o comando: `bash publicize_epic_membership.sh`.

#### Método 2: Usando uma Ferramenta Online (Sem Instalação)
Esta é a melhor opção se não quiser usar um terminal.
1.  Acesse um cliente de API online como o **[https://hoppscotch.io](https://hoppscotch.io)**.
2.  Configure a requisição usando os detalhes do "Passo 2":
    * Mude o método de `GET` para **`PUT`**.
    * Cole o **URL** (com o seu username).
    * Vá para a aba **Cabeçalhos (Headers)** e adicione os 3 cabeçalhos necessários (Authorization, Accept, e X-GitHub-Api-Version) com os seus respetivos valores.
3.  Clique no botão "Enviar" (Send).

#### Método 3: Usando um Cliente de API Desktop (Para Utilizadores Avançados)
Se você já usa ferramentas como **Postman** ou **Insomnia**, já sabe o que fazer. Crie uma nova requisição `PUT` com as informações do "Passo 2" e envie.

### O Grand Finale

Não importa o método escolhido, o resultado esperado é um glorioso **`Status: 204 No Content`**. Isso é código para "Missão Cumprida".

Agora... corra para o seu perfil do GitHub! Lá estará ele, o cobiçado logo da Epic Games, brilhando para todo o mundo ver. O seu capricho foi satisfeito.

---

**AVISO FINAL E MUITO SÉRIO:** A primeira coisa que você deve fazer depois de ver o logo no seu perfil é **apagar o token que criou**. Volte para a [página de tokens](https://github.com/settings/tokens) e apague-o. Segurança em primeiro lugar!

Use este poder com responsabilidade. E não nos responsabilizamos por repositórios criados acidentalmente em nome de Tim Sweeney 🤣.
