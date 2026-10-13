programa {
  funcao inicio() {
    
    const inteiro CAIXAS_POR_PALETE = 40
    const real TEMPERATURA_LIMITE = -18.0

        inteiro quantidade_caixas
        inteiro paletes_completos
        inteiro caixas_sobras

        real peso_por_caixa
        real temperatura
        real peso_total

        escreva("Quantidade de caixas produzidas: ")
        leia(quantidade_caixas)

        escreva("Peso de cada caixa (kg): ")
        leia(peso_por_caixa)

        escreva("Temperatura da camara fria (C°): ")
        leia(temperatura)

        peso_total = quantidade_caixas * peso_por_caixa

        paletes_completos = quantidade_caixas / CAIXAS_POR_PALETE
        caixas_sobras = quantidade_caixas % CAIXAS_POR_PALETE

        escreva("\nPeso total produzido: ", peso_total, " kg\n")
        escreva("Paletes completos: ", paletes_completos, "\n")
        escreva("Caixas que sobraram: ", caixas_sobras, "\n")

        se (temperatura <= TEMPERATURA_LIMITE e paletes_completos > 0)
        {
            escreva("Carregamento liberado\n")
        }
        senao
        {
            se (temperatura > TEMPERATURA_LIMITE)
            {
                escreva("Bloqueado: camara acima de -18 °C\n")
            }
            senao
            {
                escreva("Bloqueado: nenhum palete completo\n")
            }
        }
    }
}
