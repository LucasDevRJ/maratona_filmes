programa
{
	
	funcao inicio()
	{
		cadeia nome, senha, nomeFilme, generoFilme, descricaoFilme
		inteiro opcao, contador, faixaEtaria

		nomeFilme = ""
		generoFilme = ""
		descricaoFilme = ""
		contador = 0
		faixaEtaria = 0

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
				cadastrarFilme(nomeFilme, generoFilme, faixaEtaria, descricaoFilme)
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

	funcao cadastrarFilme(cadeia &nomeFilme, cadeia &generoFilme, inteiro &faixaEtaria, cadeia &descricaoFilme) {
		escreva("\n--------------------|CADASTRAR FILME|-------------------")
		escreva("\nDigite o nome do filme: ")
		leia(nomeFilme)

		escreva("Digite o gênero do filme: ")
		leia(generoFilme)

		escreva("Digite a faixa etária do filme: ")
		leia(faixaEtaria)

		escreva("Digite a descrição do filme: ")
		leia(descricaoFilme)
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