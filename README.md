<h1 align="center">Projeto em Modelo Cascata: "Hello, World!" em Assembly para FreeDOS</h1>



<div align="center">
  <strong>🚀 Descrição do Repositório 📚</strong>
</div>

<div align="center">
  <p>Um repositório incrível com um projeto espetacular! 🎉</p>
  <p>Aqui você encontrará informações sobre o projeto, tecnologias utilizadas, instruções para configurar o ambiente de desenvolvimento e muito mais.</p>
  <p>Explore, colabore e divirta-se! 😄</p>
</div>

<h5 align="center"> I ❤️ Back-End Development!</h5>

---

## Indice

- [Descrição do Projeto](#descrição-do-projeto)
- [Requisitos do Software](#requisitos-do-software)
- [Análise](#análise)
- [Design](#design)
- [Implementação](#implementação)
- [Testes](#testes)
- [Integração](#integração)
- [Manutenção](#manutenção)
- [Código Assembly "Hello, World!"](#código-assembly-hello-world)
- [Apêndice](#apêndice)
- [Licença](#licença)
- [Agradecimentos](#agradecimentos)


## Descrição do Projeto

Este projeto exemplifica o desenvolvimento de um programa simples em Assembly x86 para o sistema operacional FreeDOS, seguindo o modelo de desenvolvimento cascata. O objetivo do software é exibir a mensagem "Hello, World!" na tela. Este README fornece uma visão geral do processo de desenvolvimento, desde a análise e design até a implementação, testes e manutenção do software.

Projeto do 3º semestre do curso de Análise e Desenvolvimento de Sistemas, disciplina "**Métodos Ágeis de Desenvolvimento**" na Uninove, desenvolvido para demonstrar os conceitos de programação em baixo nível e o uso do modelo cascata no ciclo de vida de desenvolvimento de software.

Os passos incluem a preparação do ambiente FreeDOS, a escrita do código Assembly, sua montagem e execução. Utilizando ferramentas gratuitas como o NASM e o ambiente FreeDOS no JS/Linux, o projeto demonstra um exemplo prático de programação em baixo nível.

Para mais detalhes, siga as instruções detalhadas nas seções abaixo para replicar e executar o código "Hello, World!" em seu próprio ambiente FreeDOS.


## Requisitos do Software
**Descrição:** O software deve exibir a mensagem "Hello, World!" na tela.  
**Plataforma alvo:** FreeDOS  
**Linguagem de Programação:** Assembly x86

## Análise
**Objetivo:** Identificar a plataforma alvo e a linguagem de programação, e definir o comportamento esperado do software (exibir a mensagem "Hello, World!").

## Design
**Tarefas:**
- Escrever o código assembly para exibir a mensagem na tela.
- Planejar como o código será organizado e estruturado.

## Implementação
**Atividades:**
- Escrever o código assembly conforme o design.
- Testar o código para garantir que a mensagem seja exibida corretamente.

## Testes
**Procedimentos:**
- Executar o código no FreeDOS no [JS/Linux](https://bellard.org/jslinux/) para verificar se a mensagem é exibida corretamente.
- Realizar testes adicionais para garantir o funcionamento adequado do software.

## Integração
**Etapas:**
- Preparar o software para implantação, se necessário.
- Documentar o processo de instalação ou execução.

## Manutenção
**Ações:**
- Fornecer suporte contínuo ao software, se necessário.
- Corrigir bugs ou adicionar novos recursos conforme necessário.

## Código Assembly "Hello, World!"

Este projeto segue os passos principais do modelo cascata para o desenvolvimento de software. Cada etapa é claramente definida e segue em ordem sequencial, garantindo uma abordagem sistemática para o desenvolvimento do software "Hello, World!" em assembly para o FreeDOS.

### Exemplo I: Código Assembly para Debug em FreeDOS

```c:>debug [ENTER]```


```Arduino
O cursor irá se transformar num traço "-". Entre com os comandos:
```

- A 100 [ENTER]
- MOV AH,09 [ENTER]
- MOV DX,109 [ENTER]
- INT 21 [ENTER]
- INT 20 [ENTER]
- DB "OLA SEU NOME E RA $" [ENTER]
- [ENTER]

```Arduino	
O cursor voltará para o traço "-". Agora digite:
```
- R CX [ENTER]
- 22 [ENTER]
- N OLAMUNDO.COM [ENTER]
- W [ENTER]

```Arduino
O DEBUG irá escrever: "Writing 0022 bytes" e voltar para o cursor "-". Digite para sair do debug:
```
- Q [ENTER]

```Arduino
Agora, novamente no cursor do DOS "C:\>" rode o programa digitando:
```
- OLAMUNDO [ENTER]

```Arduino
- O programa irá exibir a mensagem "OLA SEU NOME E RA" na tela.
```

### Exemplo II: Código Assembly "Hello, World!"

```assembly
section .data
    hello db 'Hello, World!', 0

section .text
    global _start

_start:

    ; Escrever a mensagem na tela
    mov eax, 4            ; syscall para sys_write (imprimir)
    mov ebx, 1            ; arquivo de saída (stdout)
    mov ecx, hello        ; endereço da mensagem
    mov edx, 13           ; tamanho da mensagem
    int 0x80              ; chamar kernel

    ; Sair do programa
    mov eax, 1            ; syscall para sys_exit
    xor ebx, ebx          ; código de saída 0 (sem erro)
    int 0x80              ; chamar kernel
```

## Apêndice
Para executar o projeto no FreeDOS e rodar o código assembly "Hello, World!", você pode seguir os passos abaixo:

**1. Acesso ao FreeDOS no site JS/Linux**

Acesse o site https://bellard.org/jslinux/.
Aguarde até que o ambiente do FreeDOS seja carregado.

---
**2. Preparação do ambiente**

Na janela do FreeDOS, clique em "**Start**".
Aguarde até que o sistema operacional seja carregado.

---

**3. Editor de Texto**
Na linha de comando do FreeDOS, digite edit e pressione Enter para abrir o editor de texto.

---

**4. Copie e Cole o Código Assembly**

Copie o código assembly "**Hello, World!**" fornecido.
Cole o código no editor de texto do FreeDOS.

---

**5. Salvar o Arquivo**

No editor de texto, pressione **Alt + F** e selecione a opção "Save".
Escolha um nome para o arquivo, por exemplo, "**hello.asm**", e pressione Enter para salvar.

---

**6. Montagem e Compilação do Código**

Volte para a linha de comando do FreeDOS.
Use um montador de assembly, como o **NASM**, para montar o código assembly em um arquivo executável. Por exemplo:

```nasm -f elf hello.asm -o hello.com```	

---

**7. Execução do Programa**

Digite o nome do arquivo executável que você criou e pressione Enter para executá-lo. Por exemplo:

```hello.com```

**8. Verificação do Resultado**

Você deverá ver a mensagem "**Hello, World!**" exibida na tela do FreeDOS.
Com esses passos, você poderá executar o projeto no FreeDOS e rodar o código assembly "**Hello, World!**". Certifique-se de seguir cada passo cuidadosamente para garantir que o código seja montado e executado corretamente.

---
Aproveite o projeto e fique à vontade para personalizar este README de acordo com as necessidades do seu repositório. Divirta-se codificando! 🎉😄

## Licença
Este projeto está licenciado sob a Licença consulte o arquivo [MIT](https://opensource.org/license/MIT).

## Agradecimentos

- [Uninove](https://www.uninove.br/)

- Prof. Dr. Giuliano Araujo Bertoti
- Professor Universitário
Coordenador do Curso de Análise e Desenvolvimento de Sistemas na Uninove
- 

