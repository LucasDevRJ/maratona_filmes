programa
{
	
	funcao inicio()
	{
		cadeia nome, senha, nomeFilme
		inteiro opcao, contador

		nomeFilme = ""
		contador = 0

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
				cadastrarFilme(nomeFilme, contador)
			pare

			caso 2:

			pare

			caso 3:

			pare

			caso 4:

			pare

			caso 5:

			pare

			caso contrario:
				escreva("\nOpção inválida!")
		}
	}

	funcao cadastrarFilme(cadeia &nomeFilme, inteiro &contador) {
		escreva("\n--------------------|CADASTRAR FILME|-------------------")
		escreva("\nDigite o nome do filme: ")
		leia(nomeFilme)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1234; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */