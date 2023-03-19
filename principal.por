programa
{
	cadeia nomesFilmes[10], generosFilmes[10], descricoesFilmes[10], faixasEtarias[10]
	inteiro contador, identificador
	
	funcao inicio()
	{
		cadeia nome, senha
		inteiro opcao

		contador = 0
		identificador = 100

		escreva("Bem-vindo ao sistema da Maratona Filmes.\n")

		escreva("\nDigite seu nome: ")
		leia(nome)

		escreva("Digite a senha: ")
		leia(senha)

		enquanto (senha != "admin") {
			escreva("Senha incorreta!\n")
			escreva("Digite a senha: ")
			leia(senha)
		}

		escreva("\nLogin efetuado com sucesso!\n")
		escreva("Olá ", nome, " escolha uma das opções do menu.\n")

		faca {
			escreva("\n--------------------|MENU PRINCIPAL|-------------------")
			escreva("\n1 - Cadastrar filme.")
			escreva("\n2 - Atualizar filme.")
			escreva("\n3 - Listar filmes.")
			escreva("\n4 - Excluir filme.")
			escreva("\n5 - Sair.")
			escreva("\n-------------------------------------------------------")
	
			escreva("\nDigite a opção desejada: ")
			leia(opcao)
	
			escolha (opcao) {
				caso 1:
					cadastrarFilme()
				pare
	
				caso 2:
	
				pare
	
				caso 3:
					listarFilmes()
				pare
	
				caso 4:
	
				pare
	
				caso 5:
	
				pare
	
				caso contrario:
					escreva("\nOpção inválida!")
			}
			
		} enquanto (opcao != 5)
	}

	funcao cadastrarFilme() {
		escreva("\n--------------------|CADASTRAR FILME|-------------------")
		escreva("\nDigite o nome do filme: ")
		leia(nomesFilmes[contador])

		escreva("Digite o gênero do filme: ")
		leia(generosFilmes[contador])

		escreva("Digite a faixa etária do filme: ")
		leia(faixasEtarias[contador])

		escreva("Digite a descrição do filme: ")
		leia(descricoesFilmes[contador])

		escreva("\nFilme cadastrado com sucesso!")
		
		escreva("\n--------------------------------------------------------")
		
		contador++
	}

	funcao listarFilmes() {
		escreva("\n--------------------|LISTAR FILMES|-------------------")

		para (inteiro i = 0; i < contador; i++) {
			escreva("\nNome: ", nomesFilmes[i])
			escreva("\nGênero: ", generosFilmes[i])
			escreva("\nFaixa Etária: ", faixasEtarias[i])
			escreva("\nDescrição: ", descricoesFilmes[i])
			escreva("\n")
		}
		
		escreva("\n--------------------------------------------------------")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 224; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */