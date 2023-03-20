programa
{
	cadeia nomesFilmes[10], generosFilmes[10], descricoesFilmes[10]
	inteiro contador, identificador, identificadoresFilmes[10], faixasEtariasFilmes[10], identificadorDesejado
	logico achou
	
	funcao inicio()
	{
		cadeia nome, senha
		inteiro opcao

		contador = 0
		identificador = 100
		achou = falso

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
					atualizarFilme()
				pare
	
				caso 3:
					listarFilmes()
				pare
	
				caso 4:
					excluirFilme()
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
		leia(faixasEtariasFilmes[contador])

		escreva("Digite a descrição do filme: ")
		leia(descricoesFilmes[contador])

		identificadoresFilmes[contador] = identificador

		escreva("\nFilme cadastrado com sucesso!")
		
		escreva("\n--------------------------------------------------------")

		identificador++
		contador++
	}

	funcao listarFilmes() {
		escreva("\n--------------------|LISTAR FILMES|-------------------")

		para (inteiro i = 0; i < contador; i++) { 
			se (identificadoresFilmes[i] >= 100) {
				escreva("\nID: ", identificadoresFilmes[i])
				escreva("\nNome: ", nomesFilmes[i])
				escreva("\nGênero: ", generosFilmes[i])
				escreva("\nFaixa Etária: ", faixasEtariasFilmes[i])
				escreva("\nDescrição: ", descricoesFilmes[i])
				escreva("\n")
				achou = verdadeiro
			} 
		}
		
		se (achou == falso) {
			escreva("\nID inexistente!")
		}
		
		escreva("\n--------------------------------------------------------")
	}

	funcao excluirFilme() {
		escreva("\n--------------------|EXCLUIR FILME|-------------------")

		escreva("\nDigite a ID do filme: ")
		leia(identificadorDesejado)

		para (inteiro i = 0; i < contador; i++) {
			se (identificadorDesejado == identificadoresFilmes[i]) {
				identificadoresFilmes[i] = 0
				nomesFilmes[i] = ""
				generosFilmes[i] = ""
				faixasEtariasFilmes[i] = 0
				descricoesFilmes[i] = ""

				achou = verdadeiro
				escreva("\nFilme excluído com sucesso!")
			}
		}

		se (achou == falso) {
			escreva("\nID inexistente!")
		}
		
		escreva("\n--------------------------------------------------------")
	}

	funcao atualizarFilme() {
		escreva("\n--------------------|ATUALIZAR FILME|-------------------")

		escreva("\nDigite a ID do filme: ")
		leia(identificadorDesejado)

		para (inteiro i = 0; i < contador; i++) {
			se (identificadorDesejado == identificadoresFilmes[i]) {
				escreva("\nDigite o nome do filme: ")
				leia(nomesFilmes[i])
		
				escreva("Digite o gênero do filme: ")
				leia(generosFilmes[i])
		
				escreva("Digite a faixa etária do filme: ")
				leia(faixasEtariasFilmes[i])
		
				escreva("Digite a descrição do filme: ")
				leia(descricoesFilmes[i])
		
				escreva("\nFilme atualizado com sucesso!")

				achou = verdadeiro
			} 
		}

		se (achou == falso) {
			escreva("\nID inexistente!")
		}
		
		escreva("\n--------------------------------------------------------")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3953; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */